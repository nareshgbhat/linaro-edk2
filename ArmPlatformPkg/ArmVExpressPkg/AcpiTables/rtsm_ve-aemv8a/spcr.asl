/*
 * Intel ACPI Component Architecture
 * iASL Compiler/Disassembler version 20140424-64 [Jun 25 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Template for [SPCR] ACPI Table
 * Format: [ByteLength]  FieldName : HexFieldValue
 */

[0004]                          Signature : "SPCR"    [Serial Port Console Redirection table]
[0004]                       Table Length : 00000050
[0001]                           Revision : 01
[0001]                           Checksum : E3
[0006]                             Oem ID : "LINARO"
[0008]                       Oem Table ID : "RTSMVEV8"
[0004]                       Oem Revision : 00000000
[0004]                    Asl Compiler ID : "INTL"
[0004]              Asl Compiler Revision : 20100528

[0001]                     Interface Type : 00
[0003]                           Reserved : 000000

[0012]               Serial Port Register : [Generic Address Structure]
[0001]                           Space ID : 00 [SystemMemory]
[0001]                          Bit Width : 08
[0001]                         Bit Offset : 00
[0001]               Encoded Access Width : 01 [Undefined/Legacy]
[0008]                            Address : 000000001C090000

[0001]                     Interrupt Type : 10 [Bit(3) ARMH GIC interrupt]
[0001]                PCAT-compatible IRQ : 00
[0004]                          Interrupt : 00000025 [0x20 base interrupt line of spi + 0x05 serial0 interrupt]
[0001]                          Baud Rate : 07
[0001]                             Parity : 00
[0001]                          Stop Bits : 01
[0001]                       Flow Control : 00
[0001]                      Terminal Type : 00
[0001]                           Reserved : 00
[0002]                      PCI Device ID : FFFF
[0002]                      PCI Vendor ID : FFFF
[0001]                            PCI Bus : 00
[0001]                         PCI Device : 00
[0001]                       PCI Function : 00
[0004]                          PCI Flags : 00000000
[0001]                        PCI Segment : 00
[0004]                           Reserved : 00000000
