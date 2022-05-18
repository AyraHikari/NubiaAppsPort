.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 53
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 62
    new-array v4, v11, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 66
    const/16 v4, 0xa

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v4, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_8

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v11

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 85
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 86
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 88
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 89
    .local v3, "widths":[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 90
    .local v2, "reversedWidths":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 91
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "j":I
    .end local v2    # "reversedWidths":[I
    .end local v3    # "widths":[I
    :cond_1
    return-void

    .line 53
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 62
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 103
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 104
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 105
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 265
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 269
    .local v0, "check":I
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 7
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .param p3, "patterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 364
    const v1, 0x3ef5c28f    # 0.48f

    .line 365
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 366
    .local v0, "bestMatch":I
    array-length v3, p3

    .line 367
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 368
    aget-object v4, p3, v2

    .line 369
    .local v4, "pattern":[I
    const v6, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 370
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 371
    move v1, v5

    .line 372
    move v0, v2

    .line 367
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1
    if-ltz v0, :cond_2

    .line 376
    return v0

    .line 378
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 1
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .param p4, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 321
    .local v4, "width":I
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 322
    :goto_0
    const/4 v0, 0x0

    .line 323
    .local v0, "counterPosition":I
    move v3, p1

    .line 324
    .local v3, "patternStart":I
    array-length v2, p3

    .line 325
    .local v2, "patternLength":I
    move v1, p2

    .line 326
    .local v1, "isWhite":Z
    move v5, p1

    .local v5, "x":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 327
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eq v8, v1, :cond_1

    .line 328
    aget v8, p4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v0

    .line 326
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "counterPosition":I
    .end local v1    # "isWhite":Z
    .end local v2    # "patternLength":I
    .end local v3    # "patternStart":I
    .end local v5    # "x":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    goto :goto_0

    .line 330
    .restart local v0    # "counterPosition":I
    .restart local v1    # "isWhite":Z
    .restart local v2    # "patternLength":I
    .restart local v3    # "patternStart":I
    .restart local v5    # "x":I
    :cond_1
    add-int/lit8 v8, v2, -0x1

    if-ne v0, v8, :cond_3

    .line 331
    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 332
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    .line 334
    :cond_2
    aget v8, p4, v7

    aget v9, p4, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 335
    add-int/lit8 v8, v0, -0x1

    invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    add-int/lit8 v8, v0, -0x1

    aput v7, p4, v8

    .line 337
    aput v7, p4, v0

    .line 338
    add-int/lit8 v0, v0, -0x1

    .line 342
    :goto_3
    aput v6, p4, v0

    .line 343
    if-nez v1, :cond_4

    move v1, v6

    :goto_4
    goto :goto_2

    .line 340
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v7

    .line 343
    goto :goto_4

    .line 346
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "foundStart":Z
    const/4 v5, 0x0

    .line 110
    .local v5, "startRange":[I
    const/4 v2, 0x0

    .line 111
    .local v2, "nextStart":I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    new-array v0, v6, [I

    .line 112
    .local v0, "counters":[I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 113
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 114
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v5

    .line 115
    aget v4, v5, v7

    .line 116
    .local v4, "start":I
    const/4 v6, 0x1

    aget v2, v5, v6

    .line 120
    sub-int v6, v2, v4

    sub-int v3, v4, v6

    .line 121
    .local v3, "quietStart":I
    if-ltz v3, :cond_0

    .line 122
    invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v1

    goto :goto_0

    .line 125
    .end local v3    # "quietStart":I
    .end local v4    # "start":I
    :cond_1
    return-object v5
.end method

.method static getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 273
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 274
    .local v2, "length":I
    const/4 v3, 0x0

    .line 275
    .local v3, "sum":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 276
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    .line 277
    .local v0, "digit":I
    if-ltz v0, :cond_0

    if-le v0, v5, :cond_1

    .line 278
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 280
    :cond_1
    add-int/2addr v3, v0

    .line 275
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 282
    .end local v0    # "digit":I
    :cond_2
    mul-int/lit8 v3, v3, 0x3

    .line 283
    add-int/lit8 v1, v2, -0x2

    :goto_1
    if-ltz v1, :cond_5

    .line 284
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    .line 285
    .restart local v0    # "digit":I
    if-ltz v0, :cond_3

    if-le v0, v5, :cond_4

    .line 286
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 288
    :cond_4
    add-int/2addr v3, v0

    .line 283
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 290
    .end local v0    # "digit":I
    :cond_5
    rsub-int v4, v3, 0x3e8

    rem-int/lit8 v4, v4, 0xa

    return v4
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 131
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "startGuardRange"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 154
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p4, :cond_4

    const/16 v17, 0x0

    .line 157
    .local v17, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v17, :cond_0

    .line 158
    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, p3, v22

    const/16 v23, 0x1

    aget v23, p3, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 163
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .line 164
    .local v16, "result":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v9

    .line 167
    .local v9, "endStart":I
    if-eqz v17, :cond_1

    .line 168
    new-instance v21, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 173
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v8

    .line 175
    .local v8, "endRange":[I
    if-eqz v17, :cond_2

    .line 176
    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, v8, v22

    const/16 v23, 0x1

    aget v23, v8, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 184
    :cond_2
    const/16 v21, 0x1

    aget v7, v8, v21

    .line 185
    .local v7, "end":I
    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v21, v7, v21

    add-int v15, v7, v21

    .line 186
    .local v15, "quietEnd":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_3

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v7, v15, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v21

    if-nez v21, :cond_5

    .line 187
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 154
    .end local v7    # "end":I
    .end local v8    # "endRange":[I
    .end local v9    # "endStart":I
    .end local v15    # "quietEnd":I
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .end local v17    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_4
    sget-object v21, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 155
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v17, v21

    goto/16 :goto_0

    .line 190
    .restart local v7    # "end":I
    .restart local v8    # "endRange":[I
    .restart local v9    # "endStart":I
    .restart local v15    # "quietEnd":I
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 192
    .local v18, "resultString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 193
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    .line 195
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 196
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v21

    throw v21

    .line 199
    :cond_7
    const/16 v21, 0x1

    aget v21, p3, v21

    const/16 v22, 0x0

    aget v22, p3, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v13, v21, v22

    .line 200
    .local v13, "left":F
    const/16 v21, 0x1

    aget v21, v8, v21

    const/16 v22, 0x0

    aget v22, v8, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v21, v22

    .line 201
    .local v19, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v12

    .line 202
    .local v12, "format":Lcom/google/zxing/BarcodeFormat;
    new-instance v6, Lcom/google/zxing/Result;

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 209
    .local v6, "decodeResult":Lcom/google/zxing/Result;
    const/4 v10, 0x0

    .line 212
    .local v10, "extensionLength":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v8, v22

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v11

    .line 213
    .local v11, "extensionResult":Lcom/google/zxing/Result;
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 215
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 216
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 221
    .end local v11    # "extensionResult":Lcom/google/zxing/Result;
    :goto_1
    if-nez p4, :cond_9

    const/4 v4, 0x0

    .line 223
    .local v4, "allowedExtensions":[I
    :goto_2
    if-eqz v4, :cond_b

    .line 224
    const/16 v20, 0x0

    .line 225
    .local v20, "valid":Z
    array-length v0, v4

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget v14, v4, v21

    .line 226
    .local v14, "length":I
    if-ne v10, v14, :cond_a

    .line 227
    const/16 v20, 0x1

    .line 231
    .end local v14    # "length":I
    :cond_8
    if-nez v20, :cond_b

    .line 232
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 221
    .end local v4    # "allowedExtensions":[I
    .end local v20    # "valid":Z
    :cond_9
    sget-object v21, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 222
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    check-cast v21, [I

    move-object/from16 v4, v21

    goto :goto_2

    .line 225
    .restart local v4    # "allowedExtensions":[I
    .restart local v14    # "length":I
    .restart local v20    # "valid":Z
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 236
    .end local v14    # "length":I
    .end local v20    # "valid":Z
    :cond_b
    sget-object v21, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_c

    sget-object v21, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_d

    .line 237
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "countryID":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 239
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 243
    .end local v5    # "countryID":Ljava/lang/String;
    :cond_d
    return-object v6

    .end local v4    # "allowedExtensions":[I
    :catch_0
    move-exception v21

    goto :goto_1
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
