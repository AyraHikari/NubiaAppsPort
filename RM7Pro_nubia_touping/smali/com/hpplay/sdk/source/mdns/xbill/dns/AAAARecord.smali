.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3fadfcc386bcd552L


# instance fields
.field private address:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getAddressBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    .line 28
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    .line 24
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 33
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    invoke-static {v0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0:0:0:0:0:ffff:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 41
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    const/16 v4, 0xf

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 35
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->address:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 61
    return-void
.end method
