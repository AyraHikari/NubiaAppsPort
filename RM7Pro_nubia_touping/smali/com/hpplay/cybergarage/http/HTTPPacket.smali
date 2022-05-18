.class public Lcom/hpplay/cybergarage/http/HTTPPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-HTTPPacket"


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    .line 534
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 100
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPPacket;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    .line 534
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 105
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->set(Lcom/hpplay/cybergarage/http/HTTPPacket;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    .line 534
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 111
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    .line 113
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 114
    return-void
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 150
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 151
    :goto_0
    if-lez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    aget-byte v0, v2, v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 165
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-byte v0, v2, v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    .line 155
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v2, "Cyber-HTTPPacket"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 324
    return-void
.end method


# virtual methods
.method public addHeader(Lcom/hpplay/cybergarage/http/HTTPHeader;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/hpplay/cybergarage/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 381
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 382
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 578
    if-nez v0, :cond_1

    .line 579
    const-string v0, ""

    .line 594
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 581
    const-string v0, "charset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 582
    if-gez v0, :cond_2

    .line 583
    const-string v0, ""

    goto :goto_0

    .line 584
    :cond_2
    const-string v2, "charset"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 585
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gez v1, :cond_3

    .line 587
    const-string v0, ""

    goto :goto_0

    .line 588
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    .line 589
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gez v1, :cond_5

    .line 591
    const-string v0, ""

    goto :goto_0

    .line 592
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const-string v0, "Content-Language"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 606
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 661
    const/4 v0, 0x3

    new-array v1, v0, [J

    .line 662
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v6

    aput-wide v2, v1, v5

    aput-wide v2, v1, v4

    .line 663
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 702
    :goto_0
    return-object v0

    .line 665
    :cond_0
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 668
    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object v0, v1

    .line 670
    goto :goto_0

    .line 672
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " ="

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 675
    goto :goto_0

    .line 676
    :cond_3
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 679
    goto :goto_0

    .line 680
    :cond_4
    const-string v0, " -"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 686
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    .line 687
    goto :goto_0

    .line 688
    :cond_5
    const-string v0, "-/"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 695
    goto :goto_0

    .line 696
    :cond_6
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    const/4 v2, 0x2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move-object v0, v1

    .line 702
    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    goto :goto_3

    .line 691
    :catch_1
    move-exception v0

    goto :goto_2

    .line 683
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public getContentRangeFirstPosition()J
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 707
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getContentRangeInstanceLength()J
    .locals 2

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 717
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getContentRangeLastPosition()J
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 712
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getContentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getCharSet()Ljava/lang/String;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 523
    :goto_0
    return-object v0

    .line 519
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v1, "Cyber-HTTPPacket"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 331
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v1, " "

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, ""

    .line 333
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-gt v1, p1, :cond_0

    .line 334
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const-string v0, ""

    .line 338
    :cond_0
    return-object v0

    .line 336
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public getHeader(I)Lcom/hpplay/cybergarage/http/HTTPHeader;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/http/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;
    .locals 5

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 370
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 371
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(I)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 376
    :goto_1
    return-object v0

    .line 370
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 473
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 476
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(I)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v3

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 411
    if-nez v0, :cond_0

    .line 412
    const-string v0, ""

    .line 413
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/util/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    const-wide/16 v0, 0x0

    .line 465
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_1
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 614
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentInputStream()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentRange()Z
    .locals 1

    .prologue
    .line 648
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransferEncoding()Z
    .locals 1

    .prologue
    .line 793
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 123
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 125
    return-void
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_0

    .line 810
    const-string v0, "Chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCloseConnection()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_0

    .line 631
    const-string v0, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isKeepAliveConnection()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_0

    .line 640
    const-string v0, "Keep-Alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public read(Lcom/hpplay/cybergarage/http/HTTPSocket;)Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->init()V

    .line 313
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->set(Lcom/hpplay/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method protected set(Lcom/hpplay/cybergarage/http/HTTPPacket;)V
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 299
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v1

    .line 300
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 301
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(I)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v2

    .line 302
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->addHeader(Lcom/hpplay/cybergarage/http/HTTPHeader;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent([B)V

    .line 305
    return-void
.end method

.method protected set(Lcom/hpplay/cybergarage/http/HTTPSocket;)Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .locals 16

    .prologue
    .line 170
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 174
    :cond_0
    const/4 v2, 0x0

    .line 284
    :goto_0
    return v2

    .line 175
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/hpplay/cybergarage/http/HTTPStatus;

    invoke-direct {v3, v2}, Lcom/hpplay/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v2

    .line 180
    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 187
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 188
    new-instance v3, Lcom/hpplay/cybergarage/http/HTTPHeader;

    invoke-direct {v3, v2}, Lcom/hpplay/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Lcom/hpplay/cybergarage/http/HTTPHeader;)V

    .line 191
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 194
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 203
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 204
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 205
    new-instance v3, Lcom/hpplay/cybergarage/http/HTTPHeader;

    invoke-direct {v3, v2}, Lcom/hpplay/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Lcom/hpplay/cybergarage/http/HTTPHeader;)V

    .line 208
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 199
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 211
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 212
    const-string v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 216
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->isChunked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 218
    const-wide/16 v6, 0x0

    .line 219
    const/4 v2, 0x1

    if-ne v9, v2, :cond_d

    .line 221
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v2

    :goto_3
    move-wide v6, v2

    .line 231
    :goto_4
    :try_start_2
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_12

    .line 234
    invoke-static {}, Lcom/hpplay/cybergarage/http/HTTP;->getChunkSize()I

    move-result v11

    .line 237
    int-to-long v2, v11

    cmp-long v2, v6, v2

    if-lez v2, :cond_e

    int-to-long v2, v11

    :goto_6
    long-to-int v2, v2

    new-array v12, v2, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 240
    :goto_7
    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    .line 243
    sub-long v2, v6, v4

    .line 244
    int-to-long v14, v11

    cmp-long v13, v14, v2

    if-gez v13, :cond_9

    .line 245
    int-to-long v2, v11

    .line 246
    :cond_9
    const/4 v13, 0x0

    long-to-int v2, v2

    :try_start_3
    invoke-virtual {v8, v12, v13, v2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    .line 247
    if-gez v2, :cond_f

    .line 256
    :cond_a
    :goto_8
    const/4 v2, 0x1

    if-ne v9, v2, :cond_11

    .line 258
    const-wide/16 v2, 0x0

    .line 260
    :cond_b
    :try_start_4
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-virtual {v8, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v4

    .line 261
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_10

    .line 267
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hpplay/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    :goto_a
    move-wide v6, v2

    .line 276
    goto :goto_5

    .line 224
    :cond_c
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 229
    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getContentLength()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v6

    goto :goto_4

    :cond_e
    move-wide v2, v6

    .line 237
    goto :goto_6

    .line 249
    :cond_f
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v10, v12, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 250
    int-to-long v2, v2

    add-long/2addr v2, v4

    move-wide v4, v2

    .line 254
    goto :goto_7

    .line 251
    :catch_0
    move-exception v2

    .line 252
    :try_start_8
    const-string v3, "Cyber-HTTPPacket"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    .line 279
    :catch_1
    move-exception v2

    .line 280
    const-string v3, "Cyber-HTTPPacket"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 263
    :cond_10
    add-long/2addr v2, v4

    .line 264
    :try_start_9
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_b

    goto :goto_9

    .line 270
    :catch_2
    move-exception v2

    .line 271
    const-wide/16 v2, 0x0

    goto :goto_a

    .line 275
    :cond_11
    const-wide/16 v2, 0x0

    goto :goto_a

    .line 278
    :cond_12
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent([BZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 284
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method

.method public setCacheControl(I)V
    .locals 1

    .prologue
    .line 734
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 735
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 725
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 618
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 508
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 504
    :cond_0
    return-void
.end method

.method public setContent([B)V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 498
    return-void
.end method

.method public setContent([BZ)V
    .locals 2

    .prologue
    .line 491
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->content:[B

    .line 492
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 493
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 494
    :cond_0
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 538
    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 565
    const-string v0, "Content-Language"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public setContentLength(J)V
    .locals 1

    .prologue
    .line 602
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 603
    return-void
.end method

.method public setContentRange(JJJ)V
    .locals 5

    .prologue
    .line 652
    const-string v0, ""

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p5

    if-gez v0, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void

    .line 656
    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 553
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 780
    new-instance v0, Lcom/hpplay/cybergarage/http/Date;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 781
    const-string v1, "Date"

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public setHeader(Lcom/hpplay/cybergarage/http/HTTPHeader;)V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 398
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 402
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p2}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 765
    .line 766
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 768
    :cond_0
    const-string v0, "HOST"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 758
    .line 759
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    :cond_0
    const-string v0, "HOST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 447
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 451
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 746
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 430
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 421
    .line 422
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 424
    :cond_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 426
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 797
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    .line 135
    return-void
.end method
