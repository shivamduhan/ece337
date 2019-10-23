# This file specifies how the pads are placed
# The name of each pad here has to match the
# name in the verilog code
# The target padframe has 4 corners cells and 40 side pads
# Each side should have at least 1 vdd/gnd pair
# Use filler cells (PADNC) to fill up each side to 10 pads each
# Each pad instance needs it's orientation specified

Version: 2

Orient: R0
Pad: U5 N
Orient: R0
Pad: P0 N PADVDD
Orient: R0
Pad: G0 N PADGND
Orient: R0
Pad: U6 N

Orient: R90
Pad: U1 W
Orient: R90
Pad: P1 W PADVDD
Orient: R90
Pad: G1 W PADGND
Orient: R90
Pad: U2 W


Orient: R180
Pad: U8 S
Orient: R180
Pad: U9 S
Orient: R180
Pad: U10 S
Orient: R180
Pad: U11 S
Orient: R180
Pad: P2 S PADVDD
Orient: R180
Pad: G2 S PADGND
Orient: R180
Pad: U12 S
Orient: R180
Pad: U13 S
Orient: R180
Pad: U14 S
Orient: R180
Pad: U15 S

Orient: R270
Pad: U3 E
Orient: R270
Pad: U4 E
Orient: R270
Pad: P3 E PADVDD
Orient: R270
Pad: G3 E PADGND
Orient: R270
Pad: U7 E
Orient: R270
Pad: U16 E

# ADD 10 PADS TO THE NORTH
Orient: R0
Pad: Fuck0 N PADNC
Orient: R0
Pad: Fuck1 N PADNC
Orient: R0
Pad: Fuck2 N PADNC
Orient: R0
Pad: Fuck3 N PADNC
Orient: R0
Pad: Fuck4 N PADNC
Orient: R0
Pad: Fuck5 N PADNC
Orient: R0
Pad: Fuck6 N PADNC
Orient: R0
Pad: Fuck7 N PADNC
Orient: R0
Pad: Fuck8 N PADNC
Orient: R0
Pad: Fuck9 N PADNC

# ADD 10 PADS TO THE WEST
Orient: R90
Pad: Fuck10 W PADNC
Orient: R90
Pad: Fuck11 W PADNC
Orient: R90
Pad: Fuck12 W PADNC
Orient: R90
Pad: Fuck13 W PADNC
Orient: R90
Pad: Fuck14 W PADNC
Orient: R90
Pad: Fuck15 W PADNC
Orient: R90
Pad: Fuck16 W PADNC
Orient: R90
Pad: Fuck17 W PADNC
Orient: R90
Pad: Fuck18 W PADNC
Orient: R90
Pad: Fuck19 W PADNC

#ADD 10 PADS TO THE SOUTH
Orient: R180
Pad: Fuck20 S PADNC
Orient: R180
Pad: Fuck21 S PADNC
Orient: R180
Pad: Fuck22 S PADNC
Orient: R180
Pad: Fuck23 S PADNC
Orient: R180
Pad: Fuck24 S PADNC
Orient: R180
Pad: Fuck25 S PADNC
Orient: R180
Pad: Fuck26 S PADNC
Orient: R180
Pad: Fuck27 S PADNC
Orient: R180
Pad: Fuck28 S PADNC
Orient: R180
Pad: Fuck29 S PADNC

# ADD 10 PADS TO THE EAST

Orient: R270 PADNC
Pad: Fuck30 E
Orient: R270 PADNC
Pad: Fuck31 E
Orient: R270 PADNC
Pad: Fuck32 E
Orient: R270 PADNC
Pad: Fuck33 E
Orient: R270 PADNC
Pad: Fuck34 E
Orient: R270 PADNC
Pad: Fuck35 E
Orient: R270 PADNC
Pad: Fuck36 E
Orient: R270 PADNC
Pad: Fuck37 E
Orient: R270 PADNC
Pad: Fuck38 E
Orient: R270 PADNC
Pad: Fuck39 E

# ADD ALL CORNER PADS
Orient: R0
Pad: Fuck40 NW PADNC
Orient: R90
Pad: Fuck41 SW PADNC
Orient: R180
Pad: Fuck42 SE PADNC
Orient: R270
Pad: Fuck43 NE PADNC