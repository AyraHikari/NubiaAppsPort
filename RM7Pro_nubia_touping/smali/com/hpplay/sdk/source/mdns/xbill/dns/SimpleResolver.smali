.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;


# static fields
.field private static defaultResolver:Ljava/lang/String;

.field private static uniqueID:I


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

.field private timeoutValue:J

.field private tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "localhost"

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->timeoutValue:J

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->server()Ljava/lang/String;

    move-result-object p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 38
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 44
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 45
    return-void

    .line 41
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private applyEDNS(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 136
    :cond_0
    return-void
.end method

.method private maxUDPSize(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    const/16 v0, 0x200

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getPayloadSize()I

    move-result v0

    goto :goto_0
.end method

.method private parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "verbose"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error parsing message"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->newAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/net/SocketAddress;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->setTimeout(I)V

    .line 232
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 235
    :try_start_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->run()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(I)V

    .line 242
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 243
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 244
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    return-object v1
.end method

.method private verifyTSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 4

    .prologue
    .line 123
    if-eqz p4, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)I

    move-result v0

    .line 125
    const-string v1, "verbose"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method getTimeout()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->timeoutValue:J

    return-wide v0
.end method

.method public send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 147
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v0

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->sendAXFR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 155
    invoke-direct {p0, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->applyEDNS(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    invoke-virtual {v1, v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V

    .line 160
    :cond_1
    const v0, 0xffff

    invoke-virtual {v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(I)[B

    move-result-object v2

    .line 161
    invoke-direct {p0, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->maxUDPSize(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)I

    move-result v3

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->timeoutValue:J

    add-long/2addr v4, v0

    move v0, v7

    .line 167
    :goto_1
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->useTCP:Z

    if-nez v1, :cond_2

    array-length v1, v2

    if-le v1, v3, :cond_a

    :cond_2
    move v9, v8

    .line 172
    :goto_2
    if-eqz v9, :cond_3

    .line 173
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    .line 178
    :goto_3
    array-length v1, v0

    const/16 v10, 0xc

    if-ge v1, v10, :cond_4

    .line 179
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid DNS header - too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    goto :goto_3

    .line 182
    :cond_4
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v10, v0, v8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v1, v10

    .line 183
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v10

    .line 184
    if-ne v1, v10, :cond_7

    .line 185
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    .line 186
    iget-object v10, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-direct {p0, v6, v1, v0, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->verifyTSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    .line 187
    if-nez v9, :cond_5

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->ignoreTruncation:Z

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v1

    .line 188
    goto/16 :goto_0

    :cond_6
    move v0, v8

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid message id: expected "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "; got id "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v9, :cond_8

    .line 195
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_8
    const-string v1, "verbose"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 199
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    move v0, v9

    goto/16 :goto_1

    :cond_a
    move v9, v0

    goto/16 :goto_2
.end method

.method public sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    sget v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->uniqueID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->uniqueID:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 210
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 224
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 225
    return-object v1

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 217
    :cond_0
    const-string v0, "(none)"

    goto :goto_0
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 66
    return-void
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 62
    return-void
.end method

.method public setEDNS(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 91
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6

    .prologue
    .line 78
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid EDNS level - must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    const/16 v1, 0x500

    .line 85
    :goto_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    const/4 v2, 0x0

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    .line 87
    return-void

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->ignoreTruncation:Z

    .line 75
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 58
    return-void
.end method

.method public setTCP(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->useTCP:Z

    .line 71
    return-void
.end method

.method public setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    .line 95
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->setTimeout(II)V

    .line 103
    return-void
.end method

.method public setTimeout(II)V
    .locals 4

    .prologue
    .line 98
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;->timeoutValue:J

    .line 99
    return-void
.end method
