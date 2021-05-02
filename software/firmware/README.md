GNU make target     | description
--------------------|:-------------
`make`              | assembles source files to binaries
`make run`          | starts emulator with assembled binary
`make sim`          | uploads firmware to EEPROM emulator
`make asm2char`     | creates character set binary file from assembly source
`make char2asm`     | creates assembly source file from binary character set file. Use this after editing the character set with a font editor, such as for example CBMXFER
`make clean`        | deletes all generated files

