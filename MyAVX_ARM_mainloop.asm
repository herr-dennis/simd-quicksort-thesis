    47b8:	54001d00 	b.eq	4b58 <Block_MyAvx_end+0x1f0>  // b.none
    47bc:	4c40a322 	ld1	{v2.16b, v3.16b}, [x25]
    47c0:	f9404be0 	ldr	x0, [sp, #144]
    47c4:	4ea33486 	cmgt	v6.4s, v4.4s, v3.4s
    47c8:	6ea58c41 	cmeq	v1.4s, v2.4s, v5.4s
    47cc:	6ea38c80 	cmeq	v0.4s, v4.4s, v3.4s
    47d0:	4ea234a7 	cmgt	v7.4s, v5.4s, v2.4s
    47d4:	ad020261 	stp	q1, q0, [x19, #64]
    47d8:	ad011a67 	stp	q7, q6, [x19, #32]
    47dc:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    47e0:	910083e0 	add	x0, sp, #0x20
    47e4:	4c00a000 	st1	{v0.16b, v1.16b}, [x0]
    47e8:	f9404fe0 	ldr	x0, [sp, #152]
    47ec:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    47f0:	4c00a3e0 	st1	{v0.16b, v1.16b}, [sp]
    47f4:	ad401be1 	ldp	q1, q6, [sp]
    47f8:	3dc00be0 	ldr	q0, [sp, #32]
    47fc:	4ea11c01 	orr	v1.16b, v0.16b, v1.16b
    4800:	3dc00fe0 	ldr	q0, [sp, #48]
    4804:	4ea61c00 	orr	v0.16b, v0.16b, v6.16b
    4808:	ad030261 	stp	q1, q0, [x19, #96]
    480c:	4c40a1a0 	ld1	{v0.16b, v1.16b}, [x13]
    4810:	6e205806 	mvn	v6.16b, v0.16b
    4814:	6e205820 	mvn	v0.16b, v1.16b
    4818:	ad040266 	stp	q6, q0, [x19, #128]
    481c:	a9401d6f 	ldp	x15, x7, [x11]
    4820:	a941196e 	ldp	x14, x6, [x11, #16]

0000000000004824 <Block_MyAvx_begin>:
    4824:	b9402be0 	ldr	w0, [sp, #40]
    4828:	531f7dc2 	lsr	w2, w14, #31
    482c:	531f7ce9 	lsr	w9, w7, #31
    4830:	d37ffce7 	lsr	x7, x7, #63
    4834:	531c6c42 	lsl	w2, w2, #4
    4838:	d37ffdf4 	lsr	x20, x15, #63
    483c:	531f7c03 	lsr	w3, w0, #31
    4840:	b94033e0 	ldr	w0, [sp, #48]
    4844:	2a070c50 	orr	w16, w2, w7, lsl #3
    4848:	b9403be2 	ldr	w2, [sp, #56]
    484c:	531e7463 	lsl	w3, w3, #2
    4850:	531e7529 	lsl	w9, w9, #2
    4854:	531f7c11 	lsr	w17, w0, #31
    4858:	b9400be0 	ldr	w0, [sp, #8]
    485c:	f9401fe4 	ldr	x4, [sp, #56]
    4860:	531c6e31 	lsl	w17, w17, #4
    4864:	531f7c1a 	lsr	w26, w0, #31
    4868:	b94013e0 	ldr	w0, [sp, #16]
    486c:	531f7c47 	lsr	w7, w2, #31
    4870:	2a140534 	orr	w20, w9, w20, lsl #1
    4874:	f94003e2 	ldr	x2, [sp]
    4878:	531f7c15 	lsr	w21, w0, #31
    487c:	f94013e0 	ldr	x0, [sp, #32]
    4880:	531a64e7 	lsl	w7, w7, #6
    4884:	d37ffc42 	lsr	x2, x2, #63
    4888:	531e775a 	lsl	w26, w26, #2
    488c:	531c6eb5 	lsl	w21, w21, #4
    4890:	2a100294 	orr	w20, w20, w16
    4894:	d37ffc00 	lsr	x0, x0, #63
    4898:	2a020742 	orr	w2, w26, w2, lsl #1
    489c:	531f7cd2 	lsr	w18, w6, #31
    48a0:	d37ffdce 	lsr	x14, x14, #63
    48a4:	2a000460 	orr	w0, w3, w0, lsl #1
    48a8:	d37ffcc6 	lsr	x6, x6, #63
    48ac:	f94017e3 	ldr	x3, [sp, #40]
    48b0:	531a6652 	lsl	w18, w18, #6
    48b4:	531f7def 	lsr	w15, w15, #31
    48b8:	2a0e164e 	orr	w14, w18, w14, lsl #5
    48bc:	2a0e0294 	orr	w20, w20, w14
    48c0:	2a061de6 	orr	w6, w15, w6, lsl #7
    48c4:	d37ffc63 	lsr	x3, x3, #63
    48c8:	2a060294 	orr	w20, w20, w6
    48cc:	1e270288 	fmov	s8, w20
    48d0:	2a030e23 	orr	w3, w17, w3, lsl #3
    48d4:	2a030000 	orr	w0, w0, w3
    48d8:	0e205906 	cnt	v6.8b, v8.8b
    48dc:	f9401be3 	ldr	x3, [sp, #48]
    48e0:	0e31b8c6 	addv	b6, v6.8b
    48e4:	d37ffc71 	lsr	x17, x3, #63
    48e8:	2a1114f1 	orr	w17, w7, w17, lsl #5
    48ec:	d37ffc87 	lsr	x7, x4, #63
    48f0:	b9401be4 	ldr	w4, [sp, #24]
    48f4:	531f7c88 	lsr	w8, w4, #31
    48f8:	a94093e3 	ldp	x3, x4, [sp, #8]
    48fc:	531a6508 	lsl	w8, w8, #6
    4900:	d37ffc63 	lsr	x3, x3, #63
    4904:	d37ffc90 	lsr	x16, x4, #63
    4908:	2a030ea3 	orr	w3, w21, w3, lsl #3
    490c:	2a101510 	orr	w16, w8, w16, lsl #5
    4910:	2a030049 	orr	w9, w2, w3
    4914:	2a110008 	orr	w8, w0, w17
    4918:	f9400fe2 	ldr	x2, [sp, #24]
    491c:	1e2600d5 	fmov	w21, s6
    4920:	b94003e0 	ldr	w0, [sp]
    4924:	d37ffc43 	lsr	x3, x2, #63
    4928:	b94023e2 	ldr	w2, [sp, #32]
    492c:	531f7c00 	lsr	w0, w0, #31
    4930:	2a031c03 	orr	w3, w0, w3, lsl #7
    4934:	531f7c42 	lsr	w2, w2, #31
    4938:	2a071c47 	orr	w7, w2, w7, lsl #7
    493c:	2a100122 	orr	w2, w9, w16
    4940:	2a030042 	orr	w2, w2, w3
    4944:	2a070100 	orr	w0, w8, w7
    4948:	1e270040 	fmov	s0, w2
    494c:	1e270001 	fmov	s1, w0
    4950:	0e205800 	cnt	v0.8b, v0.8b
    4954:	0e205827 	cnt	v7.8b, v1.8b
    4958:	0e31b800 	addv	b0, v0.8b
    495c:	0e31b8e7 	addv	b7, v7.8b
    4960:	1e2600e3 	fmov	w3, s7
    4964:	bd0077e0 	str	s0, [sp, #116]

0000000000004968 <Block_MyAvx_end>:
    4968:	9e660022 	fmov	x2, d1
    496c:	4c00a262 	st1	{v2.16b, v3.16b}, [x19]
    4970:	d37be842 	lsl	x2, x2, #5
    4974:	8b020306 	add	x6, x24, x2
    4978:	f8626b02 	ldr	x2, [x24, x2]
    497c:	a9409cc8 	ldp	x8, x7, [x6, #8]
    4980:	92400850 	and	x16, x2, #0x7
    4984:	d360884e 	ubfx	x14, x2, #32, #3
    4988:	f9400cc2 	ldr	x2, [x6, #24]
    498c:	b8707a70 	ldr	w16, [x19, x16, lsl #2]
    4990:	92400911 	and	x17, x8, #0x7
    4994:	924008e6 	and	x6, x7, #0x7
    4998:	d3608908 	ubfx	x8, x8, #32, #3
    499c:	d36088e7 	ubfx	x7, x7, #32, #3
    49a0:	9240084f 	and	x15, x2, #0x7
    49a4:	d3608849 	ubfx	x9, x2, #32, #3
    49a8:	b86e7a62 	ldr	w2, [x19, x14, lsl #2]
    49ac:	b8667a66 	ldr	w6, [x19, x6, lsl #2]
    49b0:	b8717a6e 	ldr	w14, [x19, x17, lsl #2]
    49b4:	b3607c50 	bfi	x16, x2, #32, #32
    49b8:	b8687a71 	ldr	w17, [x19, x8, lsl #2]
    49bc:	b86f7a62 	ldr	w2, [x19, x15, lsl #2]
    49c0:	b8677a68 	ldr	w8, [x19, x7, lsl #2]
    49c4:	b8697a67 	ldr	w7, [x19, x9, lsl #2]
    49c8:	b3607e2e 	bfi	x14, x17, #32, #32
    49cc:	a9003830 	stp	x16, x14, [x1]
    49d0:	b3607d06 	bfi	x6, x8, #32, #32
    49d4:	b3607ce2 	bfi	x2, x7, #32, #32
    49d8:	a9010826 	stp	x6, x2, [x1, #16]
    49dc:	340002a0 	cbz	w0, 4a30 <Block_MyAvx_end+0xc8>
    49e0:	910103e0 	add	x0, sp, #0x40
    49e4:	51000462 	sub	w2, w3, #0x1
    49e8:	91000442 	add	x2, x2, #0x1
    49ec:	5100047a 	sub	w26, w3, #0x1
    49f0:	f90003e1 	str	x1, [sp]
    49f4:	d37ef442 	lsl	x2, x2, #2
    49f8:	4c00a002 	st1	{v2.16b, v3.16b}, [x0]
    49fc:	8b3ccac0 	add	x0, x22, w28, sxtw #2
    4a00:	3d800be4 	str	q4, [sp, #32]
    4a04:	1100079c 	add	w28, w28, #0x1
    4a08:	0b1c035c 	add	w28, w26, w28
    4a0c:	3d801be5 	str	q5, [sp, #96]
    4a10:	a907afed 	stp	x13, x11, [sp, #120]
    4a14:	97fff25f 	bl	1390 <memcpy@plt>
    4a18:	910103e0 	add	x0, sp, #0x40
    4a1c:	a947afed 	ldp	x13, x11, [sp, #120]
    4a20:	4c40a002 	ld1	{v2.16b, v3.16b}, [x0]
    4a24:	f94003e1 	ldr	x1, [sp]
    4a28:	3dc00be4 	ldr	q4, [sp, #32]
    4a2c:	3dc01be5 	ldr	q5, [sp, #96]
    4a30:	9e660100 	fmov	x0, d8
    4a34:	4c00a262 	st1	{v2.16b, v3.16b}, [x19]
    4a38:	d2800009 	mov	x9, #0x0                   	// #0
    4a3c:	d2800008 	mov	x8, #0x0                   	// #0
    4a40:	a90123e9 	stp	x9, x8, [sp, #16]
    4a44:	d37be800 	lsl	x0, x0, #5
    4a48:	8b000303 	add	x3, x24, x0
    4a4c:	f8606b06 	ldr	x6, [x24, x0]
    4a50:	a9409c60 	ldp	x0, x7, [x3, #8]
    4a54:	924008cf 	and	x15, x6, #0x7
    4a58:	d36088c6 	ubfx	x6, x6, #32, #3
    4a5c:	b8667a66 	ldr	w6, [x19, x6, lsl #2]
    4a60:	d3608802 	ubfx	x2, x0, #32, #3
    4a64:	9240080e 	and	x14, x0, #0x7
    4a68:	f9400c60 	ldr	x0, [x3, #24]
    4a6c:	924008e3 	and	x3, x7, #0x7
    4a70:	b8627a70 	ldr	w16, [x19, x2, lsl #2]
    4a74:	d36088e7 	ubfx	x7, x7, #32, #3
    4a78:	b86f7a62 	ldr	w2, [x19, x15, lsl #2]
    4a7c:	b86e7a6e 	ldr	w14, [x19, x14, lsl #2]
    4a80:	b8637a63 	ldr	w3, [x19, x3, lsl #2]
    4a84:	aa068042 	orr	x2, x2, x6, lsl #32
    4a88:	b8677a66 	ldr	w6, [x19, x7, lsl #2]
    4a8c:	aa1081c4 	orr	x4, x14, x16, lsl #32
    4a90:	a90013e2 	stp	x2, x4, [sp]
    4a94:	92400802 	and	x2, x0, #0x7
    4a98:	d3608800 	ubfx	x0, x0, #32, #3
    4a9c:	aa068063 	orr	x3, x3, x6, lsl #32
    4aa0:	f94003e4 	ldr	x4, [sp]
    4aa4:	f90013e4 	str	x4, [sp, #32]
    4aa8:	b8627a62 	ldr	w2, [x19, x2, lsl #2]
    4aac:	b8607a60 	ldr	w0, [x19, x0, lsl #2]
    4ab0:	f94007e4 	ldr	x4, [sp, #8]
    4ab4:	f90017e4 	str	x4, [sp, #40]
    4ab8:	aa008040 	orr	x0, x2, x0, lsl #32
    4abc:	f9001fe0 	str	x0, [sp, #56]
    4ac0:	910083e0 	add	x0, sp, #0x20
    4ac4:	f9001be3 	str	x3, [sp, #48]
    4ac8:	4c40a000 	ld1	{v0.16b, v1.16b}, [x0]
    4acc:	4c00a020 	st1	{v0.16b, v1.16b}, [x1]
    4ad0:	34ffe674 	cbz	w20, 479c <myavx_partition_begin+0xb0>
    4ad4:	71000ebf 	cmp	w21, #0x3
    4ad8:	5400080d 	b.le	4bd8 <Block_MyAvx_end+0x270>
    4adc:	3dc003e0 	ldr	q0, [sp]
    4ae0:	b00000e4 	adrp	x4, 21000 <qs::avx512::swap_epi32(long __vector(8)&, long __vector(8)&, unsigned short, unsigned short)+0x70>
    4ae4:	92800160 	mov	x0, #0xfffffffffffffff4    	// #-12
    4ae8:	53027ea2 	lsr	w2, w21, #2
    4aec:	3dc37c82 	ldr	q2, [x4, #3568]
    4af0:	8b3bc800 	add	x0, x0, w27, sxtw #2
    4af4:	4ea01c01 	mov	v1.16b, v0.16b
    4af8:	8b0002c3 	add	x3, x22, x0
    4afc:	4e022000 	tbl	v0.16b, {v0.16b, v1.16b}, v2.16b
    4b00:	3ca06ac0 	str	q0, [x22, x0]
    4b04:	7100085f 	cmp	w2, #0x2
    4b08:	54ffe380 	b.eq	4778 <myavx_partition_begin+0x8c>  // b.none
    4b0c:	51001360 	sub	w0, w27, #0x4
    4b10:	710012bf 	cmp	w21, #0x4
    4b14:	54ffe3a0 	b.eq	4788 <myavx_partition_begin+0x9c>  // b.none
    4b18:	52800082 	mov	w2, #0x4                   	// #4
    4b1c:	b862d826 	ldr	w6, [x1, w2, sxtw #2]
    4b20:	11000443 	add	w3, w2, #0x1
    4b24:	b820dac6 	str	w6, [x22, w0, sxtw #2]
    4b28:	937e7c00 	sbfiz	x0, x0, #2, #32
    4b2c:	6b0302bf 	cmp	w21, w3
    4b30:	54ffe2cd 	b.le	4788 <myavx_partition_begin+0x9c>
    4b34:	8b0002c0 	add	x0, x22, x0
    4b38:	b863d823 	ldr	w3, [x1, w3, sxtw #2]
    4b3c:	11000842 	add	w2, w2, #0x2
    4b40:	b81fc003 	stur	w3, [x0, #-4]
    4b44:	6b0202bf 	cmp	w21, w2
    4b48:	54ffe20d 	b.le	4788 <myavx_partition_begin+0x9c>
    4b4c:	b862d822 	ldr	w2, [x1, w2, sxtw #2]
    4b50:	b81f8002 	stur	w2, [x0, #-8]
    4b54:	17ffff0d 	b	4788 <myavx_partition_begin+0x9c>
    4b58:	aa1703fa 	mov	x26, x23
    4b5c:	aa1603f9 	mov	x25, x22
    4b60:	29575fe0 	ldp	w0, w23, [sp, #184]
    4b64:	a95e5bf5 	ldp	x21, x22, [sp, #480]
    4b68:	11000400 	add	w0, w0, #0x1
    4b6c:	fd4113e8 	ldr	d8, [sp, #544]
    4b70:	531d7000 	lsl	w0, w0, #3
    4b74:	b940a7e1 	ldr	w1, [sp, #164]
    4b78:	6b00003f 	cmp	w1, w0
    4b7c:	5400036d 	b.le	4be8 <Block_MyAvx_end+0x280>
    4b80:	f94057e1 	ldr	x1, [sp, #168]
    4b84:	937e7c02 	sbfiz	x2, x0, #2, #32
    4b88:	b860d821 	ldr	w1, [x1, w0, sxtw #2]
    4b8c:	6b0102ff 	cmp	w23, w1
    4b90:	54000628 	b.hi	4c54 <myavx_partition_end+0x38>  // b.pmore
    4b94:	54001043 	b.cc	4d9c <myavx_partition_end+0x180>  // b.lo, b.ul, b.last
    4b98:	b9400341 	ldr	w1, [x26]
    4b9c:	11000421 	add	w1, w1, #0x1
    4ba0:	b9000341 	str	w1, [x26]
    4ba4:	b940a7e3 	ldr	w3, [sp, #164]
    4ba8:	11000401 	add	w1, w0, #0x1
    4bac:	6b01007f 	cmp	w3, w1
    4bb0:	540001cd 	b.le	4be8 <Block_MyAvx_end+0x280>
    4bb4:	f94057e1 	ldr	x1, [sp, #168]
    4bb8:	8b020023 	add	x3, x1, x2
    4bbc:	b9400461 	ldr	w1, [x3, #4]
    4bc0:	6b0102ff 	cmp	w23, w1
    4bc4:	540004e8 	b.hi	4c60 <myavx_partition_end+0x44>  // b.pmore
    4bc8:	54000f62 	b.cs	4db4 <myavx_partition_end+0x198>  // b.hs, b.nlast
    4bcc:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4bd0:	5100077b 	sub	w27, w27, #0x1
    4bd4:	14000025 	b	4c68 <myavx_partition_end+0x4c>
    4bd8:	2a1b03e0 	mov	w0, w27
    4bdc:	52800002 	mov	w2, #0x0                   	// #0
    4be0:	17ffffcf 	b	4b1c <Block_MyAvx_end+0x1b4>
    4be4:	2a0203fc 	mov	w28, w2
    4be8:	b9400341 	ldr	w1, [x26]
    4bec:	8b3ccb24 	add	x4, x25, w28, sxtw #2
    4bf0:	d2800000 	mov	x0, #0x0                   	// #0
    4bf4:	7100003f 	cmp	w1, #0x0
    4bf8:	540000ed 	b.le	4c14 <Block_MyAvx_end+0x2ac>
    4bfc:	d503201f 	nop
    4c00:	b8207897 	str	w23, [x4, x0, lsl #2]
    4c04:	91000400 	add	x0, x0, #0x1
    4c08:	b9400341 	ldr	w1, [x26]
    4c0c:	6b00003f 	cmp	w1, w0
    4c10:	54ffff8c 	b.gt	4c00 <Block_MyAvx_end+0x298>
    4c14:	f9405be0 	ldr	x0, [sp, #176]
    4c18:	b900001c 	str	w28, [x0]

    4c5c:	17ffffd2 	b	4ba4 <Block_MyAvx_end+0x23c>
    4c60:	b83cdb21 	str	w1, [x25, w28, sxtw #2]
    4c64:	1100079c 	add	w28, w28, #0x1
    4c68:	b940a7e2 	ldr	w2, [sp, #164]
    4c6c:	11000801 	add	w1, w0, #0x2
    4c70:	6b01005f 	cmp	w2, w1
    4c74:	54fffbad 	b.le	4be8 <Block_MyAvx_end+0x280>
    4c78:	b9400861 	ldr	w1, [x3, #8]
    4c7c:	6b0102ff 	cmp	w23, w1
    4c80:	540000a8 	b.hi	4c94 <myavx_partition_end+0x78>  // b.pmore
    4c84:	54000a02 	b.cs	4dc4 <myavx_partition_end+0x1a8>  // b.hs, b.nlast
    4c88:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4c8c:	5100077b 	sub	w27, w27, #0x1
    4c90:	14000003 	b	4c9c <myavx_partition_end+0x80>
    4c94:	b83cdb21 	str	w1, [x25, w28, sxtw #2]
    4c98:	1100079c 	add	w28, w28, #0x1
    4c9c:	b940a7e2 	ldr	w2, [sp, #164]
    4ca0:	11000c01 	add	w1, w0, #0x3
    4ca4:	6b01005f 	cmp	w2, w1
    4ca8:	54fffa0d 	b.le	4be8 <Block_MyAvx_end+0x280>
    4cac:	b9400c61 	ldr	w1, [x3, #12]
    4cb0:	6b0102ff 	cmp	w23, w1
    4cb4:	540000a8 	b.hi	4cc8 <myavx_partition_end+0xac>  // b.pmore
    4cb8:	540008e2 	b.cs	4dd4 <myavx_partition_end+0x1b8>  // b.hs, b.nlast
    4cbc:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4cc0:	5100077b 	sub	w27, w27, #0x1
    4cc4:	14000003 	b	4cd0 <myavx_partition_end+0xb4>
    4cc8:	b83cdb21 	str	w1, [x25, w28, sxtw #2]
    4ccc:	1100079c 	add	w28, w28, #0x1
    4cd0:	b940a7e2 	ldr	w2, [sp, #164]
    4cd4:	11001001 	add	w1, w0, #0x4
    4cd8:	6b01005f 	cmp	w2, w1
    4cdc:	54fff86d 	b.le	4be8 <Block_MyAvx_end+0x280>
    4ce0:	b9401061 	ldr	w1, [x3, #16]
    4ce4:	6b0102ff 	cmp	w23, w1
    4ce8:	540000c8 	b.hi	4d00 <myavx_partition_end+0xe4>  // b.pmore
    4cec:	540007c2 	b.cs	4de4 <myavx_partition_end+0x1c8>  // b.hs, b.nlast
    4cf0:	2a1c03e2 	mov	w2, w28
    4cf4:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4cf8:	5100077b 	sub	w27, w27, #0x1
    4cfc:	14000003 	b	4d08 <myavx_partition_end+0xec>
    4d00:	11000782 	add	w2, w28, #0x1
    4d04:	b83cdb21 	str	w1, [x25, w28, sxtw #2]
    4d08:	b940a7e4 	ldr	w4, [sp, #164]
    4d0c:	11001401 	add	w1, w0, #0x5
    4d10:	6b01009f 	cmp	w4, w1
    4d14:	54fff68d 	b.le	4be4 <Block_MyAvx_end+0x27c>
    4d18:	b9401461 	ldr	w1, [x3, #20]
    4d1c:	6b0102ff 	cmp	w23, w1
    4d20:	540000c8 	b.hi	4d38 <myavx_partition_end+0x11c>  // b.pmore
    4d24:	540006a2 	b.cs	4df8 <myavx_partition_end+0x1dc>  // b.hs, b.nlast
    4d28:	2a0203e5 	mov	w5, w2
    4d2c:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4d30:	5100077b 	sub	w27, w27, #0x1
    4d34:	14000003 	b	4d40 <myavx_partition_end+0x124>
    4d38:	11000445 	add	w5, w2, #0x1
    4d3c:	b822db21 	str	w1, [x25, w2, sxtw #2]
    4d40:	b940a7e2 	ldr	w2, [sp, #164]
    4d44:	11001801 	add	w1, w0, #0x6
    4d48:	6b01005f 	cmp	w2, w1
    4d4c:	540007ed 	b.le	4e48 <myavx_partition_end+0x22c>
    4d50:	b9401861 	ldr	w1, [x3, #24]
    4d54:	6b0102ff 	cmp	w23, w1
    4d58:	54000288 	b.hi	4da8 <myavx_partition_end+0x18c>  // b.pmore
    4d5c:	54000663 	b.cc	4e28 <myavx_partition_end+0x20c>  // b.lo, b.ul, b.last
    4d60:	b9400341 	ldr	w1, [x26]
    4d64:	2a0503fc 	mov	w28, w5
    4d68:	11000421 	add	w1, w1, #0x1
    4d6c:	b9000341 	str	w1, [x26]
    4d70:	b940a7e1 	ldr	w1, [sp, #164]
    4d74:	11001c00 	add	w0, w0, #0x7
    4d78:	6b00003f 	cmp	w1, w0
    4d7c:	54fff36d 	b.le	4be8 <Block_MyAvx_end+0x280>
    4d80:	b9401c60 	ldr	w0, [x3, #28]
    4d84:	6b17001f 	cmp	w0, w23
    4d88:	54000422 	b.cs	4e0c <myavx_partition_end+0x1f0>  // b.hs, b.nlast
    4d8c:	b83cdb20 	str	w0, [x25, w28, sxtw #2]
    4d90:	1100079c 	add	w28, w28, #0x1
    4d94:	b9400341 	ldr	w1, [x26]
    4d98:	17ffff95 	b	4bec <Block_MyAvx_end+0x284>
    4d9c:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4da0:	5100077b 	sub	w27, w27, #0x1
    4da4:	17ffff80 	b	4ba4 <Block_MyAvx_end+0x23c>
    4da8:	110004bc 	add	w28, w5, #0x1
    4dac:	b825db21 	str	w1, [x25, w5, sxtw #2]
    4db0:	17fffff0 	b	4d70 <myavx_partition_end+0x154>
    4db4:	b9400341 	ldr	w1, [x26]
    4db8:	11000421 	add	w1, w1, #0x1
    4dbc:	b9000341 	str	w1, [x26]
    4dc0:	17ffffaa 	b	4c68 <myavx_partition_end+0x4c>
    4dc4:	b9400341 	ldr	w1, [x26]
    4dc8:	11000421 	add	w1, w1, #0x1
    4dcc:	b9000341 	str	w1, [x26]
    4dd0:	17ffffb3 	b	4c9c <myavx_partition_end+0x80>
    4dd4:	b9400341 	ldr	w1, [x26]
    4dd8:	11000421 	add	w1, w1, #0x1
    4ddc:	b9000341 	str	w1, [x26]
    4de0:	17ffffbc 	b	4cd0 <myavx_partition_end+0xb4>
    4de4:	b9400341 	ldr	w1, [x26]
    4de8:	2a1c03e2 	mov	w2, w28
    4dec:	11000421 	add	w1, w1, #0x1
    4df0:	b9000341 	str	w1, [x26]
    4df4:	17ffffc5 	b	4d08 <myavx_partition_end+0xec>
    4df8:	b9400341 	ldr	w1, [x26]
    4dfc:	2a0203e5 	mov	w5, w2
    4e00:	11000421 	add	w1, w1, #0x1
    4e04:	b9000341 	str	w1, [x26]
    4e08:	17ffffce 	b	4d40 <myavx_partition_end+0x124>
    4e0c:	54000169 	b.ls	4e38 <myavx_partition_end+0x21c>  // b.plast
    4e10:	b83bdb20 	str	w0, [x25, w27, sxtw #2]
    4e14:	b9400341 	ldr	w1, [x26]
    4e18:	17ffff75 	b	4bec <Block_MyAvx_end+0x284>
    4e1c:	52800000 	mov	w0, #0x0                   	// #0
    4e20:	5280001c 	mov	w28, #0x0                   	// #0
    4e24:	17ffff54 	b	4b74 <Block_MyAvx_end+0x20c>
    4e28:	2a0503fc 	mov	w28, w5
    4e2c:	b83bdb21 	str	w1, [x25, w27, sxtw #2]
    4e30:	5100077b 	sub	w27, w27, #0x1
    4e34:	17ffffcf 	b	4d70 <myavx_partition_end+0x154>
    4e38:	b9400341 	ldr	w1, [x26]
    4e3c:	11000421 	add	w1, w1, #0x1
    4e40:	b9000341 	str	w1, [x26]
    4e44:	17ffff6a 	b	4bec <Block_MyAvx_end+0x284>
    4e48:	b9400341 	ldr	w1, [x26]
    4e4c:	2a0503fc 	mov	w28, w5
    4e50:	17ffff67 	b	4bec <Block_MyAvx_end+0x284>
    4e54:	a91e5bf5 	stp	x21, x22, [sp, #480]
    4e58:	fd0113e8 	str	d8, [sp, #544]
    4e5c:	97fff15d 	bl	13d0 <__stack_chk_fail@plt>

