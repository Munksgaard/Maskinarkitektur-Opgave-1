# test addu, subu, addiu

addiu $1, $0, 0x1      # $1 = 0x1
addiu $2, $0, 0xc      # $2 = 0xc
addiu $3, $0, 0xffff   # $3 = 0xffffffff
addu  $4, $1, $2       # $4 = 0xd
subu  $5, $2, $1       # $5 = 0xb
subu  $6, $1, $2       # $6 = 0xfffffff5
