.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v3, 0x1e

    const/4 v4, -0x1

    .line 116
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 123
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 127
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 128
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 130
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 137
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 139
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    .line 140
    .local v0, "b":B
    if-lez v0, :cond_0

    .line 141
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "b":B
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 146
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    .line 147
    .restart local v0    # "b":B
    if-lez v0, :cond_2

    .line 148
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "b":B
    :cond_3
    return-void

    .line 116
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 123
    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    .line 539
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 540
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 541
    .local v4, "len":I
    move v3, p1

    .line 542
    .local v3, "idx":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 543
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 544
    .local v0, "ch":C
    const/4 v5, 0x0

    .line 546
    .local v5, "numericCount":I
    :goto_1
    if-ge v5, v7, :cond_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 549
    add-int v2, v3, v5

    .line 550
    .local v2, "i":I
    if-ge v2, v4, :cond_0

    .line 553
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    goto :goto_1

    .line 555
    .end local v2    # "i":I
    :cond_0
    if-lt v5, v7, :cond_1

    .line 556
    sub-int v6, v3, p1

    .line 565
    .end local v0    # "ch":C
    .end local v5    # "numericCount":I
    :goto_2
    return v6

    .line 558
    .restart local v0    # "ch":C
    .restart local v5    # "numericCount":I
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 560
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 561
    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Non-encodable character detected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 563
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 564
    goto :goto_0

    .line 565
    .end local v0    # "ch":C
    .end local v5    # "numericCount":I
    :cond_3
    sub-int v6, v3, p1

    goto :goto_2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 477
    .local v3, "len":I
    move v2, p1

    .line 478
    .local v2, "idx":I
    if-ge p1, v3, :cond_1

    .line 479
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 480
    .local v0, "ch":C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 481
    add-int/lit8 v1, v1, 0x1

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    if-ge v2, v3, :cond_0

    .line 484
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 488
    .end local v0    # "ch":C
    :cond_1
    return v1
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    const/16 v5, 0xd

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 500
    .local v2, "len":I
    move v1, p1

    .line 501
    .local v1, "idx":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_4

    .line 502
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 503
    .local v0, "ch":C
    const/4 v3, 0x0

    .line 504
    .local v3, "numericCount":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_2

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v1, v2, :cond_2

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 507
    if-ge v1, v2, :cond_1

    .line 508
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 511
    :cond_2
    if-lt v3, v5, :cond_3

    .line 512
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    .line 526
    .end local v0    # "ch":C
    .end local v3    # "numericCount":I
    :goto_2
    return v4

    .line 514
    .restart local v0    # "ch":C
    .restart local v3    # "numericCount":I
    :cond_3
    if-gtz v3, :cond_0

    .line 518
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 521
    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 524
    add-int/lit8 v1, v1, 0x1

    .line 525
    goto :goto_0

    .line 526
    .end local v0    # "ch":C
    .end local v3    # "numericCount":I
    :cond_4
    sub-int v4, v1, p1

    goto :goto_2
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 382
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    if-nez p3, :cond_0

    .line 383
    const/16 v6, 0x391

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    move v3, p1

    .line 394
    .local v3, "idx":I
    const/4 v6, 0x6

    if-lt p2, v6, :cond_5

    .line 395
    const/4 v6, 0x5

    new-array v1, v6, [C

    .line 396
    .local v1, "chars":[C
    :goto_1
    add-int v6, p1, p2

    sub-int/2addr v6, v3

    const/4 v7, 0x6

    if-lt v6, v7, :cond_5

    .line 397
    const-wide/16 v4, 0x0

    .line 398
    .local v4, "t":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v6, 0x6

    if-ge v2, v6, :cond_2

    .line 399
    const/16 v6, 0x8

    shl-long v6, v4, v6

    .line 400
    add-int v8, v3, v2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v3    # "idx":I
    .end local v4    # "t":J
    :cond_0
    rem-int/lit8 v6, p2, 0x6

    if-nez v6, :cond_1

    .line 386
    const/16 v6, 0x39c

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 388
    :cond_1
    const/16 v6, 0x385

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 402
    .restart local v1    # "chars":[C
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    .restart local v4    # "t":J
    :cond_2
    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x5

    if-ge v2, v6, :cond_3

    .line 403
    const-wide/16 v6, 0x384

    rem-long v6, v4, v6

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v1, v2

    .line 404
    const-wide/16 v6, 0x384

    div-long/2addr v4, v6

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 406
    :cond_3
    const/4 v2, 0x4

    :goto_4
    if-ltz v2, :cond_4

    .line 407
    aget-char v6, v1, v2

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 409
    :cond_4
    add-int/lit8 v3, v3, 0x6

    .line 410
    goto :goto_1

    .line 413
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v4    # "t":J
    :cond_5
    move v2, v3

    .restart local v2    # "i":I
    :goto_5
    add-int v6, p1, p2

    if-ge v2, v6, :cond_6

    .line 414
    aget-byte v6, p0, v2

    and-int/lit16 v0, v6, 0xff

    .line 415
    .local v0, "ch":I
    int-to-char v6, v0

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 417
    .end local v0    # "ch":I
    :cond_6
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 15
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v9, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 170
    sget-object p2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    .local v5, "len":I
    const/4 v8, 0x0

    .line 180
    .local v8, "p":I
    const/4 v11, 0x0

    .line 183
    .local v11, "textSubMode":I
    sget-object v12, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/encoder/Compaction;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, "encodingMode":I
    :goto_1
    if-ge v8, v5, :cond_2

    .line 198
    invoke-static {p0, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 199
    .local v7, "n":I
    const/16 v12, 0xd

    if-lt v7, v12, :cond_3

    .line 200
    const/16 v12, 0x386

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    const/4 v4, 0x2

    .line 202
    const/4 v11, 0x0

    .line 203
    invoke-static {p0, v8, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 204
    add-int/2addr v8, v7

    goto :goto_1

    .line 171
    .end local v4    # "encodingMode":I
    .end local v5    # "len":I
    .end local v7    # "n":I
    .end local v8    # "p":I
    .end local v11    # "textSubMode":I
    :cond_1
    sget-object v12, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 173
    .local v3, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v12

    invoke-static {v12, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 185
    .end local v3    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v5    # "len":I
    .restart local v8    # "p":I
    .restart local v11    # "textSubMode":I
    :pswitch_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v5, v9, v13}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 237
    :cond_2
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 188
    :pswitch_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 189
    .local v6, "msgBytes":[B
    const/4 v12, 0x0

    array-length v13, v6

    const/4 v14, 0x1

    invoke-static {v6, v12, v13, v14, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_2

    .line 192
    .end local v6    # "msgBytes":[B
    :pswitch_2
    const/16 v12, 0x386

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    const/4 v12, 0x0

    invoke-static {p0, v12, v5, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_2

    .line 206
    .restart local v4    # "encodingMode":I
    .restart local v7    # "n":I
    :cond_3
    invoke-static {p0, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 207
    .local v10, "t":I
    const/4 v12, 0x5

    if-ge v10, v12, :cond_4

    if-ne v7, v5, :cond_6

    .line 208
    :cond_4
    if-eqz v4, :cond_5

    .line 209
    const/16 v12, 0x384

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v11, 0x0

    .line 213
    :cond_5
    invoke-static {p0, v8, v10, v9, v11}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v11

    .line 214
    add-int/2addr v8, v10

    goto :goto_1

    .line 216
    :cond_6
    move-object/from16 v0, p2

    invoke-static {p0, v8, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v1

    .line 217
    .local v1, "b":I
    if-nez v1, :cond_7

    .line 218
    const/4 v1, 0x1

    .line 220
    :cond_7
    add-int v12, v8, v1

    invoke-virtual {p0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 221
    .local v2, "bytes":[B
    array-length v12, v2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    if-nez v4, :cond_8

    .line 223
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v2, v12, v13, v14, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 230
    :goto_3
    add-int/2addr v8, v1

    .line 233
    goto/16 :goto_1

    .line 226
    :cond_8
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v13, v4, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 227
    const/4 v4, 0x1

    .line 228
    const/4 v11, 0x0

    goto :goto_3

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, "idx":I
    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v7, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 423
    .local v5, "num900":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 424
    .local v4, "num0":Ljava/math/BigInteger;
    :goto_0
    if-ge v2, p2, :cond_2

    .line 425
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 427
    .local v3, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "part":Ljava/lang/String;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "bigint":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 435
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 436
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 438
    :cond_1
    add-int/2addr v2, v3

    .line 439
    goto :goto_0

    .line 440
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v6    # "part":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 9
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I

    .prologue
    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v6, "tmp":Ljava/lang/StringBuilder;
    move v5, p4

    .line 258
    .local v5, "submode":I
    const/4 v3, 0x0

    .line 260
    .local v3, "idx":I
    :cond_0
    :goto_0
    add-int v7, p1, v3

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 261
    .local v0, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 336
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 337
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 345
    if-lt v3, p2, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "h":C
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 351
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_10

    .line 352
    rem-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    .line 353
    :goto_3
    if-eqz v7, :cond_f

    .line 354
    mul-int/lit8 v7, v1, 0x1e

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    add-int/2addr v7, v8

    int-to-char v1, v7

    .line 355
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 263
    .end local v1    # "h":C
    .end local v2    # "i":I
    .end local v4    # "len":I
    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    const/16 v7, 0x20

    if-ne v0, v7, :cond_1

    .line 265
    const/16 v7, 0x1a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_1
    add-int/lit8 v7, v0, -0x41

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 270
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    const/4 v5, 0x1

    .line 272
    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    const/4 v5, 0x2

    .line 276
    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_4
    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    const/16 v7, 0x20

    if-ne v0, v7, :cond_5

    .line 288
    const/16 v7, 0x1a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_5
    add-int/lit8 v7, v0, -0x61

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 294
    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v7, v0, -0x41

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 298
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 299
    const/4 v5, 0x2

    .line 300
    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 303
    :cond_8
    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 310
    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 311
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v7, v7, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 313
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 314
    const/4 v5, 0x0

    .line 315
    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 317
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 318
    const/4 v5, 0x1

    .line 319
    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 322
    :cond_b
    add-int v7, p1, v3

    add-int/lit8 v7, v7, 0x1

    if-ge v7, p2, :cond_c

    .line 323
    add-int v7, p1, v3

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 324
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 325
    const/4 v5, 0x3

    .line 326
    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 330
    :cond_c
    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v7, v7, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 339
    :cond_d
    const/4 v5, 0x0

    .line 340
    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 352
    .restart local v1    # "h":C
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 357
    :cond_f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto/16 :goto_4

    .line 360
    :cond_10
    rem-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_11

    .line 361
    mul-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x1d

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_11
    return v5

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v1, 0xc5f94

    .line 569
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 570
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    if-ge p0, v1, :cond_1

    .line 573
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 576
    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    .line 577
    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 580
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 452
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 448
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 444
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

.method private static isMixed(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 456
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 460
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 464
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
