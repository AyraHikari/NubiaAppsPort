.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 53
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 59
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 68
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 75
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    .line 77
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    .line 53
    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 59
    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    .line 68
    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 77
    :array_3
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 87
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v4, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v1, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 92
    .local v2, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    :cond_0
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v2, v6, :cond_4

    .line 93
    invoke-static {v0, v3, v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v2

    .line 116
    :goto_0
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v2, v6, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 117
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    :cond_2
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, v5

    .end local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    invoke-direct {v6, p0, v7, v1, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v6

    .line 95
    .restart local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 112
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 97
    :pswitch_0
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 114
    :goto_1
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 109
    :pswitch_4
    invoke-static {v0, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0x8

    .line 391
    new-array v1, v6, [I

    .line 394
    .local v1, "cValues":[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 398
    .local v2, "firstByte":I
    const/16 v4, 0xfe

    if-eq v2, v4, :cond_1

    .line 402
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 404
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 405
    aget v0, v1, v3

    .line 406
    .local v0, "cValue":I
    packed-switch v0, :pswitch_data_0

    .line 420
    const/16 v4, 0xe

    if-ge v0, v4, :cond_3

    .line 421
    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    :pswitch_0
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 411
    :pswitch_1
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 414
    :pswitch_2
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 417
    :pswitch_3
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 422
    :cond_3
    const/16 v4, 0x28

    if-ge v0, v4, :cond_4

    .line 423
    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 425
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 430
    .end local v0    # "cValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "upperShift":Z
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 132
    .local v0, "oneByte":I
    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 134
    :cond_1
    const/16 v3, 0x80

    if-gt v0, v3, :cond_3

    .line 135
    if-eqz v1, :cond_2

    .line 136
    add-int/lit16 v0, v0, 0x80

    .line 139
    :cond_2
    add-int/lit8 v3, v0, -0x1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 195
    :goto_0
    return-object v3

    .line 141
    :cond_3
    const/16 v3, 0x81

    if-ne v0, v3, :cond_4

    .line 142
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 143
    :cond_4
    const/16 v3, 0xe5

    if-gt v0, v3, :cond_7

    .line 144
    add-int/lit16 v2, v0, -0x82

    .line 145
    .local v2, "value":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    .line 146
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .end local v2    # "value":I
    :cond_6
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    .line 195
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 150
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 188
    const/16 v3, 0xf2

    if-lt v0, v3, :cond_6

    const/16 v3, 0xfe

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-eqz v3, :cond_6

    .line 189
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 152
    :pswitch_1
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 156
    :pswitch_3
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 164
    :pswitch_4
    const/4 v1, 0x1

    .line 165
    goto :goto_1

    .line 167
    :pswitch_5
    const-string v3, "[)>\u001e05\u001d"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :pswitch_6
    const-string v3, "[)>\u001e06\u001d"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :pswitch_7
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 177
    :pswitch_8
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 179
    :pswitch_9
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/16 v9, 0x8

    .line 482
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 483
    .local v1, "codewordPosition":I
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codewordPosition":I
    .local v2, "codewordPosition":I
    invoke-static {v7, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v4

    .line 485
    .local v4, "d1":I
    if-nez v4, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    div-int/lit8 v3, v7, 0x8

    .local v3, "count":I
    move v1, v2

    .line 494
    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    :goto_0
    if-gez v3, :cond_2

    .line 495
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 487
    .end local v1    # "codewordPosition":I
    .end local v3    # "count":I
    .restart local v2    # "codewordPosition":I
    :cond_0
    const/16 v7, 0xfa

    if-ge v4, v7, :cond_1

    .line 488
    move v3, v4

    .restart local v3    # "count":I
    move v1, v2

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    goto :goto_0

    .line 490
    .end local v1    # "codewordPosition":I
    .end local v3    # "count":I
    .restart local v2    # "codewordPosition":I
    :cond_1
    add-int/lit16 v7, v4, -0xf9

    mul-int/lit16 v7, v7, 0xfa

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v8

    add-int v3, v7, v8

    .restart local v3    # "count":I
    goto :goto_0

    .line 498
    :cond_2
    new-array v0, v3, [B

    .line 499
    .local v0, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    move v2, v1

    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 502
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ge v7, v9, :cond_3

    .line 503
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 505
    :cond_3
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 499
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    goto :goto_1

    .line 507
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "ISO8859_1"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    return-void

    .line 510
    :catch_0
    move-exception v6

    .line 511
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Platform does not support required encoding: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 205
    const/4 v6, 0x0

    .line 207
    .local v6, "upperShift":Z
    new-array v2, v8, [I

    .line 208
    .local v2, "cValues":[I
    const/4 v5, 0x0

    .line 212
    .local v5, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 216
    .local v3, "firstByte":I
    const/16 v7, 0xfe

    if-eq v3, v7, :cond_1

    .line 220
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v3, v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 222
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_a

    .line 223
    aget v1, v2, v4

    .line 224
    .local v1, "cValue":I
    packed-switch v5, :pswitch_data_0

    .line 282
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 226
    :pswitch_0
    if-ge v1, v8, :cond_3

    .line 227
    add-int/lit8 v5, v1, 0x1

    .line 222
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    :cond_3
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 229
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 230
    .local v0, "c40char":C
    if-eqz v6, :cond_4

    .line 231
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const/4 v6, 0x0

    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 237
    .end local v0    # "c40char":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 241
    :pswitch_1
    if-eqz v6, :cond_6

    .line 242
    add-int/lit16 v7, v1, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    const/4 v6, 0x0

    .line 247
    :goto_3
    const/4 v5, 0x0

    .line 248
    goto :goto_2

    .line 245
    :cond_6
    int-to-char v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 250
    :pswitch_2
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_8

    .line 251
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 252
    .restart local v0    # "c40char":C
    if-eqz v6, :cond_7

    .line 253
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    const/4 v6, 0x0

    .line 270
    .end local v0    # "c40char":C
    :goto_4
    const/4 v5, 0x0

    .line 271
    goto :goto_2

    .line 256
    .restart local v0    # "c40char":C
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 259
    .end local v0    # "c40char":C
    :cond_8
    packed-switch v1, :pswitch_data_1

    .line 267
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 261
    :pswitch_4
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 264
    :pswitch_5
    const/4 v6, 0x1

    .line 265
    goto :goto_4

    .line 273
    :pswitch_6
    if-eqz v6, :cond_9

    .line 274
    add-int/lit16 v7, v1, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const/4 v6, 0x0

    .line 279
    :goto_5
    const/4 v5, 0x0

    .line 280
    goto :goto_2

    .line 277
    :cond_9
    add-int/lit8 v7, v1, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 285
    .end local v1    # "cValue":I
    :cond_a
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_2

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 454
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 457
    .local v1, "edifactValue":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x8

    .line 460
    .local v0, "bitsLeft":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 461
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_0

    .line 466
    .end local v0    # "bitsLeft":I
    :cond_3
    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_4

    .line 467
    or-int/lit8 v1, v1, 0x40

    .line 469
    :cond_4
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    .end local v1    # "edifactValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 295
    const/4 v6, 0x0

    .line 297
    .local v6, "upperShift":Z
    new-array v1, v8, [I

    .line 298
    .local v1, "cValues":[I
    const/4 v4, 0x0

    .line 301
    .local v4, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 305
    .local v2, "firstByte":I
    const/16 v7, 0xfe

    if-eq v2, v7, :cond_1

    .line 309
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v2, v7, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 311
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_b

    .line 312
    aget v0, v1, v3

    .line 313
    .local v0, "cValue":I
    packed-switch v4, :pswitch_data_0

    .line 377
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 315
    :pswitch_0
    if-ge v0, v8, :cond_3

    .line 316
    add-int/lit8 v4, v0, 0x1

    .line 311
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_3
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 318
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 319
    .local v5, "textChar":C
    if-eqz v6, :cond_4

    .line 320
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    const/4 v6, 0x0

    goto :goto_2

    .line 323
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 326
    .end local v5    # "textChar":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 330
    :pswitch_1
    if-eqz v6, :cond_6

    .line 331
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const/4 v6, 0x0

    .line 336
    :goto_3
    const/4 v4, 0x0

    .line 337
    goto :goto_2

    .line 334
    :cond_6
    int-to-char v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 340
    :pswitch_2
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_8

    .line 341
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 342
    .restart local v5    # "textChar":C
    if-eqz v6, :cond_7

    .line 343
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const/4 v6, 0x0

    .line 360
    .end local v5    # "textChar":C
    :goto_4
    const/4 v4, 0x0

    .line 361
    goto :goto_2

    .line 346
    .restart local v5    # "textChar":C
    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 349
    .end local v5    # "textChar":C
    :cond_8
    packed-switch v0, :pswitch_data_1

    .line 357
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 351
    :pswitch_4
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 354
    :pswitch_5
    const/4 v6, 0x1

    .line 355
    goto :goto_4

    .line 363
    :pswitch_6
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v7

    if-ge v0, v7, :cond_a

    .line 364
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v5, v7, v0

    .line 365
    .restart local v5    # "textChar":C
    if-eqz v6, :cond_9

    .line 366
    add-int/lit16 v7, v5, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    const/4 v6, 0x0

    .line 371
    :goto_5
    const/4 v4, 0x0

    .line 372
    goto :goto_2

    .line 369
    :cond_9
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 373
    .end local v5    # "textChar":C
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 380
    .end local v0    # "cValue":I
    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    .prologue
    .line 434
    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 435
    .local v0, "fullBitValue":I
    div-int/lit16 v1, v0, 0x640

    .line 436
    .local v1, "temp":I
    const/4 v2, 0x0

    aput v1, p2, v2

    .line 437
    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    .line 438
    div-int/lit8 v1, v0, 0x28

    .line 439
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 440
    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    .line 441
    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 3
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .prologue
    .line 520
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 521
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    .line 522
    .local v1, "tempVariable":I
    if-ltz v1, :cond_0

    .end local v1    # "tempVariable":I
    :goto_0
    return v1

    .restart local v1    # "tempVariable":I
    :cond_0
    add-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method
