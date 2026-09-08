0000000000007de0 <avx512_partition_register_begin>:
    7de0:	ld1	{v4.16b-v7.16b}, [x21]
    7de4:	add	x3, x19, #0x80
    7de8:	add	x2, x19, #0xa0
    7dec:	add	x1, x19, #0x20
    7df0:	mov	x20, x19
    7df4:	adrp	x0, 21000 <qs::avx512::swap_epi32(long __vector(8)&, long __vector(8)&, unsigned short, unsigned short)+0x70>
    7df8:	st1	{v4.16b-v7.16b}, [sp]
    7dfc:	ldr	q4, [sp]
    7e00:	ld1	{v22.16b-v25.16b}, [sp]
    7e04:	cmgt	v6.4s, v0.4s, v4.4s
    7e08:	ldr	q4, [sp, #16]
    7e0c:	cmgt	v5.4s, v1.4s, v4.4s
    7e10:	ldr	q4, [sp, #32]
    7e14:	stp	q6, q5, [x19, #128]
    7e18:	cmgt	v17.4s, v2.4s, v4.4s
    7e1c:	ldr	q4, [sp, #48]
    7e20:	ldp	q6, q5, [sp, #16]
    7e24:	cmgt	v16.4s, v3.4s, v4.4s
    7e28:	ldr	q4, [sp]
    7e2c:	cmeq	v6.4s, v1.4s, v6.4s
    7e30:	cmeq	v5.4s, v2.4s, v5.4s
    7e34:	cmeq	v4.4s, v0.4s, v4.4s
    7e38:	str	q6, [x19, #176]
    7e3c:	str	q4, [x19, #160]
    7e40:	ldr	q4, [sp, #48]
    7e44:	ld1	{v6.16b, v7.16b}, [x3]
    7e48:	stp	q17, q16, [x19, #128]
    7e4c:	cmeq	v4.4s, v3.4s, v4.4s
    7e50:	ld1	{v16.16b, v17.16b}, [x3]
    7e54:	st1	{v6.16b, v7.16b}, [x19]
    7e58:	ld1	{v6.16b, v7.16b}, [x2]
    7e5c:	stp	q5, q4, [x19, #160]
    7e60:	ld1	{v4.16b, v5.16b}, [x2]
    7e64:	st1	{v16.16b, v17.16b}, [x1]
    7e68:	ld1	{v16.16b-v19.16b}, [x19]
    7e6c:	st1	{v6.16b, v7.16b}, [x19]
    7e70:	st1	{v4.16b, v5.16b}, [x1]
    7e74:	ld1	{v4.16b-v7.16b}, [x20], #64
    7e78:	st1	{v0.16b-v3.16b}, [x19]
    7e7c:	ushr	v2.4s, v19.4s, #31
    7e80:	ldr	q21, [x0, #3760]
    7e84:	st1	{v22.16b-v25.16b}, [x20]
    7e88:	ushr	v20.4s, v18.4s, #31
    7e8c:	ushr	v3.4s, v17.4s, #31
    7e90:	ldr	q18, [x0, #3760]
    7e94:	ushr	v0.4s, v7.4s, #31
    7e98:	ushr	v16.4s, v16.4s, #31
    7e9c:	ushr	v1.4s, v5.4s, #31
    7ea0:	ushr	v17.4s, v6.4s, #31
    7ea4:	ushl	v2.4s, v2.4s, v21.4s
    7ea8:	ushr	v4.4s, v4.4s, #31
    7eac:	ushl	v7.4s, v20.4s, v21.4s
    7eb0:	ushl	v3.4s, v3.4s, v21.4s
    7eb4:	ushl	v5.4s, v16.4s, v21.4s
    7eb8:	ushl	v0.4s, v0.4s, v18.4s
    7ebc:	ushl	v6.4s, v17.4s, v18.4s
    7ec0:	ushl	v1.4s, v1.4s, v18.4s
    7ec4:	addv	s2, v2.4s
    7ec8:	ushl	v4.4s, v4.4s, v18.4s
    7ecc:	addv	s7, v7.4s
    7ed0:	addv	s3, v3.4s
    7ed4:	addv	s5, v5.4s
    7ed8:	addv	s0, v0.4s
    7edc:	addv	s6, v6.4s
    7ee0:	addv	s1, v1.4s
    7ee4:	fmov	w1, s2
    7ee8:	fmov	w7, s7
    7eec:	addv	s2, v4.4s
    7ef0:	fmov	w4, s3
    7ef4:	fmov	w5, s5
    7ef8:	fmov	w2, s0
    7efc:	fmov	w6, s6
    7f00:	fmov	w0, s1
    7f04:	ubfiz	w1, w1, #4, #8
    7f08:	fmov	w3, s2
    7f0c:	orr	w1, w1, w7
    7f10:	ubfiz	w4, w4, #4, #8
    7f14:	orr	w4, w4, w5
    7f18:	ubfiz	w2, w2, #4, #8
    7f1c:	ubfiz	w1, w1, #8, #8
    7f20:	and	w4, w4, #0xff
    7f24:	orr	w2, w2, w6
    7f28:	ubfiz	w0, w0, #4, #8
    7f2c:	orr	w27, w4, w1
    7f30:	orr	w0, w0, w3
    7f34:	and	w26, w24, w27
    7f38:	ubfiz	w2, w2, #8, #8
    7f3c:	and	w0, w0, #0xff
    7f40:	and	x1, x26, #0x1
    7f44:	orr	w25, w0, w2
    7f48:	tbz	w26, #1, 7f5c <avx512_partition_register_begin+0x17c>
    7f4c:	ldr	x0, [sp]
    7f50:	asr	x0, x0, #32
    7f54:	str	w0, [x20, x1, lsl #2]
    7f58:	add	x1, x1, #0x1
    7f5c:	tbz	w26, #2, 7f6c <avx512_partition_register_begin+0x18c>
    7f60:	ldr	w0, [x20, #8]
    7f64:	str	w0, [x20, x1, lsl #2]
    7f68:	add	x1, x1, #0x1
    7f6c:	tbz	w26, #3, 7f7c <avx512_partition_register_begin+0x19c>
    7f70:	ldr	w0, [x20, #12]
    7f74:	str	w0, [x20, x1, lsl #2]
    7f78:	add	x1, x1, #0x1
    7f7c:	tbz	w26, #4, 7f8c <avx512_partition_register_begin+0x1ac>
    7f80:	ldr	w0, [x20, #16]
    7f84:	str	w0, [x20, x1, lsl #2]
    7f88:	add	x1, x1, #0x1
    7f8c:	tbz	w26, #5, 7f9c <avx512_partition_register_begin+0x1bc>
    7f90:	ldr	w0, [x20, #20]
    7f94:	str	w0, [x20, x1, lsl #2]
    7f98:	add	x1, x1, #0x1
    7f9c:	tbz	w26, #6, 7fac <avx512_partition_register_begin+0x1cc>
    7fa0:	ldr	w0, [x20, #24]
    7fa4:	str	w0, [x20, x1, lsl #2]
    7fa8:	add	x1, x1, #0x1
    7fac:	tbz	w26, #7, 7fbc <avx512_partition_register_begin+0x1dc>
    7fb0:	ldr	w0, [x20, #28]
    7fb4:	str	w0, [x20, x1, lsl #2]
    7fb8:	add	x1, x1, #0x1
    7fbc:	tbz	w26, #8, 7fcc <avx512_partition_register_begin+0x1ec>
    7fc0:	ldr	w0, [x20, #32]
    7fc4:	str	w0, [x20, x1, lsl #2]
    7fc8:	add	x1, x1, #0x1
    7fcc:	tbz	w26, #9, 7fdc <avx512_partition_register_begin+0x1fc>
    7fd0:	ldr	w0, [x20, #36]
    7fd4:	str	w0, [x20, x1, lsl #2]
    7fd8:	add	x1, x1, #0x1
    7fdc:	tbz	w26, #10, 7fec <avx512_partition_register_begin+0x20c>
    7fe0:	ldr	w0, [x20, #40]
    7fe4:	str	w0, [x20, x1, lsl #2]
    7fe8:	add	x1, x1, #0x1
    7fec:	tbz	w26, #11, 7ffc <avx512_partition_register_begin+0x21c>
    7ff0:	ldr	w0, [x20, #44]
    7ff4:	str	w0, [x20, x1, lsl #2]
    7ff8:	add	x1, x1, #0x1
    7ffc:	tbz	w26, #12, 800c <avx512_partition_register_begin+0x22c>
    8000:	ldr	w0, [x20, #48]
    8004:	str	w0, [x20, x1, lsl #2]
    8008:	add	x1, x1, #0x1
    800c:	tbz	w26, #13, 801c <avx512_partition_register_begin+0x23c>
    8010:	ldr	w0, [x20, #52]
    8014:	str	w0, [x20, x1, lsl #2]
    8018:	add	x1, x1, #0x1
    801c:	tbz	w26, #14, 802c <avx512_partition_register_begin+0x24c>
    8020:	ldr	w0, [x20, #56]
    8024:	str	w0, [x20, x1, lsl #2]
    8028:	add	x1, x1, #0x1
    802c:	cmp	wzr, w26, lsr #15
    8030:	b.ne	85d0 <avx512_partition_register_end+0x1b0>  // b.any
    8034:	mov	x2, #0x10                  	// #16
    8038:	sub	x2, x2, x1
    803c:	lsl	x0, x1, #2
    8040:	add	x1, x19, x0
    8044:	lsl	x2, x2, #2
    8048:	add	x0, x20, x0
    804c:	bl	1390 <memcpy@plt>
    8050:	ld1	{v0.16b-v3.16b}, [sp]
    8054:	orr	w0, w25, w27
    8058:	bic	w2, w24, w0
    805c:	and	w25, w24, w0
    8060:	and	x1, x2, #0x1
    8064:	st1	{v0.16b-v3.16b}, [x19]
    8068:	ldp	x28, x3, [x20, #8]
    806c:	ldp	x4, x5, [x20, #24]
    8070:	ldp	x6, x7, [x20, #40]
    8074:	ldr	x8, [x20, #56]
    8078:	ldr	x27, [x19, #64]
    807c:	tbz	w2, #1, 8090 <avx512_partition_register_begin+0x2b0>
    8080:	ldr	x0, [sp]
    8084:	asr	x0, x0, #32
    8088:	str	w0, [x19, x1, lsl #2]
    808c:	add	x1, x1, #0x1
    8090:	tbz	w2, #2, 80a0 <avx512_partition_register_begin+0x2c0>
    8094:	ldr	w0, [x19, #8]
    8098:	str	w0, [x19, x1, lsl #2]
    809c:	add	x1, x1, #0x1
    80a0:	tbz	w2, #3, 80b0 <avx512_partition_register_begin+0x2d0>
    80a4:	ldr	w0, [x19, #12]
    80a8:	str	w0, [x19, x1, lsl #2]
    80ac:	add	x1, x1, #0x1
    80b0:	tbz	w2, #4, 80c0 <avx512_partition_register_begin+0x2e0>
    80b4:	ldr	w0, [x19, #16]
    80b8:	str	w0, [x19, x1, lsl #2]
    80bc:	add	x1, x1, #0x1
    80c0:	tbz	w2, #5, 80d0 <avx512_partition_register_begin+0x2f0>
    80c4:	ldr	w0, [x19, #20]
    80c8:	str	w0, [x19, x1, lsl #2]
    80cc:	add	x1, x1, #0x1
    80d0:	tbz	w2, #6, 80e0 <avx512_partition_register_begin+0x300>
    80d4:	ldr	w0, [x19, #24]
    80d8:	str	w0, [x19, x1, lsl #2]
    80dc:	add	x1, x1, #0x1
    80e0:	tbz	w2, #7, 80f0 <avx512_partition_register_begin+0x310>
    80e4:	ldr	w0, [x19, #28]
    80e8:	str	w0, [x19, x1, lsl #2]
    80ec:	add	x1, x1, #0x1
    80f0:	tbz	w2, #8, 8100 <avx512_partition_register_begin+0x320>
    80f4:	ldr	w0, [x19, #32]
    80f8:	str	w0, [x19, x1, lsl #2]
    80fc:	add	x1, x1, #0x1
    8100:	tbz	w2, #9, 8110 <avx512_partition_register_begin+0x330>
    8104:	ldr	w0, [x19, #36]
    8108:	str	w0, [x19, x1, lsl #2]
    810c:	add	x1, x1, #0x1
    8110:	tbz	w2, #10, 8120 <avx512_partition_register_begin+0x340>
    8114:	ldr	w0, [x19, #40]
    8118:	str	w0, [x19, x1, lsl #2]
    811c:	add	x1, x1, #0x1
    8120:	tbz	w2, #11, 8130 <avx512_partition_register_begin+0x350>
    8124:	ldr	w0, [x19, #44]
    8128:	str	w0, [x19, x1, lsl #2]
    812c:	add	x1, x1, #0x1
    8130:	tbz	w2, #12, 8140 <avx512_partition_register_begin+0x360>
    8134:	ldr	w0, [x19, #48]
    8138:	str	w0, [x19, x1, lsl #2]
    813c:	add	x1, x1, #0x1
    8140:	tbz	w2, #13, 8150 <avx512_partition_register_begin+0x370>
    8144:	ldr	w0, [x19, #52]
    8148:	str	w0, [x19, x1, lsl #2]
    814c:	add	x1, x1, #0x1
    8150:	tbz	w2, #14, 8160 <avx512_partition_register_begin+0x380>
    8154:	ldr	w0, [x19, #56]
    8158:	str	w0, [x19, x1, lsl #2]
    815c:	add	x1, x1, #0x1
    8160:	cmp	wzr, w2, lsr #15
    8164:	b.ne	85b8 <avx512_partition_register_end+0x198>  // b.any
    8168:	mov	x2, #0x10                  	// #16
    816c:	sub	x2, x2, x1
    8170:	add	x0, x19, x1, lsl #2
    8174:	mov	w1, #0x0                   	// #0
    8178:	lsl	x2, x2, #2
    817c:	stp	x3, x4, [sp, #64]
    8180:	stp	x5, x6, [sp, #80]
    8184:	stp	x7, x8, [sp, #96]
    8188:	bl	1410 <memset@plt>
    818c:	ldp	x3, x4, [sp, #64]
    8190:	ldp	x5, x6, [sp, #80]
    8194:	ldp	x7, x8, [sp, #96]
    8198:	fmov	s1, w25
    819c:	ldr	x1, [sp]
    81a0:	cnt	v1.8b, v1.8b
    81a4:	ldr	x2, [sp, #32]
    81a8:	mov	w0, #0x1                   	// #1
    81ac:	asr	x17, x1, #32
    81b0:	asr	x13, x27, #32
    81b4:	ldr	x1, [sp, #8]
    81b8:	addv	b1, v1.8b
    81bc:	asr	x14, x2, #32
    81c0:	asr	x12, x28, #32
    81c4:	asr	x11, x3, #32
    81c8:	asr	x10, x4, #32
    81cc:	asr	x16, x1, #32
    81d0:	asr	x9, x5, #32
    81d4:	ldr	x1, [sp, #16]
    81d8:	fmov	s0, w26
    81dc:	ldr	x26, [x19, #40]
    81e0:	cnt	v0.8b, v0.8b
    81e4:	asr	x15, x1, #32
    81e8:	ldr	x1, [sp, #24]
    81ec:	addv	b0, v0.8b
    81f0:	asr	x18, x1, #32
    81f4:	fmov	w1, s1
    81f8:	lsl	w0, w0, w1
    81fc:	and	w0, w0, #0xffff
    8200:	sub	w2, w0, #0x1
    8204:	neg	w0, w0
    8208:	and	w0, w24, w0
    820c:	ldr	w24, [sp]
    8210:	tst	x2, #0x1
    8214:	csel	w27, w27, w24, ne  // ne = any
    8218:	tst	x2, #0x2
    821c:	csel	w13, w17, w13, eq  // eq = none
    8220:	ldr	w17, [sp, #8]
    8224:	tst	x2, #0x4
    8228:	csel	w28, w28, w17, ne  // ne = any
    822c:	tst	x2, #0x8
    8230:	csel	w12, w16, w12, eq  // eq = none
    8234:	ldr	w16, [sp, #16]
    8238:	tst	x2, #0x10
    823c:	csel	w3, w3, w16, ne  // ne = any
    8240:	tst	x2, #0x20
    8244:	csel	w11, w15, w11, eq  // eq = none
    8248:	ldr	w15, [sp, #24]
    824c:	tst	x2, #0x40
    8250:	csel	w4, w4, w15, ne  // ne = any
    8254:	tst	x2, #0x80
    8258:	csel	w18, w18, w10, eq  // eq = none
    825c:	ldr	w10, [sp, #32]
    8260:	tst	x2, #0x100
    8264:	csel	w5, w5, w10, ne  // ne = any
    8268:	ldr	w10, [sp, #40]
    826c:	tst	x2, #0x200
    8270:	csel	w9, w14, w9, eq  // eq = none
    8274:	tst	x2, #0x400
    8278:	csel	w24, w6, w10, ne  // ne = any
    827c:	tst	x2, #0x800
    8280:	ldr	x10, [sp, #40]
    8284:	asr	x6, x6, #32
    8288:	ldp	x17, x16, [x19, #8]
    828c:	stp	w28, w12, [x19, #8]
    8290:	asr	x14, x10, #32
    8294:	stp	w3, w11, [x19, #16]
    8298:	csel	w14, w14, w6, eq  // eq = none
    829c:	ldr	w6, [sp, #48]
    82a0:	tst	x2, #0x1000
    82a4:	and	x10, x0, #0xffff
    82a8:	csel	w25, w7, w6, ne  // ne = any
    82ac:	tst	x2, #0x2000
    82b0:	ldr	x6, [sp, #48]
    82b4:	asr	x7, x7, #32
    82b8:	ldr	x15, [x19, #24]
    82bc:	stp	w4, w18, [x19, #24]
    82c0:	asr	x6, x6, #32
    82c4:	csel	w6, w6, w7, eq  // eq = none
    82c8:	ldr	w7, [sp, #56]
    82cc:	tst	x2, #0x4000
    82d0:	csel	w7, w8, w7, ne  // ne = any
    82d4:	tst	x2, #0x8000
    82d8:	ldr	x2, [sp, #56]
    82dc:	asr	x8, x8, #32
    82e0:	ldr	x18, [x19, #32]
    82e4:	stp	w5, w9, [x19, #32]
    82e8:	asr	x2, x2, #32
    82ec:	csel	w8, w2, w8, eq  // eq = none
    82f0:	ldr	x2, [x19]
    82f4:	stp	w27, w13, [x19]
    82f8:	stp	w24, w14, [x19, #40]
    82fc:	fmov	w13, s0
    8300:	str	x2, [x19, #64]
    8304:	ldp	x3, x14, [x19, #40]
    8308:	stp	x17, x16, [x20, #8]
    830c:	ldr	x9, [x19, #56]
    8310:	stp	x15, x18, [x20, #24]
    8314:	stp	x26, x14, [x20, #40]
    8318:	stp	w25, w6, [x19, #48]
    831c:	stp	w7, w8, [x19, #56]
    8320:	str	x9, [x20, #56]
    8324:	mov	x9, #0x1                   	// #1
    8328:	ldp	x8, x7, [x19]
    832c:	ldr	x6, [x19, #16]
    8330:	ldp	x5, x4, [x19, #24]
    8334:	ldp	x12, x11, [x19, #48]
    8338:	tbnz	w0, #0, 8344 <avx512_partition_register_begin+0x564>
    833c:	mov	w2, w8
    8340:	mov	x9, #0x0                   	// #0
    8344:	str	w2, [x19]
    8348:	lsr	x8, x8, #32
    834c:	tbnz	w10, #1, 85a0 <avx512_partition_register_end+0x180>
    8350:	str	w8, [x19, #4]
    8354:	mov	w0, w7
    8358:	tbnz	w10, #2, 8588 <avx512_partition_register_end+0x168>
    835c:	str	w0, [x19, #8]
    8360:	lsr	x7, x7, #32
    8364:	tbnz	w10, #3, 8570 <avx512_partition_register_end+0x150>
    8368:	str	w7, [x19, #12]
    836c:	mov	w0, w6
    8370:	tbnz	w10, #4, 8558 <avx512_partition_register_end+0x138>
    8374:	str	w0, [x19, #16]
    8378:	lsr	x6, x6, #32
    837c:	tbnz	w10, #5, 8540 <avx512_partition_register_end+0x120>
    8380:	str	w6, [x19, #20]
    8384:	mov	w0, w5
    8388:	tbnz	w10, #6, 8528 <avx512_partition_register_end+0x108>
    838c:	str	w0, [x19, #24]
    8390:	lsr	x5, x5, #32
    8394:	tbnz	w10, #7, 8510 <avx512_partition_register_end+0xf0>
    8398:	str	w5, [x19, #28]
    839c:	mov	w0, w4
    83a0:	tbnz	w10, #8, 84f8 <avx512_partition_register_end+0xd8>
    83a4:	str	w0, [x19, #32]
    83a8:	lsr	x4, x4, #32
    83ac:	tbnz	w10, #9, 84e0 <avx512_partition_register_end+0xc0>
    83b0:	str	w4, [x19, #36]
    83b4:	mov	w0, w3
    83b8:	tbnz	w10, #10, 84c8 <avx512_partition_register_end+0xa8>
    83bc:	str	w0, [x19, #40]
    83c0:	lsr	x3, x3, #32
    83c4:	tbnz	w10, #11, 84b0 <avx512_partition_register_end+0x90>
    83c8:	str	w3, [x19, #44]
    83cc:	mov	w0, w12
    83d0:	tbnz	w10, #12, 8498 <avx512_partition_register_end+0x78>
    83d4:	str	w0, [x19, #48]
    83d8:	lsr	x2, x12, #32
    83dc:	tbnz	w10, #13, 8480 <avx512_partition_register_end+0x60>
    83e0:	str	w2, [x19, #52]
    83e4:	mov	w0, w11
    83e8:	tbnz	w10, #14, 8464 <avx512_partition_register_end+0x44>
    83ec:	str	w0, [x19, #56]
    83f0:	lsr	x0, x11, #32
    83f4:	cmp	xzr, x10, lsr #15
    83f8:	b.ne	845c <avx512_partition_register_end+0x3c>  // b.any
    83fc:	str	w0, [x19, #60]
    8400:	ld1	{v0.16b-v3.16b}, [x19]
    8404:	st1	{v0.16b-v3.16b}, [x21]
    8408:	ldr	w0, [x23]
    840c:	add	w0, w0, w13
    8410:	str	w0, [x22]
    8414:	ldr	w0, [x23]
    8418:	add	w0, w0, w1
    841c:	str	w0, [x23]

0000000000008420 <avx512_partition_register_end>:
