.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 580
    .local v1, "bytes":[B
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v0, v1, v3

    .line 581
    .local v0, "b":B
    const/16 v5, 0x8

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 578
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 583
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 549
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 550
    .local v3, "length":I
    const/4 v2, 0x0

    .line 551
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 552
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 553
    .local v0, "code1":I
    if-ne v0, v6, :cond_0

    .line 554
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 556
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    .line 557
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 558
    .local v1, "code2":I
    if-ne v1, v6, :cond_1

    .line 559
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 562
    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 563
    add-int/lit8 v2, v2, 0x2

    .line 564
    goto :goto_0

    .line 566
    .end local v1    # "code2":I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 567
    add-int/lit8 v2, v2, 0x1

    .line 569
    goto :goto_0

    .line 570
    .end local v0    # "code1":I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 520
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 518
    :goto_0
    return-void

    .line 511
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 612
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 614
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 615
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 588
    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 592
    .local v2, "bytes":[B
    array-length v6, v2

    .line 593
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 594
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 595
    .local v0, "byte1":I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 596
    .local v1, "byte2":I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 597
    .local v3, "code":I
    const/4 v7, -0x1

    .line 598
    .local v7, "subtracted":I
    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    .line 599
    sub-int v7, v3, v11

    .line 603
    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 604
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 589
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v2    # "bytes":[B
    .end local v3    # "code":I
    .end local v5    # "i":I
    .end local v6    # "length":I
    .end local v7    # "subtracted":I
    :catch_0
    move-exception v8

    .line 590
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 600
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byte1":I
    .restart local v1    # "byte2":I
    .restart local v2    # "bytes":[B
    .restart local v3    # "code":I
    .restart local v5    # "i":I
    .restart local v6    # "length":I
    .restart local v7    # "subtracted":I
    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    .line 601
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 606
    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 607
    .local v4, "encoded":I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 593
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 609
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v3    # "code":I
    .end local v4    # "encoded":I
    .end local v7    # "subtracted":I
    :cond_3
    return-void
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 492
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 493
    .local v0, "numBits":I
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    .line 494
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 497
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 485
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 525
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 526
    .local v1, "length":I
    const/4 v0, 0x0

    .line 527
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 528
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 529
    .local v2, "num1":I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    .line 531
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 532
    .local v3, "num2":I
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 533
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 534
    add-int/lit8 v0, v0, 0x3

    .line 535
    goto :goto_0

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    .line 537
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 538
    .restart local v3    # "num2":I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 539
    add-int/lit8 v0, v0, 0x2

    .line 540
    goto :goto_0

    .line 542
    .end local v3    # "num2":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 545
    goto :goto_0

    .line 546
    .end local v2    # "num1":I
    :cond_2
    return-void
.end method

.method private static calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 265
    const v2, 0x7fffffff

    .line 266
    .local v2, "minPenalty":I
    const/4 v0, -0x1

    .line 268
    .local v0, "bestMaskPattern":I
    const/4 v1, 0x0

    .local v1, "maskPattern":I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 269
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 270
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 271
    .local v3, "penalty":I
    if-ge v3, v2, :cond_0

    .line 272
    move v2, v3

    .line 273
    move v0, v1

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "penalty":I
    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 237
    :goto_0
    return-object v4

    .line 219
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, "hasNumeric":Z
    const/4 v1, 0x0

    .line 221
    .local v1, "hasAlphanumeric":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 222
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 223
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-gt v0, v4, :cond_1

    .line 224
    const/4 v2, 0x1

    .line 221
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 226
    const/4 v1, 0x1

    goto :goto_2

    .line 228
    :cond_2
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 231
    .end local v0    # "c":C
    :cond_3
    if-eqz v1, :cond_4

    .line 232
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 234
    :cond_4
    if-eqz v2, :cond_5

    .line 235
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 237
    :cond_5
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v1, 0x1

    .local v1, "versionNum":I
    :goto_0
    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    .line 281
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 282
    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p0, v0, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    return-object v0

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_1
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v3, "Data too big"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 20
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const-string v7, "ISO-8859-1"

    .line 81
    .local v7, "encoding":Ljava/lang/String;
    if-eqz p2, :cond_4

    sget-object v18, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v9, 0x1

    .line 82
    .local v9, "hasEncodingHint":Z
    :goto_0
    if-eqz v9, :cond_0

    .line 83
    sget-object v18, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 88
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v14

    .line 92
    .local v14, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v11, Lcom/google/zxing/common/BitArray;

    invoke-direct {v11}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 95
    .local v11, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v18, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_2

    if-nez v9, :cond_1

    const-string v18, "ISO-8859-1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 96
    :cond_1
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    .line 97
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v6, :cond_2

    .line 98
    invoke-static {v6, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 103
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_2
    if-eqz p2, :cond_5

    sget-object v18, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    .line 104
    :goto_1
    if-eqz v18, :cond_3

    sget-object v18, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 106
    sget-object v18, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 110
    :cond_3
    invoke-static {v14, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 114
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 115
    .local v3, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_6

    sget-object v18, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 119
    sget-object v18, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 120
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 121
    .local v17, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v0, v17

    invoke-static {v14, v11, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v18

    .line 122
    move/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 123
    new-instance v18, Lcom/google/zxing/WriterException;

    const-string v19, "Data too big for requested version"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 81
    .end local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v9    # "hasEncodingHint":Z
    .end local v11    # "headerBits":Lcom/google/zxing/common/BitArray;
    .end local v14    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v17    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 103
    .restart local v9    # "hasEncodingHint":Z
    .restart local v11    # "headerBits":Lcom/google/zxing/common/BitArray;
    .restart local v14    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 126
    .restart local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v14, v11, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 129
    .restart local v17    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_7
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 130
    .local v10, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    sget-object v18, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_8

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v18

    .line 133
    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 135
    invoke-virtual {v10, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    .line 138
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v18

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v19

    sub-int v15, v18, v19

    .line 141
    .local v15, "numDataBytes":I
    invoke-static {v15, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 145
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v18

    .line 147
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v19

    .line 144
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v15, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 149
    .local v8, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v16, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 151
    .local v16, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    invoke-virtual/range {v16 .. v17}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    .line 157
    .local v4, "dimension":I
    new-instance v13, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v13, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 158
    .local v13, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1, v13}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v12

    .line 159
    .local v12, "maskPattern":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1, v12, v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 165
    return-object v16

    .line 132
    .end local v4    # "dimension":I
    .end local v5    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v8    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v12    # "maskPattern":I
    .end local v13    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v15    # "numDataBytes":I
    .end local v16    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    goto :goto_2
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .prologue
    .line 466
    array-length v2, p0

    .line 467
    .local v2, "numDataBytes":I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 468
    .local v3, "toEncode":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 469
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 473
    new-array v0, p1, [B

    .line 474
    .local v0, "ecBytes":[B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 475
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 200
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 201
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 347
    if-lt p3, p2, :cond_0

    .line 348
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 351
    :cond_0
    rem-int v5, p0, p2

    .line 353
    .local v5, "numRsBlocksInGroup2":I
    sub-int v4, p2, v5

    .line 355
    .local v4, "numRsBlocksInGroup1":I
    div-int v6, p0, p2

    .line 357
    .local v6, "numTotalBytesInGroup1":I
    add-int/lit8 v7, v6, 0x1

    .line 359
    .local v7, "numTotalBytesInGroup2":I
    div-int v0, p1, p2

    .line 361
    .local v0, "numDataBytesInGroup1":I
    add-int/lit8 v1, v0, 0x1

    .line 363
    .local v1, "numDataBytesInGroup2":I
    sub-int v2, v6, v0

    .line 365
    .local v2, "numEcBytesInGroup1":I
    sub-int v3, v7, v1

    .line 368
    .local v3, "numEcBytesInGroup2":I
    if-eq v2, v3, :cond_1

    .line 369
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 372
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 373
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 376
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    .line 381
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 384
    :cond_3
    if-ge p3, v4, :cond_4

    .line 385
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 386
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 389
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 15
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 404
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_0
    const/4 v9, 0x0

    .line 410
    .local v9, "dataBytesOffset":I
    const/4 v11, 0x0

    .line 411
    .local v11, "maxNumDataBytes":I
    const/4 v12, 0x0

    .line 414
    .local v12, "maxNumEcBytes":I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .local v7, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 417
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 418
    .local v5, "numDataBytesInBlock":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .local v6, "numEcBytesInBlock":[I
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 419
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 423
    const/4 v1, 0x0

    aget v14, v5, v1

    .line 424
    .local v14, "size":I
    new-array v8, v14, [B

    .line 425
    .local v8, "dataBytes":[B
    shl-int/lit8 v1, v9, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v8, v2, v14}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 426
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v8, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v10

    .line 427
    .local v10, "ecBytes":[B
    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v8, v10}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 430
    array-length v1, v10

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 431
    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v9, v1

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 433
    .end local v5    # "numDataBytesInBlock":[I
    .end local v6    # "numEcBytesInBlock":[I
    .end local v8    # "dataBytes":[B
    .end local v10    # "ecBytes":[B
    .end local v14    # "size":I
    :cond_1
    move/from16 v0, p2

    if-eq v0, v9, :cond_2

    .line 434
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_2
    new-instance v13, Lcom/google/zxing/common/BitArray;

    invoke-direct {v13}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 440
    .local v13, "result":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_5

    .line 441
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 442
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v8

    .line 443
    .restart local v8    # "dataBytes":[B
    array-length v1, v8

    if-ge v4, v1, :cond_3

    .line 444
    aget-byte v1, v8, v4

    const/16 v3, 0x8

    invoke-virtual {v13, v1, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    .line 440
    .end local v8    # "dataBytes":[B
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 449
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v12, :cond_8

    .line 450
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 451
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v10

    .line 452
    .restart local v10    # "ecBytes":[B
    array-length v1, v10

    if-ge v4, v1, :cond_6

    .line 453
    aget-byte v1, v10, v4

    const/16 v3, 0x8

    invoke-virtual {v13, v1, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    .line 449
    .end local v10    # "ecBytes":[B
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 457
    :cond_8
    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_9

    .line 458
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_9
    return-object v13
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 243
    :try_start_0
    const-string v5, "Shift_JIS"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    .local v1, "bytes":[B
    array-length v3, v1

    .line 248
    .local v3, "length":I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    .line 257
    .end local v1    # "bytes":[B
    .end local v3    # "length":I
    :cond_0
    :goto_0
    return v4

    .line 251
    .restart local v1    # "bytes":[B
    .restart local v3    # "length":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 252
    aget-byte v5, v1, v2

    and-int/lit16 v0, v5, 0xff

    .line 253
    .local v0, "byte1":I
    const/16 v5, 0x81

    if-lt v0, v5, :cond_2

    const/16 v5, 0x9f

    if-le v0, v5, :cond_3

    :cond_2
    const/16 v5, 0xe0

    if-lt v0, v5, :cond_0

    const/16 v5, 0xeb

    if-gt v0, v5, :cond_0

    .line 251
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 257
    .end local v0    # "byte1":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "length":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-static {p1, p2, p3, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 181
    invoke-static {v1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 184
    .local v0, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 185
    invoke-static {v1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    return-object v1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 310
    shl-int/lit8 v0, p0, 0x3

    .line 311
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 312
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 316
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 321
    .local v2, "numBitsInLastByte":I
    if-lez v2, :cond_2

    .line 322
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    .line 323
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .line 328
    .local v3, "numPaddingBytes":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 329
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    .line 331
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_5

    .line 332
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_5
    return-void
.end method

.method private static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 5
    .param p0, "numInputBits"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    .line 298
    .local v0, "numBytes":I
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v2

    .line 301
    .local v2, "numEcBytes":I
    sub-int v1, v0, v2

    .line 302
    .local v1, "numDataBytes":I
    add-int/lit8 v4, p0, 0x7

    div-int/lit8 v3, v4, 0x8

    .line 303
    .local v3, "totalInputBytes":I
    if-lt v1, v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
