.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 429
    .local v3, "len":I
    move v2, p1

    .line 430
    .local v2, "idx":I
    if-ge p1, v3, :cond_1

    .line 431
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "ch":C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 434
    add-int/lit8 v2, v2, 0x1

    .line 435
    if-ge v2, v3, :cond_0

    .line 436
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 440
    .end local v0    # "ch":C
    :cond_1
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;

    .prologue
    const/16 v11, 0x81

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 161
    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v6, v3, v9

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v10

    .line 166
    .local v3, "encoders":[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 168
    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 170
    const-string v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 173
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v6, v6, 0x7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 180
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 181
    .local v4, "encodingMode":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 183
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v6

    if-ltz v6, :cond_1

    .line 184
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    .line 185
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 174
    .end local v4    # "encodingMode":I
    :cond_2
    const-string v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 176
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 177
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v6, v6, 0x7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 188
    .restart local v4    # "encodingMode":I
    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    .line 189
    .local v5, "len":I
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 190
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    .line 191
    .local v0, "capacity":I
    if-ge v5, v0, :cond_4

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_4

    .line 195
    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 198
    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    .local v1, "codewords":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_5

    .line 200
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_6

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v11, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_6
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static findMinimums([F[II[B)I
    .locals 5
    .param p0, "charCounts"    # [F
    .param p1, "intCharCounts"    # [I
    .param p2, "min"    # I
    .param p3, "mins"    # [B

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 363
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 364
    aget v0, p1, v1

    .line 365
    .local v0, "current":I
    if-le p2, v0, :cond_0

    .line 366
    move p2, v0

    .line 367
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 369
    :cond_0
    if-ne p2, v0, :cond_1

    .line 370
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 362
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "current":I
    :cond_2
    return p2
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .param p0, "mins"    # [B

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "minCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 380
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return v1
.end method

.method static illegalCharacter(C)V
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 444
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 386
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 390
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeC40(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 394
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 412
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 398
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeX12(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 402
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 406
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 12
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 210
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 353
    .end local p2    # "currentMode":I
    :goto_0
    return p2

    .line 215
    .restart local p2    # "currentMode":I
    :cond_0
    if-nez p2, :cond_2

    .line 216
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 222
    .local v1, "charCounts":[F
    :goto_1
    const/4 v2, 0x0

    .line 225
    .local v2, "charsProcessed":I
    :cond_1
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 227
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 228
    .local v6, "mins":[B
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 229
    .local v3, "intCharCounts":[I
    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    .line 230
    .local v4, "min":I
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 232
    .local v5, "minCount":I
    const/4 v9, 0x0

    aget v9, v3, v9

    if-ne v9, v4, :cond_3

    .line 233
    const/4 p2, 0x0

    goto :goto_0

    .line 218
    .end local v1    # "charCounts":[F
    .end local v2    # "charsProcessed":I
    .end local v3    # "intCharCounts":[I
    .end local v4    # "min":I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_2
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    .line 219
    .restart local v1    # "charCounts":[F
    const/4 v9, 0x0

    aput v9, v1, p2

    goto :goto_1

    .line 235
    .restart local v2    # "charsProcessed":I
    .restart local v3    # "intCharCounts":[I
    .restart local v4    # "min":I
    .restart local v5    # "minCount":I
    .restart local v6    # "mins":[B
    :cond_3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_4

    .line 236
    const/4 p2, 0x5

    goto :goto_0

    .line 238
    :cond_4
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_5

    .line 239
    const/4 p2, 0x4

    goto :goto_0

    .line 241
    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_6

    .line 242
    const/4 p2, 0x2

    goto :goto_0

    .line 244
    :cond_6
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_7

    .line 245
    const/4 p2, 0x3

    goto :goto_0

    .line 247
    :cond_7
    const/4 p2, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "intCharCounts":[I
    .end local v4    # "min":I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_8
    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 251
    .local v0, "c":C
    add-int/lit8 v2, v2, 0x1

    .line 254
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 255
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 265
    :goto_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 266
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 274
    :goto_3
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 275
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 283
    :goto_4
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 284
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 292
    :goto_5
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 293
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x3f400000    # 0.75f

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 301
    :goto_6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 302
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x40800000    # 4.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 308
    :goto_7
    const/4 v9, 0x4

    if-lt v2, v9, :cond_1

    .line 309
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 310
    .restart local v3    # "intCharCounts":[I
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 311
    .restart local v6    # "mins":[B
    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 312
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 314
    .restart local v5    # "minCount":I
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 319
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 256
    .end local v3    # "intCharCounts":[I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 257
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v9

    .line 258
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 260
    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v9

    .line 261
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 267
    :cond_b
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 268
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 270
    :cond_c
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 276
    :cond_d
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 277
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 279
    :cond_e
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 285
    :cond_f
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 286
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 288
    :cond_10
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 294
    :cond_11
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 295
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x40880000    # 4.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 297
    :cond_12
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x40500000    # 3.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 304
    :cond_13
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_7

    .line 321
    .restart local v3    # "intCharCounts":[I
    .restart local v5    # "minCount":I
    .restart local v6    # "mins":[B
    :cond_14
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-lt v9, v10, :cond_15

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-nez v9, :cond_16

    .line 323
    :cond_15
    const/4 p2, 0x5

    goto/16 :goto_0

    .line 325
    :cond_16
    const/4 v9, 0x1

    if-ne v5, v9, :cond_17

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_17

    .line 326
    const/4 p2, 0x4

    goto/16 :goto_0

    .line 328
    :cond_17
    const/4 v9, 0x1

    if-ne v5, v9, :cond_18

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_18

    .line 329
    const/4 p2, 0x2

    goto/16 :goto_0

    .line 331
    :cond_18
    const/4 v9, 0x1

    if-ne v5, v9, :cond_19

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_19

    .line 332
    const/4 p2, 0x3

    goto/16 :goto_0

    .line 334
    :cond_19
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 338
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_1a

    .line 339
    const/4 p2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_1a
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_1

    .line 342
    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    .line 343
    .local v7, "p":I
    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 344
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 345
    .local v8, "tc":C
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 346
    const/4 p2, 0x3

    goto/16 :goto_0

    .line 348
    :cond_1b
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 351
    add-int/lit8 v7, v7, 0x1

    .line 352
    goto :goto_8

    .line 353
    .end local v8    # "tc":C
    :cond_1c
    const/4 p2, 0x1

    goto/16 :goto_0

    .line 216
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 218
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(CI)C
    .locals 3
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .prologue
    .line 129
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    .line 130
    .local v0, "pseudoRandom":I
    add-int v1, p0, v0

    .line 131
    .local v1, "tempVariable":I
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    .end local v1    # "tempVariable":I
    :goto_0
    int-to-char v2, v1

    return v2

    .restart local v1    # "tempVariable":I
    :cond_0
    add-int/lit16 v1, v1, -0xfe

    goto :goto_0
.end method
