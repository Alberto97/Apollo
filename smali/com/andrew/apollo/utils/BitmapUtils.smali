.class public final Lcom/andrew/apollo/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static final createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 42
    .parameter "sentBitmap"

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v2, 0x0

    .line 264
    :goto_0
    return-object v2

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 76
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 78
    .local v9, h:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 79
    .local v3, pix:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 81
    add-int/lit8 v36, v5, -0x1

    .line 82
    .local v36, wm:I
    add-int/lit8 v21, v9, -0x1

    .line 83
    .local v21, hm:I
    mul-int v35, v5, v9

    .line 84
    .local v35, wh:I
    const/16 v14, 0x11

    .line 86
    .local v14, div:I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 87
    .local v24, r:[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 88
    .local v17, g:[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 89
    .local v10, b:[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 92
    .local v34, vmin:[I
    const/16 v15, 0x9

    .line 93
    .local v15, divsum:I
    mul-int/2addr v15, v15

    .line 94
    const/16 v4, 0x5100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 95
    .local v16, dv:[I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    const/16 v4, 0x5100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 96
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 95
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 99
    :cond_1
    const/16 v39, 0x0

    .local v39, yi:I
    move/from16 v41, v39

    .line 101
    .local v41, yw:I
    const/16 v4, 0x11

    const/4 v6, 0x3

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 106
    .local v31, stack:[[I
    const/16 v25, 0x9

    .line 110
    .local v25, r1:I
    const/16 v38, 0x0

    .local v38, y:I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 111
    const/4 v13, 0x0

    .local v13, bsum:I
    move/from16 v20, v13

    .local v20, gsum:I
    move/from16 v29, v13

    .local v29, rsum:I
    move v12, v13

    .local v12, boutsum:I
    move/from16 v19, v13

    .local v19, goutsum:I
    move/from16 v28, v13

    .local v28, routsum:I
    move v11, v13

    .local v11, binsum:I
    move/from16 v18, v13

    .local v18, ginsum:I
    move/from16 v27, v13

    .line 112
    .local v27, rinsum:I
    const/16 v22, -0x8

    :goto_3
    const/16 v4, 0x8

    move/from16 v0, v22

    if-gt v0, v4, :cond_3

    .line 113
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 114
    .local v23, p:I
    add-int/lit8 v4, v22, 0x8

    aget-object v30, v31, v4

    .line 115
    .local v30, sir:[I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 116
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 117
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 118
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rsub-int/lit8 v26, v4, 0x9

    .line 119
    .local v26, rbs:I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 120
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 121
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 122
    if-lez v22, :cond_2

    .line 123
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 124
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 125
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 112
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 127
    :cond_2
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 128
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 129
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 132
    .end local v23           #p:I
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_3
    const/16 v32, 0x8

    .line 134
    .local v32, stackpointer:I
    const/16 v37, 0x0

    .local v37, x:I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 136
    aget v4, v16, v29

    aput v4, v24, v39

    .line 137
    aget v4, v16, v20

    aput v4, v17, v39

    .line 138
    aget v4, v16, v13

    aput v4, v10, v39

    .line 140
    sub-int v29, v29, v28

    .line 141
    sub-int v20, v20, v19

    .line 142
    sub-int/2addr v13, v12

    .line 144
    add-int/lit8 v4, v32, -0x8

    add-int/lit8 v33, v4, 0x11

    .line 145
    .local v33, stackstart:I
    rem-int/lit8 v4, v33, 0x11

    aget-object v30, v31, v4

    .line 147
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 148
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 149
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 151
    if-nez v38, :cond_4

    .line 152
    add-int/lit8 v4, v37, 0x8

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 154
    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 156
    .restart local v23       #p:I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 157
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 158
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 160
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 161
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 162
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 164
    add-int v29, v29, v27

    .line 165
    add-int v20, v20, v18

    .line 166
    add-int/2addr v13, v11

    .line 168
    add-int/lit8 v4, v32, 0x1

    rem-int/lit8 v32, v4, 0x11

    .line 169
    rem-int/lit8 v4, v32, 0x11

    aget-object v30, v31, v4

    .line 171
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 172
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 173
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 175
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 176
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 177
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 179
    add-int/lit8 v39, v39, 0x1

    .line 134
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 181
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_5
    add-int v41, v41, v5

    .line 110
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 183
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v37           #x:I
    :cond_6
    const/16 v37, 0x0

    .restart local v37       #x:I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 184
    const/4 v13, 0x0

    .restart local v13       #bsum:I
    move/from16 v20, v13

    .restart local v20       #gsum:I
    move/from16 v29, v13

    .restart local v29       #rsum:I
    move v12, v13

    .restart local v12       #boutsum:I
    move/from16 v19, v13

    .restart local v19       #goutsum:I
    move/from16 v28, v13

    .restart local v28       #routsum:I
    move v11, v13

    .restart local v11       #binsum:I
    move/from16 v18, v13

    .restart local v18       #ginsum:I
    move/from16 v27, v13

    .line 185
    .restart local v27       #rinsum:I
    mul-int/lit8 v40, v5, -0x8

    .line 186
    .local v40, yp:I
    const/16 v22, -0x8

    :goto_7
    const/16 v4, 0x8

    move/from16 v0, v22

    if-gt v0, v4, :cond_9

    .line 187
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 189
    add-int/lit8 v4, v22, 0x8

    aget-object v30, v31, v4

    .line 191
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 192
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 193
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 195
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rsub-int/lit8 v26, v4, 0x9

    .line 197
    .restart local v26       #rbs:I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 198
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 199
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 201
    if-lez v22, :cond_8

    .line 202
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 203
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 204
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 211
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 212
    add-int v40, v40, v5

    .line 186
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 206
    :cond_8
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 207
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 208
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 215
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_9
    move/from16 v39, v37

    .line 216
    const/16 v32, 0x8

    .line 217
    .restart local v32       #stackpointer:I
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 218
    const/high16 v4, -0x100

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 220
    sub-int v29, v29, v28

    .line 221
    sub-int v20, v20, v19

    .line 222
    sub-int/2addr v13, v12

    .line 224
    add-int/lit8 v4, v32, -0x8

    add-int/lit8 v33, v4, 0x11

    .line 225
    .restart local v33       #stackstart:I
    rem-int/lit8 v4, v33, 0x11

    aget-object v30, v31, v4

    .line 227
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 228
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 229
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 231
    if-nez v37, :cond_a

    .line 232
    add-int/lit8 v4, v38, 0x9

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 234
    :cond_a
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 236
    .restart local v23       #p:I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 237
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 238
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 240
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 241
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 242
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 244
    add-int v29, v29, v27

    .line 245
    add-int v20, v20, v18

    .line 246
    add-int/2addr v13, v11

    .line 248
    add-int/lit8 v4, v32, 0x1

    rem-int/lit8 v32, v4, 0x11

    .line 249
    aget-object v30, v31, v32

    .line 251
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 252
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 253
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 255
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 256
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 257
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 259
    add-int v39, v39, v5

    .line 217
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 183
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 263
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v40           #yp:I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static final resizeAndCropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "size"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 278
    .local v7, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 279
    .local v0, h:I
    if-ne v7, p1, :cond_0

    if-ne v0, p1, :cond_0

    .line 293
    .end local p0
    :goto_0
    return-object p0

    .line 283
    .restart local p0
    :cond_0
    int-to-float v8, p1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 285
    .local v3, mScale:F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 286
    .local v4, mTarget:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 287
    .local v5, mWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 288
    .local v2, mHeight:I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    .local v1, mCanvas:Landroid/graphics/Canvas;
    sub-int v8, p1, v5

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 290
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 291
    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 292
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p0, v10, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v4

    .line 293
    goto :goto_0
.end method
