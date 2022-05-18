.class public final Lcom/dd/plist/BinaryPropertyListParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private majorVersion:I

.field private minorVersion:I

.field private objectRefSize:I

.field private offsetTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/dd/plist/BinaryPropertyListParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dd/plist/BinaryPropertyListParser;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private calculateUtf8StringLength([BII)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x80

    .line 382
    move v1, v0

    .line 383
    :goto_0
    if-ge v1, p3, :cond_6

    .line 384
    add-int v2, p2, v0

    .line 385
    array-length v3, p1

    if-gt v3, v2, :cond_1

    .line 421
    :cond_0
    :goto_1
    return p3

    .line 389
    :cond_1
    aget-byte v3, p1, v2

    if-ge v3, v5, :cond_2

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_2
    aget-byte v3, p1, v2

    const/16 v4, 0xc2

    if-lt v3, v4, :cond_0

    .line 396
    aget-byte v3, p1, v2

    const/16 v4, 0xe0

    if-ge v3, v4, :cond_4

    .line 397
    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v5, :cond_0

    .line 401
    add-int/lit8 v0, v0, 0x2

    .line 383
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_4
    aget-byte v3, p1, v2

    const/16 v4, 0xf0

    if-ge v3, v4, :cond_5

    .line 404
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v5, :cond_0

    .line 409
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 411
    :cond_5
    aget-byte v3, p1, v2

    const/16 v4, 0xf5

    if-ge v3, v4, :cond_3

    .line 412
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v5, :cond_0

    .line 418
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_6
    move p3, v0

    .line 421
    goto :goto_1
.end method

.method public static copyOfRange([BII)[B
    .locals 3

    .prologue
    .line 519
    sub-int v0, p2, p1

    .line 520
    if-gez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > endIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    new-array v1, v0, [B

    .line 524
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    return-object v1
.end method

.method private doParse([B)Lcom/dd/plist/NSObject;
    .locals 9

    .prologue
    const/16 v7, 0x10

    const/4 v5, 0x6

    const/4 v0, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x7

    .line 99
    iput-object p1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    .line 100
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    invoke-static {v2, v0, v6}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 101
    const-string v2, "bplist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given data is no binary property list. Wrong magic bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    iput v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->minorVersion:I

    .line 114
    iget v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    if-lez v1, :cond_1

    .line 115
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported binary property list format: v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->minorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Version 1.0 and later are not yet supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v1, v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_2

    .line 121
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The binary property list does not contain a complete object offset table."

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x20

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    .line 128
    invoke-static {v1, v5, v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v2

    long-to-int v2, v2

    .line 129
    invoke-static {v1, v4, v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    .line 130
    invoke-static {v1, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v4

    long-to-int v3, v4

    .line 131
    const/16 v4, 0x18

    invoke-static {v1, v7, v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v4

    long-to-int v4, v4

    .line 132
    const/16 v5, 0x18

    const/16 v6, 0x20

    invoke-static {v1, v5, v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v1, v6

    .line 135
    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v6, v6

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x20

    if-lt v4, v5, :cond_4

    .line 136
    :cond_3
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The binary property list contains a corrupted object offset table."

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    .line 141
    :goto_0
    if-ge v0, v3, :cond_5

    .line 142
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    mul-int v7, v0, v2

    add-int/2addr v7, v1

    add-int/lit8 v8, v0, 0x1

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    invoke-static {v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v5, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_5
    invoke-direct {p0, v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 172
    :try_start_0
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 176
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :goto_0
    return-object v1

    .line 175
    :catchall_0
    move-exception v1

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :goto_1
    throw v1

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/dd/plist/BinaryPropertyListParser;

    invoke-direct {v0}, Lcom/dd/plist/BinaryPropertyListParser;-><init>()V

    .line 87
    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListParser;->doParse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parseDouble([B)D
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([BII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseDouble([BII)D
    .locals 3

    .prologue
    .line 501
    sub-int v0, p2, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 502
    invoke-static {p0, p1, p2}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 504
    :goto_0
    return-wide v0

    .line 503
    :cond_0
    sub-int v0, p2, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 504
    invoke-static {p0, p1, p2}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([BII)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - startIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") != 4 or 8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLong([B)J
    .locals 2

    .prologue
    .line 461
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BII)J
    .locals 4

    .prologue
    .line 473
    const-wide/16 v0, 0x0

    .line 474
    :goto_0
    if-ge p1, p2, :cond_0

    .line 475
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 476
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 474
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-wide v0
.end method

.method private parseObject(I)Lcom/dd/plist/NSObject;
    .locals 11

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    aget v2, v0, p1

    .line 196
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    aget-byte v0, v0, v2

    .line 197
    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 198
    and-int/lit8 v0, v0, 0xf

    .line 199
    packed-switch v3, :pswitch_data_0

    .line 348
    :pswitch_0
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given binary property list contains an object of unknown type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :pswitch_1
    sparse-switch v0, :sswitch_data_0

    .line 231
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given binary property list contains an object of unknown type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :sswitch_0
    const/4 v0, 0x0

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :sswitch_1
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 213
    :sswitch_2
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v5}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 218
    :sswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given binary property list contains a URL object. Parsing of this object type is not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :sswitch_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given binary property list contains a URL object. Parsing of this object type is not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :sswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given binary property list contains a UUID object. Parsing of this object type is not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_2
    int-to-double v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    .line 238
    new-instance v0, Lcom/dd/plist/NSNumber;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/dd/plist/NSNumber;-><init>([BIII)V

    goto :goto_0

    .line 242
    :pswitch_3
    int-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    .line 243
    new-instance v0, Lcom/dd/plist/NSNumber;

    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/dd/plist/NSNumber;-><init>([BIII)V

    goto :goto_0

    .line 247
    :pswitch_4
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 248
    new-instance v1, Lcom/dd/plist/PropertyListFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given binary property list contains a date object of an unknown type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    new-instance v0, Lcom/dd/plist/NSDate;

    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/dd/plist/NSDate;-><init>([BII)V

    goto :goto_0

    .line 254
    :pswitch_5
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 255
    aget v1, v0, v1

    .line 256
    aget v3, v0, v5

    .line 257
    new-instance v0, Lcom/dd/plist/NSData;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v2, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v4, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSData;-><init>([B)V

    goto/16 :goto_0

    .line 261
    :pswitch_6
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 262
    aget v1, v0, v1

    .line 263
    aget v3, v0, v5

    .line 264
    new-instance v0, Lcom/dd/plist/NSString;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v2, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const-string v2, "ASCII"

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/dd/plist/NSString;-><init>([BIILjava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_7
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 269
    aget v1, v0, v1

    .line 270
    aget v3, v0, v5

    .line 273
    mul-int/lit8 v1, v1, 0x2

    .line 274
    new-instance v0, Lcom/dd/plist/NSString;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v2, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/dd/plist/NSString;-><init>([BIILjava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :pswitch_8
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 279
    aget v3, v0, v5

    .line 280
    aget v0, v0, v1

    .line 283
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v4, v2, v3

    invoke-direct {p0, v1, v4, v0}, Lcom/dd/plist/BinaryPropertyListParser;->calculateUtf8StringLength([BII)I

    move-result v1

    .line 284
    new-instance v0, Lcom/dd/plist/NSString;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v5, v2, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const-string v2, "UTF-8"

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/dd/plist/NSString;-><init>([BIILjava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    .line 289
    new-instance v0, Lcom/dd/plist/UID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v4, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/dd/plist/UID;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 293
    :pswitch_a
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 294
    aget v3, v0, v1

    .line 295
    aget v4, v0, v5

    .line 297
    new-instance v0, Lcom/dd/plist/NSArray;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 298
    :goto_1
    if-ge v1, v3, :cond_0

    .line 299
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v2, v4

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    add-int v7, v2, v4

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v5, v6

    .line 300
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    :pswitch_b
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 307
    aget v3, v0, v1

    .line 308
    aget v4, v0, v5

    .line 310
    new-instance v0, Lcom/dd/plist/NSSet;

    invoke-direct {v0, v5}, Lcom/dd/plist/NSSet;-><init>(Z)V

    .line 311
    :goto_2
    if-ge v1, v3, :cond_0

    .line 312
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v2, v4

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    add-int v7, v2, v4

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v5, v6

    .line 313
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 319
    :pswitch_c
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 320
    aget v3, v0, v1

    .line 321
    aget v4, v0, v5

    .line 323
    new-instance v0, Lcom/dd/plist/NSSet;

    invoke-direct {v0}, Lcom/dd/plist/NSSet;-><init>()V

    .line 324
    :goto_3
    if-ge v1, v3, :cond_0

    .line 325
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v2, v4

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    add-int v7, v2, v4

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v5, v6

    .line 326
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 332
    :pswitch_d
    invoke-direct {p0, v0, v2}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v0

    .line 333
    aget v3, v0, v1

    .line 334
    aget v4, v0, v5

    .line 336
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 337
    :goto_4
    if-ge v1, v3, :cond_0

    .line 338
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v6, v2, v4

    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    add-int v7, v2, v4

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v5, v6

    .line 339
    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int v7, v2, v4

    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int v8, v2, v4

    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x1

    iget v10, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v6

    long-to-int v6, v6

    .line 340
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v5

    .line 341
    invoke-direct {p0, v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v6

    .line 342
    sget-boolean v7, Lcom/dd/plist/BinaryPropertyListParser;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 343
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method public static parseUnsignedInt([B)J
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedInt([BII)J
    .locals 4

    .prologue
    .line 444
    const-wide/16 v0, 0x0

    .line 445
    :goto_0
    if-ge p1, p2, :cond_0

    .line 446
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 447
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 445
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 450
    return-wide v0
.end method

.method private readLengthAndOffset(II)[I
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 361
    .line 363
    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v0, v0, v2

    .line 365
    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 366
    if-eq v2, v1, :cond_0

    .line 367
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BinaryPropertyListParser: Length integer has an unexpected type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Attempting to parse anyway..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    :cond_0
    and-int/lit8 v0, v0, 0xf

    .line 370
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 371
    add-int/lit8 v0, v2, 0x2

    .line 372
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 373
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p2, 0x2

    add-int/2addr v2, v5

    invoke-static {v3, v4, v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([BII)J

    move-result-wide v2

    long-to-int p1, v2

    .line 378
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v0, v2, v1

    return-object v2

    .line 375
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p2, 0x2

    add-int/2addr v2, v6

    invoke-static {v4, v5, v2}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
