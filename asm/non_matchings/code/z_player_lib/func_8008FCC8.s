.late_rodata
glabel D_8013E90C
    .float 0.64

glabel D_8013E910
    .float 0.64

glabel D_8013E914
    .float 9.58738E-5

glabel D_8013E918
    .float 0.10546118

glabel D_8013E91C
    .float 9.58738E-5

glabel D_8013E920
    .float 9.58738E-5

glabel D_8013E924
    .float 9.58738E-5

glabel D_8013E928
    .float 9.58738E-5

.text
glabel func_8008FCC8
/* B06E68 8008FCC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B06E6C 8008FCCC AFB10028 */  sw    $s1, 0x28($sp)
/* B06E70 8008FCD0 24010001 */  li    $at, 1
/* B06E74 8008FCD4 00E08825 */  move  $s1, $a3
/* B06E78 8008FCD8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B06E7C 8008FCDC 14A10057 */  bne   $a1, $at, .L8008FE3C
/* B06E80 8008FCE0 AFB00024 */   sw    $s0, 0x24($sp)
/* B06E84 8008FCE4 8FB00044 */  lw    $s0, 0x44($sp)
/* B06E88 8008FCE8 3C018016 */  lui   $at, %hi(D_80160014) # $at, 0x8016
/* B06E8C 8008FCEC 3C198016 */  lui   $t9, %hi(gSaveContext+4) # $t9, 0x8016
/* B06E90 8008FCF0 920E015C */  lbu   $t6, 0x15c($s0)
/* B06E94 8008FCF4 8F39E664 */  lw    $t9, %lo(gSaveContext+4)($t9)
/* B06E98 8008FCF8 261808FC */  addiu $t8, $s0, 0x8fc
/* B06E9C 8008FCFC AC2E0014 */  sw    $t6, %lo(D_80160014)($at)
/* B06EA0 8008FD00 920F015D */  lbu   $t7, 0x15d($s0)
/* B06EA4 8008FD04 3C018016 */  lui   $at, %hi(D_80160018) # $at, 0x8016
/* B06EA8 8008FD08 AC2F0018 */  sw    $t7, %lo(D_80160018)($at)
/* B06EAC 8008FD0C 3C018016 */  lui   $at, %hi(D_80160000)
/* B06EB0 8008FD10 1320001B */  beqz  $t9, .L8008FD80
/* B06EB4 8008FD14 AC380000 */   sw    $t8, ($at)
/* B06EB8 8008FD18 920201E9 */  lbu   $v0, 0x1e9($s0)
/* B06EBC 8008FD1C 3C018014 */  lui   $at, %hi(D_8013E90C)
/* B06EC0 8008FD20 30430004 */  andi  $v1, $v0, 4
/* B06EC4 8008FD24 10600003 */  beqz  $v1, .L8008FD34
/* B06EC8 8008FD28 30480001 */   andi  $t0, $v0, 1
/* B06ECC 8008FD2C 1100000B */  beqz  $t0, .L8008FD5C
/* B06ED0 8008FD30 00000000 */   nop
.L8008FD34:
/* B06ED4 8008FD34 C420E90C */  lwc1  $f0, %lo(D_8013E90C)($at)
/* B06ED8 8008FD38 C6240000 */  lwc1  $f4, ($s1)
/* B06EDC 8008FD3C C6280008 */  lwc1  $f8, 8($s1)
/* B06EE0 8008FD40 46002182 */  mul.s $f6, $f4, $f0
/* B06EE4 8008FD44 00000000 */  nop
/* B06EE8 8008FD48 46004282 */  mul.s $f10, $f8, $f0
/* B06EEC 8008FD4C E6260000 */  swc1  $f6, ($s1)
/* B06EF0 8008FD50 E62A0008 */  swc1  $f10, 8($s1)
/* B06EF4 8008FD54 920201E9 */  lbu   $v0, 0x1e9($s0)
/* B06EF8 8008FD58 30430004 */  andi  $v1, $v0, 4
.L8008FD5C:
/* B06EFC 8008FD5C 3C018014 */  lui   $at, %hi(D_8013E910)
/* B06F00 8008FD60 10600004 */  beqz  $v1, .L8008FD74
/* B06F04 8008FD64 C420E910 */   lwc1  $f0, %lo(D_8013E910)($at)
/* B06F08 8008FD68 30490002 */  andi  $t1, $v0, 2
/* B06F0C 8008FD6C 51200005 */  beql  $t1, $zero, .L8008FD84
/* B06F10 8008FD70 C6240004 */   lwc1  $f4, 4($s1)
.L8008FD74:
/* B06F14 8008FD74 C6300004 */  lwc1  $f16, 4($s1)
/* B06F18 8008FD78 46008482 */  mul.s $f18, $f16, $f0
/* B06F1C 8008FD7C E6320004 */  swc1  $f18, 4($s1)
.L8008FD80:
/* B06F20 8008FD80 C6240004 */  lwc1  $f4, 4($s1)
.L8008FD84:
/* B06F24 8008FD84 C60606C4 */  lwc1  $f6, 0x6c4($s0)
/* B06F28 8008FD88 46062201 */  sub.s $f8, $f4, $f6
/* B06F2C 8008FD8C E6280004 */  swc1  $f8, 4($s1)
/* B06F30 8008FD90 860406C2 */  lh    $a0, 0x6c2($s0)
/* B06F34 8008FD94 5080009A */  beql  $a0, $zero, .L80090000
/* B06F38 8008FD98 00001025 */   move  $v0, $zero
/* B06F3C 8008FD9C 0C01DE0D */  jal   Math_Coss
/* B06F40 8008FDA0 00000000 */   nop
/* B06F44 8008FDA4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B06F48 8008FDA8 44815000 */  mtc1  $at, $f10
/* B06F4C 8008FDAC 3C014348 */  li    $at, 0x43480000 # 0.000000
/* B06F50 8008FDB0 44819000 */  mtc1  $at, $f18
/* B06F54 8008FDB4 460A0401 */  sub.s $f16, $f0, $f10
/* B06F58 8008FDB8 C6260004 */  lwc1  $f6, 4($s1)
/* B06F5C 8008FDBC C62C0000 */  lwc1  $f12, ($s1)
/* B06F60 8008FDC0 8E260008 */  lw    $a2, 8($s1)
/* B06F64 8008FDC4 46128102 */  mul.s $f4, $f16, $f18
/* B06F68 8008FDC8 24070001 */  li    $a3, 1
/* B06F6C 8008FDCC 0C034261 */  jal   Matrix_Translate
/* B06F70 8008FDD0 46062380 */   add.s $f14, $f4, $f6
/* B06F74 8008FDD4 860A06C2 */  lh    $t2, 0x6c2($s0)
/* B06F78 8008FDD8 3C018014 */  lui   $at, %hi(D_8013E914)
/* B06F7C 8008FDDC C430E914 */  lwc1  $f16, %lo(D_8013E914)($at)
/* B06F80 8008FDE0 448A4000 */  mtc1  $t2, $f8
/* B06F84 8008FDE4 24050001 */  li    $a1, 1
/* B06F88 8008FDE8 468042A0 */  cvt.s.w $f10, $f8
/* B06F8C 8008FDEC 46105302 */  mul.s $f12, $f10, $f16
/* B06F90 8008FDF0 0C0342DC */  jal   Matrix_RotateX
/* B06F94 8008FDF4 00000000 */   nop
/* B06F98 8008FDF8 8FA20040 */  lw    $v0, 0x40($sp)
/* B06F9C 8008FDFC 24070001 */  li    $a3, 1
/* B06FA0 8008FE00 84440000 */  lh    $a0, ($v0)
/* B06FA4 8008FE04 84450002 */  lh    $a1, 2($v0)
/* B06FA8 8008FE08 0C034421 */  jal   Matrix_RotateRPY
/* B06FAC 8008FE0C 84460004 */   lh    $a2, 4($v0)
/* B06FB0 8008FE10 8FA20040 */  lw    $v0, 0x40($sp)
/* B06FB4 8008FE14 44800000 */  mtc1  $zero, $f0
/* B06FB8 8008FE18 00000000 */  nop
/* B06FBC 8008FE1C E6200008 */  swc1  $f0, 8($s1)
/* B06FC0 8008FE20 E6200004 */  swc1  $f0, 4($s1)
/* B06FC4 8008FE24 E6200000 */  swc1  $f0, ($s1)
/* B06FC8 8008FE28 A4400004 */  sh    $zero, 4($v0)
/* B06FCC 8008FE2C 84430004 */  lh    $v1, 4($v0)
/* B06FD0 8008FE30 A4430002 */  sh    $v1, 2($v0)
/* B06FD4 8008FE34 10000071 */  b     .L8008FFFC
/* B06FD8 8008FE38 A4430000 */   sh    $v1, ($v0)
.L8008FE3C:
/* B06FDC 8008FE3C 8CCB0000 */  lw    $t3, ($a2)
/* B06FE0 8008FE40 3C028016 */  lui   $v0, %hi(D_80160000)
/* B06FE4 8008FE44 24420000 */  addiu $v0, %lo(D_80160000)
/* B06FE8 8008FE48 11600004 */  beqz  $t3, .L8008FE5C
/* B06FEC 8008FE4C 2401000B */   li    $at, 11
/* B06FF0 8008FE50 8C4C0000 */  lw    $t4, ($v0)
/* B06FF4 8008FE54 258D000C */  addiu $t5, $t4, 0xc
/* B06FF8 8008FE58 AC4D0000 */  sw    $t5, ($v0)
.L8008FE5C:
/* B06FFC 8008FE5C 14A1000F */  bne   $a1, $at, .L8008FE9C
/* B07000 8008FE60 8FA20040 */   lw    $v0, 0x40($sp)
/* B07004 8008FE64 8FB00044 */  lw    $s0, 0x44($sp)
/* B07008 8008FE68 844E0000 */  lh    $t6, ($v0)
/* B0700C 8008FE6C 84590002 */  lh    $t9, 2($v0)
/* B07010 8008FE70 860F06BA */  lh    $t7, 0x6ba($s0)
/* B07014 8008FE74 844A0004 */  lh    $t2, 4($v0)
/* B07018 8008FE78 01CFC021 */  addu  $t8, $t6, $t7
/* B0701C 8008FE7C A4580000 */  sh    $t8, ($v0)
/* B07020 8008FE80 860806B8 */  lh    $t0, 0x6b8($s0)
/* B07024 8008FE84 03284823 */  subu  $t1, $t9, $t0
/* B07028 8008FE88 A4490002 */  sh    $t1, 2($v0)
/* B0702C 8008FE8C 860B06B6 */  lh    $t3, 0x6b6($s0)
/* B07030 8008FE90 014B6021 */  addu  $t4, $t2, $t3
/* B07034 8008FE94 10000059 */  b     .L8008FFFC
/* B07038 8008FE98 A44C0004 */   sh    $t4, 4($v0)
.L8008FE9C:
/* B0703C 8008FE9C 2401000A */  li    $at, 10
/* B07040 8008FEA0 14A10034 */  bne   $a1, $at, .L8008FF74
/* B07044 8008FEA4 8FB00044 */   lw    $s0, 0x44($sp)
/* B07048 8008FEA8 860D06B0 */  lh    $t5, 0x6b0($s0)
/* B0704C 8008FEAC 3C018014 */  lui   $at, %hi(D_8013E918)
/* B07050 8008FEB0 24050001 */  li    $a1, 1
/* B07054 8008FEB4 51A0000D */  beql  $t5, $zero, .L8008FEEC
/* B07058 8008FEB8 860206BE */   lh    $v0, 0x6be($s0)
/* B0705C 8008FEBC 0C0343B5 */  jal   Matrix_RotateZ
/* B07060 8008FEC0 C42CE918 */   lwc1  $f12, %lo(D_8013E918)($at)
/* B07064 8008FEC4 860E06B0 */  lh    $t6, 0x6b0($s0)
/* B07068 8008FEC8 3C018014 */  lui   $at, %hi(D_8013E91C)
/* B0706C 8008FECC C426E91C */  lwc1  $f6, %lo(D_8013E91C)($at)
/* B07070 8008FED0 448E9000 */  mtc1  $t6, $f18
/* B07074 8008FED4 24050001 */  li    $a1, 1
/* B07078 8008FED8 46809120 */  cvt.s.w $f4, $f18
/* B0707C 8008FEDC 46062302 */  mul.s $f12, $f4, $f6
/* B07080 8008FEE0 0C034348 */  jal   Matrix_RotateY
/* B07084 8008FEE4 00000000 */   nop
/* B07088 8008FEE8 860206BE */  lh    $v0, 0x6be($s0)
.L8008FEEC:
/* B0708C 8008FEEC 5040000A */  beql  $v0, $zero, .L8008FF18
/* B07090 8008FEF0 860206BC */   lh    $v0, 0x6bc($s0)
/* B07094 8008FEF4 44824000 */  mtc1  $v0, $f8
/* B07098 8008FEF8 3C018014 */  lui   $at, %hi(D_8013E920)
/* B0709C 8008FEFC C430E920 */  lwc1  $f16, %lo(D_8013E920)($at)
/* B070A0 8008FF00 468042A0 */  cvt.s.w $f10, $f8
/* B070A4 8008FF04 24050001 */  li    $a1, 1
/* B070A8 8008FF08 46105302 */  mul.s $f12, $f10, $f16
/* B070AC 8008FF0C 0C034348 */  jal   Matrix_RotateY
/* B070B0 8008FF10 00000000 */   nop
/* B070B4 8008FF14 860206BC */  lh    $v0, 0x6bc($s0)
.L8008FF18:
/* B070B8 8008FF18 5040000A */  beql  $v0, $zero, .L8008FF44
/* B070BC 8008FF1C 860206C0 */   lh    $v0, 0x6c0($s0)
/* B070C0 8008FF20 44829000 */  mtc1  $v0, $f18
/* B070C4 8008FF24 3C018014 */  lui   $at, %hi(D_8013E924)
/* B070C8 8008FF28 C426E924 */  lwc1  $f6, %lo(D_8013E924)($at)
/* B070CC 8008FF2C 46809120 */  cvt.s.w $f4, $f18
/* B070D0 8008FF30 24050001 */  li    $a1, 1
/* B070D4 8008FF34 46062302 */  mul.s $f12, $f4, $f6
/* B070D8 8008FF38 0C0342DC */  jal   Matrix_RotateX
/* B070DC 8008FF3C 00000000 */   nop
/* B070E0 8008FF40 860206C0 */  lh    $v0, 0x6c0($s0)
.L8008FF44:
/* B070E4 8008FF44 5040002E */  beql  $v0, $zero, .L80090000
/* B070E8 8008FF48 00001025 */   move  $v0, $zero
/* B070EC 8008FF4C 44824000 */  mtc1  $v0, $f8
/* B070F0 8008FF50 3C018014 */  lui   $at, %hi(D_8013E928)
/* B070F4 8008FF54 C430E928 */  lwc1  $f16, %lo(D_8013E928)($at)
/* B070F8 8008FF58 468042A0 */  cvt.s.w $f10, $f8
/* B070FC 8008FF5C 24050001 */  li    $a1, 1
/* B07100 8008FF60 46105302 */  mul.s $f12, $f10, $f16
/* B07104 8008FF64 0C0343B5 */  jal   Matrix_RotateZ
/* B07108 8008FF68 00000000 */   nop
/* B0710C 8008FF6C 10000024 */  b     .L80090000
/* B07110 8008FF70 00001025 */   move  $v0, $zero
.L8008FF74:
/* B07114 8008FF74 24010007 */  li    $at, 7
/* B07118 8008FF78 14A1000E */  bne   $a1, $at, .L8008FFB4
/* B0711C 8008FF7C 8FA20040 */   lw    $v0, 0x40($sp)
/* B07120 8008FF80 8FA50044 */  lw    $a1, 0x44($sp)
/* B07124 8008FF84 240F0007 */  li    $t7, 7
/* B07128 8008FF88 24180008 */  li    $t8, 8
/* B0712C 8008FF8C 24190009 */  li    $t9, 9
/* B07130 8008FF90 AFB9001C */  sw    $t9, 0x1c($sp)
/* B07134 8008FF94 AFB80018 */  sw    $t8, 0x18($sp)
/* B07138 8008FF98 AFAF0014 */  sw    $t7, 0x14($sp)
/* B0713C 8008FF9C 02203825 */  move  $a3, $s1
/* B07140 8008FFA0 AFA20010 */  sw    $v0, 0x10($sp)
/* B07144 8008FFA4 0C023E1F */  jal   func_8008F87C
/* B07148 8008FFA8 24A601B4 */   addiu $a2, $a1, 0x1b4
/* B0714C 8008FFAC 10000014 */  b     .L80090000
/* B07150 8008FFB0 00001025 */   move  $v0, $zero
.L8008FFB4:
/* B07154 8008FFB4 24010004 */  li    $at, 4
/* B07158 8008FFB8 14A1000E */  bne   $a1, $at, .L8008FFF4
/* B0715C 8008FFBC 8FA20040 */   lw    $v0, 0x40($sp)
/* B07160 8008FFC0 8FA50044 */  lw    $a1, 0x44($sp)
/* B07164 8008FFC4 24080004 */  li    $t0, 4
/* B07168 8008FFC8 24090005 */  li    $t1, 5
/* B0716C 8008FFCC 240A0006 */  li    $t2, 6
/* B07170 8008FFD0 AFAA001C */  sw    $t2, 0x1c($sp)
/* B07174 8008FFD4 AFA90018 */  sw    $t1, 0x18($sp)
/* B07178 8008FFD8 AFA80014 */  sw    $t0, 0x14($sp)
/* B0717C 8008FFDC 02203825 */  move  $a3, $s1
/* B07180 8008FFE0 AFA20010 */  sw    $v0, 0x10($sp)
/* B07184 8008FFE4 0C023E1F */  jal   func_8008F87C
/* B07188 8008FFE8 24A601B4 */   addiu $a2, $a1, 0x1b4
/* B0718C 8008FFEC 10000004 */  b     .L80090000
/* B07190 8008FFF0 00001025 */   move  $v0, $zero
.L8008FFF4:
/* B07194 8008FFF4 10000002 */  b     .L80090000
/* B07198 8008FFF8 00001025 */   move  $v0, $zero
.L8008FFFC:
/* B0719C 8008FFFC 00001025 */  move  $v0, $zero
.L80090000:
/* B071A0 80090000 8FBF002C */  lw    $ra, 0x2c($sp)
/* B071A4 80090004 8FB00024 */  lw    $s0, 0x24($sp)
/* B071A8 80090008 8FB10028 */  lw    $s1, 0x28($sp)
/* B071AC 8009000C 03E00008 */  jr    $ra
/* B071B0 80090010 27BD0030 */   addiu $sp, $sp, 0x30

