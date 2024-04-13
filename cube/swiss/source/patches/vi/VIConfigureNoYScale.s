
.globl VIConfigureNoYScale
VIConfigureNoYScale:
	lhz			%r6, 8 (%r3)
	lhz			%r5, 6 (%r3)
	cmpw		%r5, %r6
	bgt			2f
	lbz			%r0, 25 (%r3)
	cmpwi		%r0, 0
	beq			1f
	srwi		%r6, %r6, 1
	addi		%r6, %r6, 2
	cmpw		%r6, %r5
	beq			2f
1:	clrrwi		%r6, %r5, 1
	sth			%r6, 8 (%r3)
2:

.globl VIConfigureNoYScale_length
VIConfigureNoYScale_length:
.long (VIConfigureNoYScale_length - VIConfigureNoYScale)