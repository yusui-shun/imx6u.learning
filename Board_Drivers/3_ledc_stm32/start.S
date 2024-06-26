
.global _start  		/* 全局标号 */
.global _bss_start
_bss_start:
    .word __bss_start

.global _bss_end 
_bss_end:
    .word __bss_end 

/*
 * 描述：	_start函数，程序从此函数开始执行，此函数主要功能是设置C
 *		 运行环境。
 */
_start:

	/* 进入SVC模式 */
	mrs r0, cpsr
	bic r0, r0, #0x1f 	/* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4 	*/
	orr r0, r0, #0x13 	/* r0或上0x13,表示使用SVC模式					*/
	msr cpsr, r0		/* 将r0 的数据写入到cpsr_c中 					*/

    ldr r0, __bss_start
    ldr r1, __bss_end
    mov r2,
_bss_loop:
    stmia r0!, {r2}
    cmp r0,r1 
    ble _bss_loop

	ldr sp, =0X80200000	/* 设置栈指针			 */
	b main				/* 跳转到main函数 		 */
