Assembly
--------

Assemble these files from one directory level above where the system
include files reside, like so:

        bs9 test-demo/hello.as9

This is exactly what the Makefile does, so it's actually sufficient to just
run make:

        make

Execution
---------

To execute the generated S19 files, start the M/L Monitor and execute the
`L` command (load). Copy and paste the S-record file into your terminal
program then which will transmit the file and start execution at the entry
address provided by the S9 record.

To end a program, just return from a subroutine (`RTS`) which will return
to the M/L monitor.


