import shutil
import os

###Other BoSL

source_folder = 'BoSLBoards_AVR_A/avr'
destination_folder = os.path.join(os.getenv('LOCALAPPDATA'), 'Arduino15/packages/BoSL Boards AVR_A dev/hardware/avr/0.0.0')

print(f"Deleting existing folder at: {destination_folder}")
shutil.rmtree(destination_folder, ignore_errors=True)  # Delete existing folder at destination

print(f"Moving {source_folder} to {destination_folder}")
shutil.copytree(source_folder, destination_folder)  # Move source folder to destination

###BoSL v0.5

source_folder = 'BoSLBoards_AVR_B/avr'
destination_folder = os.path.join(os.getenv('LOCALAPPDATA'), 'Arduino15/packages/BoSL Boards AVR_B dev/hardware/avr/0.0.0')

print(f"Deleting existing folder at: {destination_folder}")
shutil.rmtree(destination_folder, ignore_errors=True)  # Delete existing folder at destination

print(f"Moving {source_folder} to {destination_folder}")
shutil.copytree(source_folder, destination_folder)  # Move source folder to destination

