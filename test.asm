# test addu, subu, addiu

addiu $1, $0, 0x1      # $1 = 0 + 1 = 0x1
addiu $2, $0, 0xc      # $2 = 0 + 12 = 0xc
addiu $3, $0, 0xffff   # $3 = 0 + 0xffff = 0xffffffff (pga sign extend)
addu  $4, $1, $2       # $4 = 1 + 12 = 0xd
subu  $5, $2, $1       # $5 = 12 - 1 = 0xb
subu  $6, $1, $2       # $6 = 00000001 - 12 = 0xfffffff5
and   $7, $4, $5       # $7 = 1011 and 1101 = 0x9
and   $8, $0, $5       # $8 = 0000 and 1011 = 0x0
or    $9, $4, $5       # $9 = 1101 or 1011 = 0xf
or    $10, $5, $0      # $10 = 1101 or 0000 =0xb
slt   $11, $2, $5      # $11 = 12 < 11 = 0
slt   $12, $5, $2      # $12 = 11 < 12 = 1
andi  $13, $2, 0x6     # $13 = 1100 and 0110 = 0x4
andi  $14, $0, 0xffff  # $14 = 0 and 0xffff = 0x0

