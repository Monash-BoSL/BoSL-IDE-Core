import shutil
import zipfile
import hashlib
import os
import sys
from enum import Enum

class PackageType(Enum):
    AVR_A = "AVR_A",
    AVR_B = "AVR_B",
    SAMD  = "SAMD",
    
nples = {
            PackageType.AVR_A: {"name": "BoSLBoards_AVR_A", "path": "/avr", "template": "templates/BoSL_Boards_AVR_A.template"},
            PackageType.AVR_B: {"name": "BoSLBoards_AVR_B", "path": "/avr", "template": "templates/BoSL_Boards_AVR_B.template"},
            # PackageType.SAMD: {"name": "BoSL_Boards_AVR_A", "path": "/avr", "template": "templates/BoSL_Boards/AVR_A.template"},
        }

def zip_and_hash_folder(folder_path,platform,version):
    # Create a zip file
    zip_filename = f"{platform}-{version}.zip"
    with zipfile.ZipFile(zip_filename, 'w') as zip_file:
        for foldername, subfolders, filenames in os.walk(folder_path):
            for filename in filenames:
                file_path = os.path.join(foldername, filename)
                arcname = os.path.relpath(file_path, folder_path)
                zip_file.write(file_path, arcname)

    # Calculate SHA256 hash
    sha256_hash = hashlib.sha256()
    with open(zip_filename, 'rb') as file:
        # Read and update hash string value in blocks of 4K
        for byte_block in iter(lambda: file.read(4096), b""):
            sha256_hash.update(byte_block)

    # Get file size
    file_size = os.path.getsize(zip_filename)

    return sha256_hash.hexdigest(), file_size

if len(sys.argv) != 3:
    print("Usage: python script.py <version_number> <package_type>")
    sys.exit(1)

version_number = sys.argv[1]
package_type_str = sys.argv[2]

package_type = PackageType[package_type_str]



# Example usage
folder_path = nples[package_type]["name"]+nples[package_type]["path"]
platform_name = nples[package_type]["name"]

platform_txt = "./tmp/"+nples[package_type]["name"]+"/platform.txt"

#Copy and update platform.txt
shutil.rmtree("./tmp/", ignore_errors=True)
shutil.copytree(folder_path, "./tmp/"+nples[package_type]["name"], )

#Update platform.txt
with open(platform_txt, 'r') as f:
    lines = f.readlines()

version_updated = False
with open(platform_txt, 'w') as f:
    for line in lines:
        newline = line.replace("version=0.0.0", f"version={version_number}")
        if(newline != line):
            version_updated = True
        f.write(newline)
if(not version_updated):
    print("Warning: version not updated in platform.txt")

hash_value, size_bytes = zip_and_hash_folder("./tmp/", platform_name, version_number)
print(f"SHA256 Hash: {hash_value}")
print(f"File Size (bytes): {size_bytes}")

#make template we use %( and )% to get around python f string escaping
with open(nples[package_type]["template"], 'r') as f:
    template = f.read()
    template = template.replace('{', '%[')
    template = template.replace('}', ']%')
    template = template.replace('%(', '{')
    template = template.replace(')%', '}')
    
    template = template.format(version = version_number, sha256 = hash_value, size = size_bytes)
    
    template = template.replace('%[', '{')
    template = template.replace(']%', '}')
    
with open(f"{platform_name}-{version_number}.json.fragment", 'w') as f:
    f.write(template)
