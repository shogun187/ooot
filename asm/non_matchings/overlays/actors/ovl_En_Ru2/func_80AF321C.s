.rdata

glabel D_80AF5140
    .asciz "../z_en_ru2_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AF5164
    .asciz "../z_en_ru2_inKenjyanomaDemo02.c"
    .balign 4

.text

glabel func_80AF321C
/* 00CCC 80AF321C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00CD0 80AF3220 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00CD4 80AF3224 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00CD8 80AF3228 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 00CDC 80AF322C AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00CE0 80AF3230 848202A4 */  lh      $v0, 0x02A4($a0)           ## 000002A4
/* 00CE4 80AF3234 3C1880AF */  lui     $t8, %hi(D_80AF410C)       ## $t8 = 80AF0000
/* 00CE8 80AF3238 3C0680AF */  lui     $a2, %hi(D_80AF5140)       ## $a2 = 80AF0000
/* 00CEC 80AF323C 00027880 */  sll     $t7, $v0,  2               
/* 00CF0 80AF3240 030FC021 */  addu    $t8, $t8, $t7              
/* 00CF4 80AF3244 8F18410C */  lw      $t8, %lo(D_80AF410C)($t8)  
/* 00CF8 80AF3248 24C65140 */  addiu   $a2, $a2, %lo(D_80AF5140)  ## $a2 = 80AF5140
/* 00CFC 80AF324C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 00D00 80AF3250 AFB80068 */  sw      $t8, 0x0068($sp)           
/* 00D04 80AF3254 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00D08 80AF3258 24070108 */  addiu   $a3, $zero, 0x0108         ## $a3 = 00000108
/* 00D0C 80AF325C 0C031AB1 */  jal     func_800C6AC4              
/* 00D10 80AF3260 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00D14 80AF3264 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 00D18 80AF3268 0C024F61 */  jal     func_80093D84              
/* 00D1C 80AF326C 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00D20 80AF3270 8FA70068 */  lw      $a3, 0x0068($sp)           
/* 00D24 80AF3274 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00D28 80AF3278 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00D2C 80AF327C 00076100 */  sll     $t4, $a3,  4               
/* 00D30 80AF3280 000C6F02 */  srl     $t5, $t4, 28               
/* 00D34 80AF3284 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00D38 80AF3288 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00D3C 80AF328C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00D40 80AF3290 25EF6FA8 */  addiu   $t7, $t7, 0x6FA8           ## $t7 = 80166FA8
/* 00D44 80AF3294 000D7080 */  sll     $t6, $t5,  2               
/* 00D48 80AF3298 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 00D4C 80AF329C 01CF2021 */  addu    $a0, $t6, $t7              
/* 00D50 80AF32A0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00D54 80AF32A4 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 00D58 80AF32A8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00D5C 80AF32AC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00D60 80AF32B0 00E12824 */  and     $a1, $a3, $at              
/* 00D64 80AF32B4 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00D68 80AF32B8 0305C821 */  addu    $t9, $t8, $a1              
/* 00D6C 80AF32BC 03264821 */  addu    $t1, $t9, $a2              
/* 00D70 80AF32C0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00D74 80AF32C4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00D78 80AF32C8 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00D7C 80AF32CC 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 00D80 80AF32D0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00D84 80AF32D4 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00D88 80AF32D8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00D8C 80AF32DC 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 00D90 80AF32E0 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00D94 80AF32E4 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00D98 80AF32E8 01856821 */  addu    $t5, $t4, $a1              
/* 00D9C 80AF32EC 01A67021 */  addu    $t6, $t5, $a2              
/* 00DA0 80AF32F0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00DA4 80AF32F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00DA8 80AF32F8 8FA80078 */  lw      $t0, 0x0078($sp)           
/* 00DAC 80AF32FC 3C0C8011 */  lui     $t4, 0x8011                ## $t4 = 80110000
/* 00DB0 80AF3300 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00DB4 80AF3304 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00DB8 80AF3308 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00DBC 80AF330C 8D1902B4 */  lw      $t9, 0x02B4($t0)           ## 000002B4
/* 00DC0 80AF3310 258C6280 */  addiu   $t4, $t4, 0x6280           ## $t4 = 80116280
/* 00DC4 80AF3314 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 00DC8 80AF3318 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 00DCC 80AF331C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00DD0 80AF3320 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00DD4 80AF3324 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00DD8 80AF3328 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00DDC 80AF332C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00DE0 80AF3330 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00DE4 80AF3334 2502014C */  addiu   $v0, $t0, 0x014C           ## $v0 = 0000014C
/* 00DE8 80AF3338 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 00DEC 80AF333C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 00DF0 80AF3340 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 00DF4 80AF3344 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00DF8 80AF3348 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00DFC 80AF334C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00E00 80AF3350 8E0D02D0 */  lw      $t5, 0x02D0($s0)           ## 000002D0
/* 00E04 80AF3354 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00E08 80AF3358 0C0289CF */  jal     func_800A273C              
/* 00E0C 80AF335C AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00E10 80AF3360 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00E14 80AF3364 8FAE007C */  lw      $t6, 0x007C($sp)           
/* 00E18 80AF3368 3C0680AF */  lui     $a2, %hi(D_80AF5164)       ## $a2 = 80AF0000
/* 00E1C 80AF336C 24C65164 */  addiu   $a2, $a2, %lo(D_80AF5164)  ## $a2 = 80AF5164
/* 00E20 80AF3370 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 00E24 80AF3374 24070123 */  addiu   $a3, $zero, 0x0123         ## $a3 = 00000123
/* 00E28 80AF3378 0C031AD5 */  jal     func_800C6B54              
/* 00E2C 80AF337C 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00E30 80AF3380 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00E34 80AF3384 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00E38 80AF3388 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 00E3C 80AF338C 03E00008 */  jr      $ra                        
/* 00E40 80AF3390 00000000 */  nop


