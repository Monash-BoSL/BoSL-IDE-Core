13
build/board_driver_i2c.o 0
build/board_driver_led.o 4
187 581e9ef7cdf64774 PREVAILING_DEF_IRONLY LED_pulse
199 581e9ef7cdf64774 PREVAILING_DEF_IRONLY ledKeepValue
211 581e9ef7cdf64774 PREVAILING_DEF_IRONLY ledDirection
214 581e9ef7cdf64774 PREVAILING_DEF_IRONLY ledTargetValue
build/board_driver_pmic.o 0
build/board_driver_jtag.o 0
build/board_driver_serial.o 7
1308 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_basic_init
1312 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_disable
1317 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_write_byte
1321 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_read_byte
1336 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_drv_error_flag
1327 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_write_buffer_polled
1329 14de34b6972dacf0 PREVAILING_DEF_IRONLY uart_read_buffer_polled
build/board_driver_usb.o 14
1407 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_IsConfigured
1501 8b711f9fc7e60385 PREVAILING_DEF_IRONLY usb_endpoint_table
1496 8b711f9fc7e60385 PREVAILING_DEF_IRONLY udd_ep_out_cache_buffer
1505 8b711f9fc7e60385 PREVAILING_DEF_IRONLY udd_ep_in_cache_buffer
1418 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Open
1421 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Init
1428 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Write
1434 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Read
1436 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Read_blocking
1441 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_SendStall
1445 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_SendZlp
1450 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_SetAddress
1452 8b711f9fc7e60385 PREVAILING_DEF_IRONLY USB_Configure
1456 8b711f9fc7e60385 RESOLVED_IR sam_ba_usb_CDC_Enumerate
build/board_init.o 2
310 5c45470c24cc6a5a PREVAILING_DEF_IRONLY board_init
319 5c45470c24cc6a5a PREVAILING_DEF_IRONLY g_interrupt_enabled
build/board_startup.o 14
187 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY NMI_Handler
189 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY HardFault_Handler
191 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY SVC_Handler
193 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY PendSV_Handler
195 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY_EXP Reset_Handler
283 ca8e20fc54b91c5d PREVAILING_DEF_IRONLY exception_table
212 ca8e20fc54b91c5d RESOLVED_EXEC __data_start__
214 ca8e20fc54b91c5d RESOLVED_EXEC __data_end__
216 ca8e20fc54b91c5d RESOLVED_EXEC __etext
218 ca8e20fc54b91c5d RESOLVED_EXEC __bss_start__
220 ca8e20fc54b91c5d RESOLVED_EXEC __bss_end__
285 ca8e20fc54b91c5d UNDEF __StackTop
197 ca8e20fc54b91c5d RESOLVED_IR SysTick_Handler
200 ca8e20fc54b91c5d RESOLVED_IR main
build/main.o 12
1433 9b2b0a54ac088827 PREVAILING_DEF_IRONLY pulSketch_Start_Address
319 9b2b0a54ac088827 PREVAILING_DEF main
321 9b2b0a54ac088827 PREVAILING_DEF_IRONLY SysTick_Handler
1429 9b2b0a54ac088827 UNDEF __sketch_vectors_ptr
323 9b2b0a54ac088827 RESOLVED_IR sam_ba_monitor_run
327 9b2b0a54ac088827 RESOLVED_IR sam_ba_monitor_init
329 9b2b0a54ac088827 RESOLVED_IR serial_sharp_received
1418 9b2b0a54ac088827 RESOLVED_IR usb_init
1420 9b2b0a54ac088827 RESOLVED_IR serial_open
1422 9b2b0a54ac088827 RESOLVED_IR board_init
1424 9b2b0a54ac088827 RESOLVED_IR sam_ba_monitor_sys_tick
1427 9b2b0a54ac088827 RESOLVED_IR LED_pulse
build/sam_ba_usb.o 13
1358 a404f5801866c7fa PREVAILING_DEF_IRONLY usb_init
1418 a404f5801866c7fa PREVAILING_DEF_IRONLY sam_ba_cdc
1364 a404f5801866c7fa PREVAILING_DEF_IRONLY USB_SendString
1368 a404f5801866c7fa PREVAILING_DEF_IRONLY sam_ba_usb_CDC_Enumerate
1443 a404f5801866c7fa RESOLVED_IR udd_ep_out_cache_buffer
1420 a404f5801866c7fa RESOLVED_IR line_coding
1373 a404f5801866c7fa RESOLVED_IR USB_Open
1376 a404f5801866c7fa RESOLVED_IR USB_Init
1383 a404f5801866c7fa RESOLVED_IR USB_Write
1405 a404f5801866c7fa RESOLVED_IR USB_SendStall
1409 a404f5801866c7fa RESOLVED_IR USB_SendZlp
1411 a404f5801866c7fa RESOLVED_IR USB_Configure
1416 a404f5801866c7fa RESOLVED_IR USB_SetAddress
build/sam_ba_cdc.o 11
1304 b714476c772847ca PREVAILING_DEF_IRONLY cdc_putc
1307 b714476c772847ca PREVAILING_DEF_IRONLY cdc_getc
1315 b714476c772847ca PREVAILING_DEF_IRONLY cdc_is_rx_ready
1320 b714476c772847ca PREVAILING_DEF_IRONLY cdc_write_buf
1325 b714476c772847ca PREVAILING_DEF_IRONLY cdc_read_buf
1327 b714476c772847ca PREVAILING_DEF_IRONLY cdc_read_buf_xmd
1373 b714476c772847ca PREVAILING_DEF_IRONLY line_coding
1357 b714476c772847ca RESOLVED_IR sam_ba_cdc
1339 b714476c772847ca RESOLVED_IR USB_Read
1348 b714476c772847ca RESOLVED_IR USB_Write
1355 b714476c772847ca RESOLVED_IR USB_IsConfigured
build/sam_ba_monitor.o 43
398 20f87501229617f3 PREVAILING_DEF_IRONLY erased_from
400 20f87501229617f3 PREVAILING_DEF_IRONLY PAGE_SIZE
402 20f87501229617f3 PREVAILING_DEF_IRONLY MAX_FLASH
414 20f87501229617f3 PREVAILING_DEF_IRONLY txLEDPulse
442 20f87501229617f3 PREVAILING_DEF_IRONLY ptr_monitor_if
444 20f87501229617f3 PREVAILING_DEF_IRONLY rxLEDPulse
447 20f87501229617f3 PREVAILING_DEF_IRONLY sp
308 20f87501229617f3 PREVAILING_DEF_IRONLY sam_ba_monitor_init
450 20f87501229617f3 PREVAILING_DEF_IRONLY uart_if
454 20f87501229617f3 PREVAILING_DEF_IRONLY b_sam_ba_interface_usart
456 20f87501229617f3 PREVAILING_DEF_IRONLY usbcdc_if
313 20f87501229617f3 PREVAILING_DEF_IRONLY sam_ba_putdata_term
458 20f87501229617f3 PREVAILING_DEF_IRONLY b_terminal_mode
315 20f87501229617f3 PREVAILING_DEF_IRONLY call_applet
460 20f87501229617f3 PREVAILING_DEF_IRONLY b_security_enabled
395 20f87501229617f3 PREVAILING_DEF_IRONLY data
462 20f87501229617f3 PREVAILING_DEF_IRONLY length
464 20f87501229617f3 PREVAILING_DEF_IRONLY ptr
466 20f87501229617f3 PREVAILING_DEF_IRONLY i
468 20f87501229617f3 PREVAILING_DEF_IRONLY command
393 20f87501229617f3 PREVAILING_DEF_IRONLY current_number
470 20f87501229617f3 PREVAILING_DEF_IRONLY u32tmp
472 20f87501229617f3 PREVAILING_DEF_IRONLY ptr_data
474 20f87501229617f3 PREVAILING_DEF_IRONLY j
391 20f87501229617f3 PREVAILING_DEF_IRONLY RomBOOT_Version
388 20f87501229617f3 PREVAILING_DEF_IRONLY RomBOOT_ExtendedCapabilities
320 20f87501229617f3 PREVAILING_DEF_IRONLY sam_ba_monitor_sys_tick
322 20f87501229617f3 PREVAILING_DEF_IRONLY sam_ba_monitor_run
500 20f87501229617f3 PREVAILING_DEF_IRONLY PAGES
326 20f87501229617f3 RESOLVED_IR cdc_putc
329 20f87501229617f3 RESOLVED_IR cdc_getc
337 20f87501229617f3 RESOLVED_IR cdc_is_rx_ready
339 20f87501229617f3 RESOLVED_IR cdc_write_buf
341 20f87501229617f3 RESOLVED_IR cdc_read_buf
343 20f87501229617f3 RESOLVED_IR cdc_read_buf_xmd
345 20f87501229617f3 RESOLVED_IR serial_putc
348 20f87501229617f3 RESOLVED_IR serial_getc
351 20f87501229617f3 RESOLVED_IR serial_is_rx_ready
353 20f87501229617f3 RESOLVED_IR serial_putdata
355 20f87501229617f3 RESOLVED_IR serial_getdata
357 20f87501229617f3 RESOLVED_IR serial_putdata_xmd
359 20f87501229617f3 RESOLVED_IR serial_getdata_xmd
364 20f87501229617f3 RESOLVED_IR serial_add_crc
build/sam_ba_serial.o 26
1311 96b30dc888684bde PREVAILING_DEF_IRONLY serial_open
1395 96b30dc888684bde PREVAILING_DEF_IRONLY b_sharp_received
1397 96b30dc888684bde PREVAILING_DEF_IRONLY idx_rx_read
1399 96b30dc888684bde PREVAILING_DEF_IRONLY idx_rx_write
1401 96b30dc888684bde PREVAILING_DEF_IRONLY idx_tx_read
1403 96b30dc888684bde PREVAILING_DEF_IRONLY idx_tx_write
1405 96b30dc888684bde PREVAILING_DEF_IRONLY error_timeout
1313 96b30dc888684bde PREVAILING_DEF_IRONLY serial_close
1317 96b30dc888684bde PREVAILING_DEF_IRONLY serial_putc
1325 96b30dc888684bde PREVAILING_DEF_IRONLY serial_is_rx_ready
1328 96b30dc888684bde PREVAILING_DEF_IRONLY serial_getc
1333 96b30dc888684bde PREVAILING_DEF_IRONLY serial_sharp_received
1335 96b30dc888684bde PREVAILING_DEF_IRONLY serial_readc
1413 96b30dc888684bde PREVAILING_DEF_IRONLY buffer_rx_usart
1340 96b30dc888684bde PREVAILING_DEF_IRONLY serial_putdata
1345 96b30dc888684bde PREVAILING_DEF_IRONLY serial_getdata
1350 96b30dc888684bde PREVAILING_DEF_IRONLY serial_add_crc
1424 96b30dc888684bde PREVAILING_DEF_IRONLY size_of_data
1426 96b30dc888684bde PREVAILING_DEF_IRONLY mode_of_transfer
1357 96b30dc888684bde PREVAILING_DEF_IRONLY serial_putdata_xmd
1373 96b30dc888684bde PREVAILING_DEF_IRONLY serial_getdata_xmd
1428 96b30dc888684bde PREVAILING_DEF_IRONLY buffer_tx_usart
1379 96b30dc888684bde RESOLVED_IR uart_basic_init
1383 96b30dc888684bde RESOLVED_IR uart_disable
1388 96b30dc888684bde RESOLVED_IR uart_write_byte
1392 96b30dc888684bde RESOLVED_IR uart_read_byte