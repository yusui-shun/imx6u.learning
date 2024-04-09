
.global _start 

_start:
    ldr r0,=0x020c4068
    ldr r1,=0xffffffff
    str r1,[r0]

    ldr r0,=0x020c406c 
    str r1,[r0]

    ldr r0,=0x020c4070
    str r1,[r0]

    ldr r0,=0x020c4074 
    str r1,[r0]
    
    ldr r0,=0x020c4078 
    str r1,[r0]

    ldr r0,=0x020c407c 
    str r1,[r0]

    ldr r0,=0x020c4080 
    str r1,[r0]

    /*配置时钟GPIO01_IO03 的PIN的复用为GPIO */
    ldr r0,=0x020E0068
    ldr r1,=0x5
    str r1,[r0]

    /* 配置电气属性*/
    ldr r0,=0x020e02f4
    ldr r1,=0x10b0
    str r1,[r0]

    /*设置GIPO */
    ldr r0,=0x0209c004
    ldr r1,=0x8
    str r1,[r0]

    /*打开LED，设置GPIO03-IO03为0 */
    ldr r0,=0x0209c000
    ldr r1,=0
    str r1,[r0]

loop:
    b loop