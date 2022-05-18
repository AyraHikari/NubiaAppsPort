.class public abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field private static final serialVersionUID:J = 0x25663ac63c372e5aL


# instance fields
.field protected dclass:I

.field protected name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 534
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 535
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "Record"

    const-string v1, "name.isAbsolute "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 34
    invoke-static {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 35
    invoke-static {p4, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->check(J)V

    .line 36
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 37
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    .line 38
    iput p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    .line 39
    iput-wide p4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    goto :goto_0
.end method

.method protected static byteArrayFromString(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/16 v12, 0x5c

    const/4 v7, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x3

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    move v0, v1

    .line 243
    :goto_0
    array-length v2, v8

    if-ge v0, v2, :cond_c

    .line 244
    aget-byte v2, v8, v0

    if-ne v2, v12, :cond_0

    move v0, v7

    .line 250
    :goto_1
    if-nez v0, :cond_2

    .line 251
    array-length v0, v8

    if-le v0, v11, :cond_1

    .line 252
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "text string too long"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v8

    .line 301
    :goto_2
    return-object v0

    .line 257
    :cond_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 261
    :goto_3
    array-length v5, v8

    if-ge v0, v5, :cond_8

    .line 262
    aget-byte v5, v8, v0

    .line 263
    if-nez v4, :cond_4

    .line 264
    aget-byte v5, v8, v0

    if-ne v5, v12, :cond_3

    move v2, v1

    move v3, v1

    move v4, v7

    .line 261
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 269
    :cond_3
    aget-byte v5, v8, v0

    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 272
    :cond_4
    const/16 v6, 0x30

    if-lt v5, v6, :cond_7

    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    if-ge v3, v10, :cond_7

    .line 273
    add-int/lit8 v6, v3, 0x1

    .line 274
    mul-int/lit8 v2, v2, 0xa

    .line 275
    add-int/lit8 v3, v5, -0x30

    add-int/2addr v3, v2

    .line 276
    if-le v3, v11, :cond_5

    .line 277
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bad escape"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_5
    if-ge v6, v10, :cond_6

    move v2, v3

    move v3, v6

    .line 281
    goto :goto_4

    .line 284
    :cond_6
    int-to-byte v2, v3

    move v4, v6

    .line 289
    :goto_5
    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v3

    move v3, v4

    move v4, v1

    .line 290
    goto :goto_4

    .line 285
    :cond_7
    if-lez v3, :cond_b

    if-ge v3, v10, :cond_b

    .line 286
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bad escape"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_8
    if-lez v3, :cond_9

    if-ge v3, v10, :cond_9

    .line 295
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bad escape"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 298
    array-length v0, v0

    if-le v0, v11, :cond_a

    .line 299
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "text string too long"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    :cond_b
    move v4, v3

    move v3, v2

    move v2, v5

    goto :goto_5

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 314
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 315
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_2

    .line 316
    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_1

    .line 317
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 328
    :cond_3
    if-eqz p1, :cond_4

    .line 329
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static checkByteArrayLength(Ljava/lang/String;[BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" array must have no more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 528
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    return-object v0
.end method

.method static checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method static checkU16(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 499
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 500
    return p1

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an unsigned 16 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU32(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 507
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 508
    return-wide p1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an unsigned 32 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU8(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 491
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 492
    return p1

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an unsigned 8 bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 345
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "fromString name.isAbsolute"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 349
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 350
    invoke-static {p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->check(J)V

    .line 351
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 352
    iget v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    const-string v1, "\\#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v6

    .line 354
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getHex()[B

    move-result-object v0

    .line 355
    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 359
    :cond_1
    array-length v1, v0

    if-eq v6, v1, :cond_2

    .line 360
    const-string v0, "invalid unknown RR encoding: length mismatch"

    invoke-virtual {p5, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 362
    :cond_2
    new-instance v7, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v7, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 363
    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJILcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 373
    :cond_3
    return-object v0

    .line 366
    :cond_4
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->unget()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 367
    invoke-static/range {v1 .. v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getEmptyRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p5, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 369
    invoke-virtual {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v1

    .line 370
    iget v2, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-eq v2, v6, :cond_3

    iget v1, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-eqz v1, :cond_3

    .line 371
    const-string v0, "unexpected tokens at end of record"

    invoke-virtual {p5, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public static fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 9

    .prologue
    .line 380
    new-instance v6, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-direct {v6, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method static fromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;IZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 8

    .prologue
    .line 126
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 127
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v2

    .line 128
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v3

    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-static {v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v4

    .line 133
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v6

    .line 134
    if-nez v6, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :cond_1
    move-object v7, p0

    .line 135
    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJILcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {v1, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getEmptyRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 3

    .prologue
    .line 47
    if-eqz p5, :cond_1

    .line 48
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->getProto(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :goto_1
    move-object v0, v1

    .line 58
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    iput-object p0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object v0, v1

    .line 59
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    iput p1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    move-object v0, v1

    .line 60
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    iput p2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    move-object v0, v1

    .line 61
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    iput-wide p3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    .line 62
    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    return-object v1

    .line 52
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;-><init>()V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/EmptyRecord;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EmptyRecord;-><init>()V

    goto :goto_1
.end method

.method public static newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 114
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 115
    invoke-static {p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->check(J)V

    .line 116
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getEmptyRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto :goto_0
.end method

.method private static newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJILcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 7

    .prologue
    .line 68
    if-eqz p6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getEmptyRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 69
    if-eqz p6, :cond_3

    .line 70
    invoke-virtual {p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v1

    if-ge v1, p5, :cond_1

    .line 71
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "truncated record"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p6, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->setActive(I)V

    .line 75
    invoke-virtual {v0, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 76
    invoke-virtual {p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 77
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid record length"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    invoke-virtual {p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->clearActive()V

    .line 83
    :cond_3
    return-object v0
.end method

.method public static newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJI[B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 91
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 92
    invoke-static {p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->check(J)V

    .line 94
    if-eqz p6, :cond_1

    .line 95
    new-instance v7, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v7, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 101
    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJILcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 97
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Z)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 165
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 166
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 167
    if-eqz p2, :cond_0

    .line 168
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 173
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 175
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 176
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    .line 177
    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 178
    return-void

    .line 170
    :cond_0
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    goto :goto_0
.end method

.method private toWireCanonical(Z)[B
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Z)V

    .line 183
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    const-string v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 339
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cloneRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 453
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 454
    if-ne p0, p1, :cond_0

    .line 479
    :goto_0
    return v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 458
    if-eqz v1, :cond_1

    move v0, v1

    .line 459
    goto :goto_0

    .line 461
    :cond_1
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    sub-int/2addr v1, v2

    .line 462
    if-eqz v1, :cond_2

    move v0, v1

    .line 463
    goto :goto_0

    .line 465
    :cond_2
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    sub-int/2addr v1, v2

    .line 466
    if-eqz v1, :cond_3

    move v0, v1

    .line 467
    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 470
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 472
    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_5

    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 473
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v1, v4

    .line 474
    if-eqz v1, :cond_4

    move v0, v1

    .line 475
    goto :goto_0

    .line 472
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_5
    array-length v0, v2

    array-length v1, v3

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 415
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-eqz v1, :cond_0

    .line 416
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 417
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 419
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToWireCanonical()[B

    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 425
    :cond_0
    return v0
.end method

.method public getAdditionalName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    return v0
.end method

.method public getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method abstract getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.end method

.method public getRRsetType()I
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 393
    check-cast p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;

    .line 394
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;->getTypeCovered()I

    move-result v0

    .line 396
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    goto :goto_0
.end method

.method public getTTL()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 430
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWireCanonical(Z)[B

    move-result-object v2

    move v1, v0

    .line 433
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 434
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return v1
.end method

.method abstract rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
.end method

.method public rdataToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .locals 3

    .prologue
    .line 191
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 192
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 193
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method abstract rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
.end method

.method public sameRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTTL(J)V
    .locals 1

    .prologue
    .line 449
    iput-wide p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 206
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 210
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_1
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v1, "BINDTTL"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_0
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    :cond_2
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_3
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrToString()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 229
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_5
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, p1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 145
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 146
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 147
    if-eqz p2, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 149
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v0

    .line 150
    invoke-virtual {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 151
    invoke-virtual {p0, p1, p3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 152
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 153
    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 155
    :cond_0
    return-void
.end method

.method public toWire(I)[B
    .locals 2

    .prologue
    .line 158
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 159
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    invoke-virtual {p0, v1, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 160
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical()[B
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWireCanonical(Z)[B

    move-result-object v0

    return-object v0
.end method
