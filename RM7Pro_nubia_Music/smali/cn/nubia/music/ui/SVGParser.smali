.class public Lcn/nubia/music/ui/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SVGAndroid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doPath(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 24

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    .line 77
    new-instance v21, Lcn/nubia/music/ui/ParserHelper;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/music/ui/ParserHelper;-><init>(Ljava/lang/CharSequence;IF)V

    .line 78
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->skipWhitespace()V

    .line 79
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v4, 0x0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move v6, v4

    move v5, v9

    move v4, v10

    .line 87
    :goto_0
    move-object/from16 v0, v21

    iget v7, v0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    move/from16 v0, v20

    if-ge v7, v0, :cond_c

    .line 88
    move-object/from16 v0, v21

    iget v7, v0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 89
    packed-switch v7, :pswitch_data_0

    .line 113
    :cond_0
    :pswitch_0
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->advance()V

    move/from16 v19, v7

    move v13, v7

    .line 118
    :goto_1
    const/16 v18, 0x0

    .line 119
    sparse-switch v19, :sswitch_data_0

    move/from16 v10, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v5

    move v9, v4

    move v4, v14

    move v5, v15

    .line 250
    :goto_2
    if-nez v10, :cond_1

    move v6, v8

    move v7, v9

    .line 254
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->skipWhitespace()V

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move v6, v13

    move v5, v8

    move v4, v9

    .line 255
    goto :goto_0

    .line 102
    :pswitch_1
    const/16 v8, 0x6d

    if-eq v6, v8, :cond_2

    const/16 v8, 0x4d

    if-ne v6, v8, :cond_3

    .line 103
    :cond_2
    add-int/lit8 v7, v6, -0x1

    int-to-char v7, v7

    move/from16 v19, v7

    move v13, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/16 v8, 0x63

    if-eq v6, v8, :cond_4

    const/16 v8, 0x43

    if-ne v6, v8, :cond_5

    :cond_4
    move/from16 v19, v6

    move v13, v6

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/16 v8, 0x6c

    if-eq v6, v8, :cond_6

    const/16 v8, 0x4c

    if-ne v6, v8, :cond_0

    :cond_6
    move/from16 v19, v6

    move v13, v6

    .line 110
    goto :goto_1

    .line 122
    :sswitch_0
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v7

    .line 123
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    .line 124
    const/16 v8, 0x6d

    move/from16 v0, v19

    if-ne v0, v8, :cond_7

    .line 125
    add-float/2addr v15, v7

    .line 126
    add-float/2addr v14, v6

    .line 127
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 128
    add-float/2addr v4, v7

    .line 129
    add-float/2addr v5, v6

    move/from16 v10, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v5

    move v9, v4

    move v4, v14

    move v5, v15

    goto :goto_2

    .line 133
    :cond_7
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v10, v18

    move v4, v6

    move v5, v7

    move v8, v6

    move v9, v7

    move/from16 v6, v16

    move/from16 v7, v17

    .line 137
    goto :goto_2

    .line 141
    :sswitch_1
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 142
    invoke-virtual {v3, v15, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    const/4 v4, 0x1

    move v10, v4

    move v5, v15

    move v6, v14

    move v7, v15

    move v8, v14

    move v9, v15

    move v4, v14

    .line 148
    goto :goto_2

    .line 152
    :sswitch_2
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v8

    .line 153
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v9

    .line 154
    const/16 v6, 0x6c

    move/from16 v0, v19

    if-ne v0, v6, :cond_8

    .line 155
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 156
    add-float/2addr v4, v8

    .line 157
    add-float/2addr v5, v9

    move/from16 v10, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v5

    move v9, v4

    move v4, v14

    move v5, v15

    goto/16 :goto_2

    .line 159
    :cond_8
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v10, v18

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v22, v9

    move v9, v8

    move/from16 v8, v22

    .line 163
    goto/16 :goto_2

    .line 167
    :sswitch_3
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v8

    .line 168
    const/16 v6, 0x68

    move/from16 v0, v19

    if-ne v0, v6, :cond_9

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 170
    add-float/2addr v4, v8

    move/from16 v10, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v5

    move v9, v4

    move v4, v14

    move v5, v15

    goto/16 :goto_2

    .line 172
    :cond_9
    invoke-virtual {v3, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v10, v18

    move v4, v14

    move/from16 v6, v16

    move/from16 v7, v17

    move v9, v8

    move v8, v5

    move v5, v15

    .line 175
    goto/16 :goto_2

    .line 179
    :sswitch_4
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v9

    .line 180
    const/16 v6, 0x76

    move/from16 v0, v19

    if-ne v0, v6, :cond_a

    .line 181
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 182
    add-float/2addr v5, v9

    move/from16 v10, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v5

    move v9, v4

    move v4, v14

    move v5, v15

    goto/16 :goto_2

    .line 184
    :cond_a
    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v10, v18

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v9

    move v9, v4

    move v4, v14

    .line 187
    goto/16 :goto_2

    .line 191
    :sswitch_5
    const/4 v12, 0x1

    .line 192
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v11

    .line 193
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v10

    .line 194
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    .line 195
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v7

    .line 196
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v8

    .line 197
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v9

    .line 198
    const/16 v16, 0x63

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 199
    add-float/2addr v11, v4

    .line 200
    add-float/2addr v6, v4

    .line 201
    add-float/2addr v8, v4

    .line 202
    add-float v4, v10, v5

    .line 203
    add-float/2addr v7, v5

    .line 204
    add-float/2addr v9, v5

    move v5, v4

    move v4, v11

    .line 206
    :goto_3
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v12

    move v4, v14

    move v5, v15

    move/from16 v22, v7

    move v7, v6

    move/from16 v6, v22

    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    .line 211
    goto/16 :goto_2

    .line 215
    :sswitch_6
    const/4 v10, 0x1

    .line 216
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    .line 217
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v7

    .line 218
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v8

    .line 219
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v9

    .line 220
    const/16 v11, 0x73

    move/from16 v0, v19

    if-ne v0, v11, :cond_b

    .line 221
    add-float/2addr v6, v4

    .line 222
    add-float/2addr v8, v4

    .line 223
    add-float/2addr v7, v5

    .line 224
    add-float/2addr v9, v5

    .line 226
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v4, v11

    sub-float v4, v4, v17

    .line 227
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v5, v11

    sub-float v5, v5, v16

    .line 228
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v4, v14

    move v5, v15

    move/from16 v22, v7

    move v7, v6

    move/from16 v6, v22

    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    .line 233
    goto/16 :goto_2

    .line 237
    :sswitch_7
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v8

    .line 238
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v9

    .line 239
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v10

    .line 240
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    float-to-int v11, v6

    .line 241
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    float-to-int v12, v6

    .line 242
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v6

    .line 243
    invoke-virtual/range {v21 .. v21}, Lcn/nubia/music/ui/ParserHelper;->nextFloat()F

    move-result v7

    .line 244
    invoke-static/range {v3 .. v12}, Lcn/nubia/music/ui/SVGParser;->drawArc(Landroid/graphics/Path;FFFFFFFII)V

    move/from16 v10, v18

    move v4, v14

    move v5, v15

    move v8, v7

    move v9, v6

    move/from16 v6, v16

    move/from16 v7, v17

    .line 247
    goto/16 :goto_2

    .line 256
    :cond_c
    return-object v3

    :cond_d
    move v5, v10

    move v4, v11

    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x53 -> :sswitch_6
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x73 -> :sswitch_6
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFII)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public static parsePath(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcn/nubia/music/ui/SVGParser;->doPath(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
