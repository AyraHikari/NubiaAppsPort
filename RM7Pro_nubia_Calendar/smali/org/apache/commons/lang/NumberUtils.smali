.class public final Lorg/apache/commons/lang/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static compare(DD)I
    .locals 8
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 494
    cmpg-double v6, p0, p2

    if-gez v6, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v4

    .line 497
    :cond_1
    cmpl-double v6, p0, p2

    if-lez v6, :cond_2

    move v4, v5

    .line 498
    goto :goto_0

    .line 504
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 505
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 506
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    .line 507
    const/4 v4, 0x0

    goto :goto_0

    .line 515
    :cond_3
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    move v4, v5

    .line 518
    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 555
    cmpg-float v4, p0, p1

    if-gez v4, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 558
    :cond_1
    cmpl-float v4, p0, p1

    if-lez v4, :cond_2

    move v2, v3

    .line 559
    goto :goto_0

    .line 565
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 566
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 567
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_3

    .line 568
    const/4 v2, 0x0

    goto :goto_0

    .line 576
    :cond_3
    if-lt v0, v1, :cond_0

    move v2, v3

    .line 579
    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "bd":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "bi":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_1

    .line 140
    const/4 v6, 0x0

    .line 284
    :cond_0
    :goto_0
    return-object v6

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 143
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "\"\" is not a valid number."

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 146
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 148
    :cond_3
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 153
    const/4 v6, 0x0

    goto :goto_0

    .line 155
    :cond_4
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 156
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 158
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 162
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 163
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 165
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_9

    .line 167
    const/4 v10, -0x1

    if-le v5, v10, :cond_8

    .line 168
    if-ge v5, v3, :cond_7

    .line 169
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 171
    :cond_7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "dec":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "mant":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_13

    .line 185
    const/4 v10, -0x1

    if-le v5, v10, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_b

    .line 186
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "exp":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v0, 0x1

    .line 193
    .local v0, "allZeros":Z
    :goto_4
    sparse-switch v7, :sswitch_data_0

    .line 239
    :goto_5
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 173
    .end local v0    # "allZeros":Z
    .end local v2    # "dec":Ljava/lang/String;
    .end local v4    # "exp":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v2    # "dec":Ljava/lang/String;
    :cond_9
    const/4 v10, -0x1

    if-le v5, v10, :cond_a

    .line 178
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 182
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_2

    .line 180
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_a
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_6

    .line 188
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_3

    .line 192
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 196
    .restart local v0    # "allZeros":Z
    :sswitch_0
    if-nez v2, :cond_f

    if-nez v4, :cond_f

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    :cond_d
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 200
    :cond_e
    :try_start_0
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v10

    .line 204
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 207
    :cond_f
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 211
    :sswitch_1
    :try_start_1
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 212
    .local v6, "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 225
    .end local v6    # "f":Ljava/lang/Float;
    :cond_10
    :goto_7
    :sswitch_2
    :try_start_2
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 226
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    move-object v6, v1

    .line 227
    goto/16 :goto_0

    .line 229
    .end local v1    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v10

    .line 233
    :cond_12
    :try_start_3
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_0

    .line 245
    .end local v0    # "allZeros":Z
    .end local v4    # "exp":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_13
    const/4 v10, -0x1

    if-le v5, v10, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_14

    .line 246
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 250
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_15

    if-nez v4, :cond_15

    .line 253
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 248
    .end local v4    # "exp":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_8

    .line 254
    :catch_2
    move-exception v10

    .line 258
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 259
    :catch_3
    move-exception v10

    .line 262
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 266
    :cond_15
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v0, 0x1

    .line 268
    .restart local v0    # "allZeros":Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 269
    .restart local v6    # "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_16

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 276
    .end local v6    # "f":Ljava/lang/Float;
    :cond_16
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 277
    .restart local v1    # "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_17

    if-eqz v0, :cond_19

    :cond_17
    move-object v6, v1

    .line 278
    goto/16 :goto_0

    .line 266
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    .line 280
    .restart local v0    # "allZeros":Z
    :catch_4
    move-exception v10

    .line 284
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_0

    .line 234
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 272
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_a

    .line 218
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto/16 :goto_7

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    if-nez p0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 305
    goto :goto_0

    .line 303
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 596
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 600
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 621
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v9

    .line 624
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 625
    .local v1, "chars":[C
    array-length v7, v1

    .line 626
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 627
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 628
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 629
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 631
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_5

    move v6, v8

    .line 632
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_7

    .line 633
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_7

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    .line 634
    add-int/lit8 v5, v6, 0x2

    .line 635
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 639
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_6

    .line 640
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_2

    aget-char v10, v1, v5

    if-le v10, v13, :cond_4

    :cond_2
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_3

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_4

    :cond_3
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_0

    .line 639
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_5
    move v6, v9

    .line 631
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_6
    move v9, v8

    .line 646
    goto :goto_0

    .line 649
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 651
    move v5, v6

    .line 654
    .restart local v5    # "i":I
    :goto_3
    if-lt v5, v7, :cond_8

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_e

    if-eqz v0, :cond_e

    if-nez v2, :cond_e

    .line 655
    :cond_8
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_9

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_9

    .line 656
    const/4 v2, 0x1

    .line 657
    const/4 v0, 0x0

    .line 685
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 659
    :cond_9
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_a

    .line 660
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 664
    const/4 v3, 0x1

    goto :goto_4

    .line 665
    :cond_a
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_b

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_c

    .line 667
    :cond_b
    if-nez v4, :cond_0

    .line 671
    if-eqz v2, :cond_0

    .line 674
    const/4 v4, 0x1

    .line 675
    const/4 v0, 0x1

    goto :goto_4

    .line 676
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_d

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_0

    .line 677
    :cond_d
    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 681
    const/4 v2, 0x0

    goto :goto_4

    .line 687
    :cond_e
    array-length v10, v1

    if-ge v5, v10, :cond_14

    .line 688
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_f

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_f

    move v9, v8

    .line 690
    goto/16 :goto_0

    .line 692
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 696
    if-nez v0, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_10

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_11

    :cond_10
    move v9, v2

    .line 701
    goto/16 :goto_0

    .line 703
    :cond_11
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_12

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 706
    :cond_12
    if-eqz v2, :cond_13

    if-nez v4, :cond_13

    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_13
    move v8, v9

    goto :goto_5

    .line 713
    :cond_14
    if-nez v0, :cond_15

    if-eqz v2, :cond_15

    :goto_6
    move v9, v8

    goto/16 :goto_0

    :cond_15
    move v8, v9

    goto :goto_6
.end method

.method public static maximum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 448
    if-le p1, p0, :cond_0

    .line 449
    move p0, p1

    .line 451
    :cond_0
    if-le p2, p0, :cond_1

    .line 452
    move p0, p2

    .line 454
    :cond_1
    return p0
.end method

.method public static maximum(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 430
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 431
    move-wide p0, p2

    .line 433
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 434
    move-wide p0, p4

    .line 436
    :cond_1
    return-wide p0
.end method

.method public static minimum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 412
    if-ge p1, p0, :cond_0

    .line 413
    move p0, p1

    .line 415
    :cond_0
    if-ge p2, p0, :cond_1

    .line 416
    move p0, p2

    .line 418
    :cond_1
    return p0
.end method

.method public static minimum(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 394
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 395
    move-wide p0, p2

    .line 397
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 398
    move-wide p0, p4

    .line 400
    :cond_1
    return-wide p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/NumberUtils;->stringToInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 76
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 75
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
