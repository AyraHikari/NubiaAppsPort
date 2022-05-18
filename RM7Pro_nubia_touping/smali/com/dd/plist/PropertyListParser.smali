.class public Lcom/dd/plist/PropertyListParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final READ_BUFFER_LENGTH:I = 0x800

.field private static final TYPE_ASCII:I = 0x2

.field private static final TYPE_BINARY:I = 0x1

.field private static final TYPE_ERROR_BLANK:I = 0xa

.field private static final TYPE_ERROR_UNKNOWN:I = 0xb

.field private static final TYPE_XML:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static convertToASCII(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 421
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 422
    instance-of v1, v0, Lcom/dd/plist/NSDictionary;

    if-eqz v1, :cond_0

    .line 423
    check-cast v0, Lcom/dd/plist/NSDictionary;

    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    instance-of v1, v0, Lcom/dd/plist/NSArray;

    if-eqz v1, :cond_1

    .line 426
    check-cast v0, Lcom/dd/plist/NSArray;

    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The root of the given input property list is neither a Dictionary nor an Array!"

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToBinary(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 350
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 351
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    .line 352
    return-void
.end method

.method public static convertToGnuStepASCII(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 501
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 502
    instance-of v1, v0, Lcom/dd/plist/NSDictionary;

    if-eqz v1, :cond_0

    .line 503
    check-cast v0, Lcom/dd/plist/NSDictionary;

    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V

    .line 512
    :goto_0
    return-void

    .line 505
    :cond_0
    instance-of v1, v0, Lcom/dd/plist/NSArray;

    if-eqz v1, :cond_1

    .line 506
    check-cast v0, Lcom/dd/plist/NSArray;

    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V

    goto :goto_0

    .line 509
    :cond_1
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The root of the given input property list is neither a Dictionary nor an Array!"

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToXml(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 305
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 306
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    .line 307
    return-void
.end method

.method private static determineType(Ljava/io/InputStream;I)I
    .locals 9

    .prologue
    const/16 v0, 0xa

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    .line 116
    add-int/lit16 v4, p1, 0x400

    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 120
    :cond_0
    int-to-long v6, p1

    invoke-virtual {p0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move v1, v3

    .line 125
    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-le p1, v4, :cond_3

    .line 126
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 127
    invoke-static {p0, v4}, Lcom/dd/plist/PropertyListParser;->determineType(Ljava/io/InputStream;I)I

    move-result v0

    .line 145
    :cond_2
    :goto_0
    return v0

    .line 129
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 131
    const/4 v6, 0x3

    if-ge p1, v6, :cond_8

    if-nez p1, :cond_4

    const/16 v6, 0xef

    if-eq v5, v6, :cond_6

    :cond_4
    if-eqz v1, :cond_8

    if-ne p1, v2, :cond_5

    const/16 v1, 0xbb

    if-eq v5, v1, :cond_6

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const/16 v1, 0xbf

    if-ne v5, v1, :cond_8

    :cond_6
    move v1, v2

    .line 132
    :goto_1
    if-eq v5, v8, :cond_7

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    if-eq v5, v0, :cond_1

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_1

    .line 134
    :cond_7
    if-eq v5, v8, :cond_2

    .line 138
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 139
    int-to-byte v1, v5

    aput-byte v1, v0, v3

    .line 140
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 141
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/dd/plist/PropertyListParser;->determineType(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_8
    move v1, v3

    .line 131
    goto :goto_1
.end method

.method private static determineType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/16 v0, 0xa

    .line 84
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string v1, "bplist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 81
    :cond_3
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_4
    const/16 v0, 0xb

    goto :goto_0
.end method

.method private static determineType([B)I
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 94
    .line 95
    array-length v2, p0

    if-lt v2, v0, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    .line 99
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lcom/dd/plist/PropertyListParser;->determineType(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 195
    :try_start_0
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 198
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :goto_0
    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    .line 198
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    :goto_1
    throw v1

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->determineType(Ljava/io/InputStream;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 246
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The given data is not a property list of a supported format."

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :sswitch_0
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 240
    :sswitch_1
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 242
    :sswitch_2
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 244
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method protected static readAll(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    new-array v1, v5, [B

    .line 160
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 161
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toASCIIPropertyList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :goto_0
    return-void

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 404
    :goto_1
    throw v0

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toASCIIPropertyList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    :goto_0
    return-void

    .line 372
    :catchall_0
    move-exception v0

    .line 373
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    :goto_1
    throw v0

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-static {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/File;Lcom/dd/plist/NSObject;)V

    .line 323
    return-void
.end method

.method public static saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 334
    invoke-static {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 335
    return-void
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 486
    :goto_0
    return-void

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    :goto_1
    throw v0

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :goto_0
    return-void

    .line 452
    :catchall_0
    move-exception v0

    .line 453
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 457
    :goto_1
    throw v0

    .line 455
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output directory does not exist and could not be created."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 265
    :try_start_0
    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_0
    return-void

    .line 268
    :catchall_0
    move-exception v1

    .line 269
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    :goto_1
    throw v1

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/dd/plist/NSObject;->toXMLPropertyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 289
    return-void
.end method
