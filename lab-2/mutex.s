	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW

        @ END CODE INSERT
	ldr r1, = locked
.L1:
	ldr r2, [r0]
	cmp r2, #0
	streq r1, [r0]
	cmpeq r2, #0
	bne .L1
	bx lr

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
        
        @ END CODE INSERT
	ldr r1, = unlocked
	str r1, [r0]
	bx lr
	.size unlock_mutex, .-unlock_mutex

	.end
