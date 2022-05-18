.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;
    }
.end annotation


# static fields
.field private static final AXFR:I = 0x6

.field private static final END:I = 0x7

.field private static final FIRSTDATA:I = 0x1

.field private static final INITIALSOA:I = 0x0

.field private static final IXFR_ADD:I = 0x5

.field private static final IXFR_ADDSOA:I = 0x4

.field private static final IXFR_DEL:I = 0x3

.field private static final IXFR_DELSOA:I = 0x2


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

.field private current_serial:J

.field private dclass:I

.field private end_serial:J

.field private handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

.field private initialsoa:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

.field private ixfr_serial:J

.field private localAddress:Ljava/net/SocketAddress;

.field private qtype:I

.field private rtype:I

.field private state:I

.field private timeout:J

.field private tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

.field private verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

.field private want_fallback:Z

.field private zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->timeout:J

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJZLjava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->timeout:J

    .line 46
    iput-object p6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    .line 47
    iput-object p7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    .line 48
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 58
    :goto_0
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->dclass:I

    .line 60
    iput-wide p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->ixfr_serial:J

    .line 61
    iput-boolean p5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->want_fallback:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    .line 63
    return-void

    .line 52
    :cond_0
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->concatenate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneTransferIn: name too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$400(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J
    .locals 2

    .prologue
    .line 15
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v0

    return-wide v0
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->cleanup()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doxfr()V
    .locals 6

    .prologue
    const/16 v5, 0xfb

    const/4 v4, 0x7

    .line 285
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->sendQuery()V

    .line 287
    :cond_0
    :goto_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    if-eq v0, v4, :cond_2

    .line 288
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->recv()[B

    move-result-object v0

    .line 289
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    .line 293
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[B)I

    move-result v0

    .line 294
    if-eqz v0, :cond_1

    .line 295
    const-string v0, "TSIG failure"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 299
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 300
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    if-nez v0, :cond_6

    .line 301
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    move-result v0

    .line 302
    if-eqz v0, :cond_4

    .line 303
    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fallback()V

    .line 305
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->doxfr()V

    .line 333
    :cond_2
    :goto_1
    return-void

    .line 309
    :cond_3
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 312
    :cond_4
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v0

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    if-eq v0, v3, :cond_5

    .line 314
    const-string v0, "invalid question section"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 317
    :cond_5
    array-length v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    if-ne v0, v5, :cond_6

    .line 318
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fallback()V

    .line 319
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->doxfr()V

    goto :goto_1

    .line 324
    :cond_6
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 325
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->parseRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :cond_7
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->isVerified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string v0, "last message must be signed"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallback()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->want_fallback:Z

    if-nez v0, :cond_0

    .line 166
    const-string v0, "server doesn\'t support IXFR"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 169
    :cond_0
    const-string v0, "falling back to AXFR"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 170
    const/16 v0, 0xfc

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    .line 172
    return-void
.end method

.method private getBasicHandler()Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    instance-of v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneTransferIn used callback interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J
    .locals 2

    .prologue
    .line 149
    check-cast p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;

    .line 150
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->getSerial()J

    move-result-wide v0

    return-wide v0
.end method

.method private logxfr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static newAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
    .locals 1

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    const/16 p2, 0x35

    .line 74
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->newAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
    .locals 9

    .prologue
    .line 66
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    const/16 v3, 0xfc

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJZLjava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    return-object v1
.end method

.method public static newIXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JZLjava/lang/String;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
    .locals 7

    .prologue
    .line 83
    if-nez p5, :cond_0

    .line 84
    const/16 p5, 0x35

    .line 87
    :cond_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->newIXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JZLjava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JZLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
    .locals 9

    .prologue
    .line 91
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->newIXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JZLjava/lang/String;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JZLjava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
    .locals 9

    .prologue
    .line 79
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    const/16 v3, 0xfb

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJZLjava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    return-object v1
.end method

.method private openConnection()V
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->timeout:J

    add-long/2addr v0, v2

    .line 121
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    invoke-direct {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;-><init>(J)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 127
    return-void
.end method

.method private parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 2

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 277
    throw v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error parsing message"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xfb

    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 175
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v0

    .line 176
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    packed-switch v1, :pswitch_data_0

    .line 256
    const-string v0, "invalid state"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    if-eq v0, v4, :cond_1

    .line 179
    const-string v0, "missing initial SOA"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 182
    :cond_1
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->initialsoa:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 183
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->end_serial:J

    .line 184
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    if-ne v0, v6, :cond_2

    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->end_serial:J

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->ixfr_serial:J

    invoke-static {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Serial;->compare(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    .line 185
    const-string v0, "up to date"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 186
    iput v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto :goto_0

    .line 188
    :cond_2
    iput v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto :goto_0

    .line 192
    :pswitch_1
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    if-ne v1, v6, :cond_3

    if-ne v0, v4, :cond_3

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->ixfr_serial:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 193
    iput v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->rtype:I

    .line 194
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->startIXFR()V

    .line 195
    const-string v0, "got incremental response"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 196
    iput v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    .line 205
    :goto_1
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->parseRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto :goto_0

    .line 198
    :cond_3
    const/16 v0, 0xfc

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->rtype:I

    .line 199
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->startAXFR()V

    .line 200
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->initialsoa:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 201
    const-string v0, "got nonincremental response"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 202
    iput v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto :goto_1

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->startIXFRDeletes(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto :goto_0

    .line 212
    :pswitch_3
    if-ne v0, v4, :cond_4

    .line 213
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->current_serial:J

    .line 214
    const/4 v0, 0x4

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    .line 215
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->parseRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto :goto_0

    .line 222
    :pswitch_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->startIXFRAdds(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 223
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 226
    :pswitch_5
    if-ne v0, v4, :cond_7

    .line 227
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getSOASerial(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v0

    .line 228
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->end_serial:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 229
    iput v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 233
    :cond_5
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->current_serial:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 234
    iput v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    .line 235
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->parseRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto/16 :goto_0

    .line 239
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IXFR out of sync: expected serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->current_serial:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto/16 :goto_0

    .line 245
    :pswitch_6
    if-ne v0, v7, :cond_8

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v1

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->dclass:I

    if-ne v1, v2, :cond_0

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v1, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 247
    if-ne v0, v4, :cond_0

    .line 248
    iput v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 253
    :pswitch_7
    const-string v0, "extra data"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private sendQuery()V
    .locals 21

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->dclass:I

    invoke-static {v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 131
    new-instance v20, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct/range {v20 .. v20}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 132
    invoke-virtual/range {v20 .. v20}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 133
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_0

    .line 135
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->dclass:I

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v9, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->ixfr_serial:J

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JJJJJ)V

    .line 136
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    if-eqz v2, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    const/4 v2, 0x0

    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V

    .line 141
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-virtual/range {v20 .. v20}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;

    .line 144
    :cond_1
    const v2, 0xffff

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(I)[B

    move-result-object v2

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->client:Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->send([B)V

    .line 146
    return-void
.end method


# virtual methods
.method public getAXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getBasicHandler()Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getBasicHandler()Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->zname:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->qtype:I

    return v0
.end method

.method public isAXFR()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getBasicHandler()Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIXFR()Z
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()Ljava/util/List;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$1;)V

    .line 349
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->run(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;)V

    .line 350
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public run(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->handler:Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->openConnection()V

    .line 340
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->doxfr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->closeConnection()V

    .line 345
    return-void

    .line 342
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->closeConnection()V

    throw v0
.end method

.method public setDClass(I)V
    .locals 0

    .prologue
    .line 111
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 112
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->dclass:I

    .line 113
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    .line 117
    return-void
.end method

.method public setTimeout(I)V
    .locals 4

    .prologue
    .line 103
    if-gez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->timeout:J

    .line 108
    return-void
.end method
