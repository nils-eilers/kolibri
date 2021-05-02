    Syntax
    ======
    Everything is hexa, $ is the sign. Eg. #$CF is an immediate hexa 8-bit value. The 2K Program memory (ROM) is separate from the small RAM (128 bytes). The RAM is also the place for 8 general purpose registers, R0-R7. @R0 and @R1 can be used to indirectly address the other RAM locations. There is an Accumulator (A). @A addresses locations in program ROM. P1 and P2 are the two 8-bit I/O ports. The two test input pins (T0 and T1) are directly tested by the conditional branch instructions, eg. JNT0 $0310 jumps when T0=0.

    
    This firmware relies on the following
    =====================================
    
        +---------------+
        |            P27| -> DATA 
        |   8042     P26| -> _CLK (inverted)
        |   ====        |   
        |            P17| <- KEYBOARD SWITCH (0=INHIBITED)
        |               |   
        |             T0| <- CLK
        |             T1| <- DATA
    
        (NB: P26 connects to an INVERTER and then drives the keyboard CLOCK line!)

        
    STATUS bits
    ===========
    STATUS is a physical register. Host reads it on 0x64:
        
                  sw-bits           hw-bits
             +----------------  ----------------+ 
         <-- |PER|RTO|TTO|INH|  |A0 |   |IBF|OBF| 
             +----------------  ----------------+ 
    
             
    Command Byte (CMD) bits in this 8042 firmware
    =============================================
        CMD is a byte in the 8042's RAM. Host can read it by writing 0x20 (or 0) to 0x64, then reading 0x60: 
    
            +--------------------------------+ 
        <-- | - |XLAT|XT |_EN|OVR| F0|IBF|OBF|            
            +--------------------------------+ 

   





RAM Memory Map
==============
The 8042 has 128 bytes of RAM. The RAM also stores 2 x 8 General Registers and the Program Stack. The rest is used by the firmware for variables (eg. the COMMAND BYTE @20, timer reload values, flags) and for different *Error Counters*: they count an event from zero to 255, but not more, and can be read by the AC Command. 
Theoretically.. the Host could write these parameters and affect the operation of the 8042! Eg. to change a timer reload value, clear an Error Counter, etc.. just thinking.


@00 --+     R0-R7
@01   |     8 BANK0 registers
@02   |     Direct RAM access:
@03   |       R0-R7 implicite in instruction byte
@04   |     Indirect RAM access:
@05   |       Indexed through @R0 or @R1
@06   |
@07 --+
@08 --+
@09   |
@0A   |
@0B   |
@0C   |
@0D   |     8 words (2 x 8 bytes)
@0E   |
@0F   |     PROGRAM STACK
@10   |
@11   |
@12   |
@13   |
@14   |
@15   |
@16   |
@17 --+
@18 --+
@19   |
@1A   |     R0'-R7'
@1B   |     8 BANK1 registers
@1C   |
@1D   |
@1E   |
@2F --+

@20 ---  COMMAND BYTE, the *mighty*
@21 ---  This is how many times we resend (FE) after parity error (init to 1)
@22 ---  (=0x06) Used in 380. checked for zero after succesful sending byte to kbd. If zero, jump back into main loop..
@23 ---  ERROR CNT: # of parity errors detected since reset
@24 ---  ERROR CNT: too short signal fall on CLK detected (noise?)
@25 ---  (=0x01) ?
@26 ---  TIMER RELOAD, first pulse, when Send BYTE to KBD (init to 0x00)
@27 ---  TIMER RELOAD, bit pulses, when Send BYTE to KBD (init to 0xFB)
@28 ---  Timer reload (=0xE0): after kbd pulls down CLK, this is how much we wait to set it high again.
@29 ---  (=0x06) ?
@2A ---  loop counter for pulling CLK low and hold it stable for a while (how long? 60us? 250us?)
@2B ---  base for RAM write command = 0x20
@2C ---  loop counter for XT-keyboard before set to IDLE
@2D ---  make/brake code (0x00 or 0x80) for scan code set-2
@2E ---  flag, Host has enabled a previously disabled kbd by clearing _EN in Command Byte
@2F ---  ERROR CNT: IBF interrupt occured (not supposed to, we poll IBF)
@30 ---  We copy P1 here for CMD AC (Diagnostic Dump)
@31 ---  We copy P2 here for CMD AC (Diagnostic Dump)
@32 ---  bit0: T0, bit1:T1 (KB CLK and DATA from Test pins) for CMD AC (Diagnostic Dump)
@33 ---  PSW (Program Status Word) of the 8042, for CMD AC (Diagnostic Dump)

@34-@7F   unused?

