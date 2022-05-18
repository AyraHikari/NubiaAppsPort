.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1e26a88ea45bc233L


# instance fields
.field private addr:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLjava/net/InetAddress;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 32
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 33
    invoke-static {p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    .line 38
    return-void
.end method

.method private static final fromArray([B)I
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static final toArray(I)[B
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 28
    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->toArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->toArray(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getAddressBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    .line 46
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    .line 42
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->toArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->addr:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 62
    return-void
.end method
