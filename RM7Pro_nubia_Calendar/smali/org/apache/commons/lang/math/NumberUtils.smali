.class public Lorg/apache/commons/lang/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 55
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v5}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 57
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 59
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v4}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v5}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 65
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 67
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 69
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 71
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 73
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 75
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static compare(DD)I
    .locals 8
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1363
    cmpg-double v6, p0, p2

    if-gez v6, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return v4

    .line 1366
    :cond_1
    cmpl-double v6, p0, p2

    if-lez v6, :cond_2

    move v4, v5

    .line 1367
    goto :goto_0

    .line 1373
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1374
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1375
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    .line 1376
    const/4 v4, 0x0

    goto :goto_0

    .line 1384
    :cond_3
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    move v4, v5

    .line 1387
    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1424
    cmpg-float v4, p0, p1

    if-gez v4, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v2

    .line 1427
    :cond_1
    cmpl-float v4, p0, p1

    if-lez v4, :cond_2

    move v2, v3

    .line 1428
    goto :goto_0

    .line 1434
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1435
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1436
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_3

    .line 1437
    const/4 v2, 0x0

    goto :goto_0

    .line 1445
    :cond_3
    if-lt v0, v1, :cond_0

    move v2, v3

    .line 1448
    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 761
    if-nez p0, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 768
    :goto_0
    return-object v0

    .line 765
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 745
    if-nez p0, :cond_0

    .line 746
    const/4 v0, 0x0

    .line 748
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 695
    if-nez p0, :cond_0

    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 679
    if-nez p0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 712
    if-nez p0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 729
    if-nez p0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p0, :cond_1

    .line 498
    const/4 v6, 0x0

    .line 642
    :cond_0
    :goto_0
    return-object v6

    .line 500
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 501
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "A blank string is not a valid number"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 503
    :cond_2
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 508
    const/4 v6, 0x0

    goto :goto_0

    .line 510
    :cond_3
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 511
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 513
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 517
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 518
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 520
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_9

    .line 522
    const/4 v10, -0x1

    if-le v5, v10, :cond_8

    .line 523
    if-lt v5, v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_7

    .line 524
    :cond_6
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

    .line 526
    :cond_7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "dec":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "mant":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_14

    const/16 v10, 0x2e

    if-eq v7, v10, :cond_14

    .line 543
    const/4 v10, -0x1

    if-le v5, v10, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_c

    .line 544
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "exp":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 550
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v0, 0x1

    .line 551
    .local v0, "allZeros":Z
    :goto_4
    sparse-switch v7, :sswitch_data_0

    .line 597
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

    .line 528
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

    .line 532
    .end local v2    # "dec":Ljava/lang/String;
    :cond_9
    const/4 v10, -0x1

    if-le v5, v10, :cond_b

    .line 533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_a

    .line 534
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

    .line 536
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 540
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto/16 :goto_2

    .line 538
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_b
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_6

    .line 546
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_3

    .line 550
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 554
    .restart local v0    # "allZeros":Z
    :sswitch_0
    if-nez v2, :cond_10

    if-nez v4, :cond_10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_e
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 558
    :cond_f
    :try_start_0
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 559
    :catch_0
    move-exception v10

    .line 562
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 565
    :cond_10
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

    .line 569
    :sswitch_1
    :try_start_1
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 570
    .local v6, "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 583
    .end local v6    # "f":Ljava/lang/Float;
    :cond_11
    :goto_7
    :sswitch_2
    :try_start_2
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 584
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    move-object v6, v1

    .line 585
    goto/16 :goto_0

    .line 587
    .end local v1    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v10

    .line 591
    :cond_13
    :try_start_3
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_0

    .line 603
    .end local v0    # "allZeros":Z
    .end local v4    # "exp":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_14
    const/4 v10, -0x1

    if-le v5, v10, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_15

    .line 604
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 608
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_16

    if-nez v4, :cond_16

    .line 611
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    goto/16 :goto_0

    .line 606
    .end local v4    # "exp":Ljava/lang/String;
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_8

    .line 612
    :catch_2
    move-exception v10

    .line 616
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 617
    :catch_3
    move-exception v10

    .line 620
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0

    .line 624
    :cond_16
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v0, 0x1

    .line 626
    .restart local v0    # "allZeros":Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 627
    .restart local v6    # "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    if-nez v0, :cond_0

    .line 634
    .end local v6    # "f":Ljava/lang/Float;
    :cond_17
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 635
    .restart local v1    # "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_18

    if-eqz v0, :cond_1a

    :cond_18
    move-object v6, v1

    .line 636
    goto/16 :goto_0

    .line 624
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    .line 638
    .restart local v0    # "allZeros":Z
    :catch_4
    move-exception v10

    .line 642
    :cond_1a
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_0

    .line 592
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 630
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_6
    move-exception v10

    goto :goto_a

    .line 576
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_7
    move-exception v10

    goto/16 :goto_7

    .line 551
    nop

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
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    if-nez p0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v1

    .line 660
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 661
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 662
    goto :goto_0

    .line 660
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 665
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

    .line 1464
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return v1

    .line 1467
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1468
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1472
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

    .line 1489
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return v9

    .line 1492
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1493
    .local v1, "chars":[C
    array-length v7, v1

    .line 1494
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1495
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1496
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1497
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1499
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_5

    move v6, v8

    .line 1500
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_7

    .line 1501
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_7

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    .line 1502
    add-int/lit8 v5, v6, 0x2

    .line 1503
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 1507
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_6

    .line 1508
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

    .line 1507
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_5
    move v6, v9

    .line 1499
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_6
    move v9, v8

    .line 1514
    goto :goto_0

    .line 1517
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 1519
    move v5, v6

    .line 1522
    .restart local v5    # "i":I
    :goto_3
    if-lt v5, v7, :cond_8

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_e

    if-eqz v0, :cond_e

    if-nez v2, :cond_e

    .line 1523
    :cond_8
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_9

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_9

    .line 1524
    const/4 v2, 0x1

    .line 1525
    const/4 v0, 0x0

    .line 1553
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1527
    :cond_9
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_a

    .line 1528
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 1532
    const/4 v3, 0x1

    goto :goto_4

    .line 1533
    :cond_a
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_b

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_c

    .line 1535
    :cond_b
    if-nez v4, :cond_0

    .line 1539
    if-eqz v2, :cond_0

    .line 1542
    const/4 v4, 0x1

    .line 1543
    const/4 v0, 0x1

    goto :goto_4

    .line 1544
    :cond_c
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_d

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_0

    .line 1545
    :cond_d
    if-eqz v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1549
    const/4 v2, 0x0

    goto :goto_4

    .line 1555
    :cond_e
    array-length v10, v1

    if-ge v5, v10, :cond_15

    .line 1556
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_f

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_f

    move v9, v8

    .line 1558
    goto/16 :goto_0

    .line 1560
    :cond_f
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 1564
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_10

    .line 1565
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    move v9, v2

    .line 1570
    goto/16 :goto_0

    .line 1572
    :cond_10
    if-nez v0, :cond_12

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_12

    :cond_11
    move v9, v2

    .line 1577
    goto/16 :goto_0

    .line 1579
    :cond_12
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_13

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 1582
    :cond_13
    if-eqz v2, :cond_14

    if-nez v4, :cond_14

    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_14
    move v8, v9

    goto :goto_5

    .line 1589
    :cond_15
    if-nez v0, :cond_16

    if-eqz v2, :cond_16

    :goto_6
    move v9, v8

    goto/16 :goto_0

    :cond_16
    move v8, v9

    goto :goto_6
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1286
    if-le p1, p0, :cond_0

    .line 1287
    move p0, p1

    .line 1289
    :cond_0
    if-le p2, p0, :cond_1

    .line 1290
    move p0, p2

    .line 1292
    :cond_1
    return p0
.end method

.method public static max([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 1036
    if-nez p0, :cond_0

    .line 1037
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1039
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1044
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1045
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_2

    .line 1046
    aget-byte v1, p0, v0

    .line 1044
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    :cond_3
    return v1
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1308
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1064
    if-nez p0, :cond_0

    .line 1065
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 1067
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1072
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1073
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1074
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1081
    .end local v2    # "max":D
    :cond_2
    return-wide v2

    .line 1076
    .restart local v2    # "max":D
    :cond_3
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_4

    .line 1077
    aget-wide v2, p0, v0

    .line 1072
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1324
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 1095
    if-nez p0, :cond_0

    .line 1096
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1097
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1098
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1103
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1104
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1105
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1112
    .end local v1    # "max":F
    :cond_2
    return v1

    .line 1107
    .restart local v1    # "max":F
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1108
    aget v1, p0, v0

    .line 1103
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1250
    if-le p1, p0, :cond_0

    .line 1251
    move p0, p1

    .line 1253
    :cond_0
    if-le p2, p0, :cond_1

    .line 1254
    move p0, p2

    .line 1256
    :cond_1
    return p0
.end method

.method public static max([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 982
    if-nez p0, :cond_0

    .line 983
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 984
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 985
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 990
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 991
    aget v2, p0, v0

    if-le v2, v1, :cond_2

    .line 992
    aget v1, p0, v0

    .line 990
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_3
    return v1
.end method

.method public static max(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1232
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1233
    move-wide p0, p2

    .line 1235
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1236
    move-wide p0, p4

    .line 1238
    :cond_1
    return-wide p0
.end method

.method public static max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 955
    if-nez p0, :cond_0

    .line 956
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 958
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 963
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 964
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 965
    aget-wide v2, p0, v0

    .line 963
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_3
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1268
    if-le p1, p0, :cond_0

    .line 1269
    move p0, p1

    .line 1271
    :cond_0
    if-le p2, p0, :cond_1

    .line 1272
    move p0, p2

    .line 1274
    :cond_1
    return p0
.end method

.method public static max([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 1009
    if-nez p0, :cond_0

    .line 1010
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1012
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1017
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1018
    aget-short v2, p0, v0

    if-le v2, v1, :cond_2

    .line 1019
    aget-short v1, p0, v0

    .line 1017
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    :cond_3
    return v1
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1180
    if-ge p1, p0, :cond_0

    .line 1181
    move p0, p1

    .line 1183
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1184
    move p0, p2

    .line 1186
    :cond_1
    return p0
.end method

.method public static min([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 864
    if-nez p0, :cond_0

    .line 865
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 867
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 871
    :cond_1
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 872
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 873
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 874
    aget-byte v1, p0, v0

    .line 872
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_3
    return v1
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1202
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 892
    if-nez p0, :cond_0

    .line 893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 900
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 901
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 909
    .end local v2    # "min":D
    :cond_2
    return-wide v2

    .line 904
    .restart local v2    # "min":D
    :cond_3
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_4

    .line 905
    aget-wide v2, p0, v0

    .line 900
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1218
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 923
    if-nez p0, :cond_0

    .line 924
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 926
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 931
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 932
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 940
    .end local v1    # "min":F
    :cond_2
    return v1

    .line 935
    .restart local v1    # "min":F
    :cond_3
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 936
    aget v1, p0, v0

    .line 931
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1144
    if-ge p1, p0, :cond_0

    .line 1145
    move p0, p1

    .line 1147
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1148
    move p0, p2

    .line 1150
    :cond_1
    return p0
.end method

.method public static min([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 810
    if-nez p0, :cond_0

    .line 811
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 812
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 813
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_1
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 818
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 819
    aget v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 820
    aget v1, p0, v0

    .line 818
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_3
    return v1
.end method

.method public static min(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1126
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1127
    move-wide p0, p2

    .line 1129
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1130
    move-wide p0, p4

    .line 1132
    :cond_1
    return-wide p0
.end method

.method public static min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 783
    if-nez p0, :cond_0

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 786
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 791
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 792
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 793
    aget-wide v2, p0, v0

    .line 791
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_3
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1162
    if-ge p1, p0, :cond_0

    .line 1163
    move p0, p1

    .line 1165
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1166
    move p0, p2

    .line 1168
    :cond_1
    return p0
.end method

.method public static min([S)S
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 837
    if-nez p0, :cond_0

    .line 838
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 839
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_1
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 845
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 846
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 847
    aget-short v1, p0, v0

    .line 845
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_3
    return v1
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 151
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 381
    .end local p1    # "defaultValue":B
    :goto_0
    return p1

    .line 379
    .restart local p1    # "defaultValue":B
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 325
    if-nez p0, :cond_0

    .line 331
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 329
    .restart local p1    # "defaultValue":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 279
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 277
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 178
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 176
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 227
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 225
    .restart local p1    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 424
    if-nez p0, :cond_0

    .line 430
    .end local p1    # "defaultValue":S
    :goto_0
    return p1

    .line 428
    .restart local p1    # "defaultValue":S
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
