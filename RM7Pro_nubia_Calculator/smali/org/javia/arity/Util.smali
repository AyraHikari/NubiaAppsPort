.class public Lorg/javia/arity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final FLOAT_PRECISION:I = -0x1

.field public static final LEN_UNLIMITED:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;
    .locals 7

    .line 182
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 183
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, p1, p2}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "NaN"

    return-object p0

    .line 190
    :cond_1
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    .line 191
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_2

    move-wide v0, v2

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_3

    move-wide v4, v2

    :cond_3
    :goto_0
    cmpl-double p0, v4, v2

    if-nez p0, :cond_4

    .line 199
    invoke-static {v0, v1, p1, p2}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    cmpl-double p0, v0, v2

    const/4 v6, 0x0

    if-eqz p0, :cond_5

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v6

    :goto_1
    if-nez p0, :cond_6

    const-string p0, ""

    goto :goto_2

    .line 204
    :cond_6
    invoke-static {v0, v1, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object p0

    .line 205
    :goto_2
    invoke-static {v4, v5, p2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "*"

    goto :goto_3

    :cond_7
    const-string v0, ""

    :goto_3
    const-string v1, "1"

    .line 208
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p2, ""

    :cond_8
    const-string v1, "-1"

    .line 211
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p2, "-"

    :cond_9
    const/16 v1, 0x64

    if-eq p1, v1, :cond_e

    add-int/lit8 p1, p1, -0x1

    if-eqz v2, :cond_a

    add-int/lit8 p1, p1, -0x1

    .line 220
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p1, v1

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v1, v3

    sub-int/2addr v4, p1

    if-lez v4, :cond_e

    sub-int v5, v1, v3

    .line 226
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_b

    sub-int v6, v4, v5

    .line 227
    div-int/lit8 v6, v6, 0x2

    .line 228
    :cond_b
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v6

    if-le v1, v3, :cond_c

    sub-int/2addr v1, v4

    sub-int/2addr v3, v6

    goto :goto_4

    :cond_c
    sub-int/2addr v1, v6

    sub-int/2addr v3, v4

    :goto_4
    add-int v4, v1, v3

    if-le v4, p1, :cond_d

    add-int/lit8 v3, v3, -0x1

    .line 241
    :cond_d
    invoke-static {p0, v1}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {p2, v3}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 245
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_f

    const-string p0, "+"

    goto :goto_5

    :cond_f
    const-string p0, ""

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x69

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static doubleToString(DI)Ljava/lang/String;
    .locals 12

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    double-to-float v0, v0

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_2

    const/16 v3, 0xd

    if-le p2, v3, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    goto :goto_2

    :cond_2
    :goto_1
    const/16 p2, 0x11

    :goto_2
    const/16 v3, 0x45

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v2, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v5

    :goto_3
    if-eq v4, v2, :cond_4

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 97
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move v6, v5

    :goto_4
    const/16 v7, 0x2e

    if-ge v6, v4, :cond_5

    .line 101
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v6

    if-ge v6, v4, :cond_6

    .line 106
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, -0x1

    :cond_6
    move v6, p2

    move p2, v5

    :goto_5
    const/16 v8, 0x30

    if-ge p2, v4, :cond_7

    .line 111
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x1

    if-ge v6, v4, :cond_b

    .line 116
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x35

    if-lt v9, v10, :cond_a

    add-int/lit8 v9, v6, -0x1

    :goto_6
    if-ltz v9, :cond_8

    .line 118
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_8

    .line 119
    invoke-virtual {v1, v9, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_8
    if-ltz v9, :cond_9

    .line 122
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    add-int/2addr v10, p2

    int-to-char v10, v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_7

    :cond_9
    const/16 v9, 0x31

    .line 124
    invoke-virtual {v1, v5, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_a
    :goto_7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_b
    const/4 v6, -0x5

    if-lt v0, v6, :cond_10

    const/16 v6, 0xa

    if-le v0, v6, :cond_c

    goto :goto_a

    :cond_c
    :goto_8
    if-ge v4, v0, :cond_d

    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    move v2, v0

    :goto_9
    if-gtz v2, :cond_e

    .line 141
    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    if-gtz v0, :cond_f

    move v0, p2

    .line 143
    :cond_f
    invoke-virtual {v1, v0, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v0, v5

    goto :goto_b

    .line 134
    :cond_10
    :goto_a
    invoke-virtual {v1, p2, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/2addr v0, v2

    .line 146
    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_c
    if-ltz v2, :cond_11

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v8, :cond_11

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_11
    if-ltz v2, :cond_12

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v7, :cond_12

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_12
    if-eqz v0, :cond_13

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_13
    const-wide/16 v2, 0x0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_14

    const/16 p0, 0x2d

    .line 161
    invoke-virtual {v1, v5, p0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 163
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static doubleToString(DII)Ljava/lang/String;
    .locals 0

    .line 172
    invoke-static {p0, p1, p3}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortApprox(DD)D
    .locals 4

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result p2

    invoke-static {p2}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide p2

    div-double/2addr v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    const-wide/16 p2, 0x0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method static sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x45

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 56
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int v4, p1, v4

    .line 59
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_7

    const/4 v7, 0x2

    const/16 v8, 0x2d

    const/4 v9, 0x0

    if-ge v4, v7, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_2

    goto :goto_3

    :cond_2
    const/16 v7, 0x2e

    .line 63
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v2, :cond_3

    move v10, v5

    :cond_3
    if-le v10, v4, :cond_6

    if-eq v1, v2, :cond_4

    add-int/2addr v1, v6

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v9

    .line 69
    :goto_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v9

    :goto_2
    sub-int/2addr v10, v2

    sub-int/2addr v10, v6

    add-int/2addr v1, v10

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v2, v6

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0, p1}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object p0
.end method
