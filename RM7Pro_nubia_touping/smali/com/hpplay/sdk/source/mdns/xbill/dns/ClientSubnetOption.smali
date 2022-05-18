.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x35ae759da4a28cebL


# instance fields
.field private address:Ljava/net/InetAddress;

.field private family:I

.field private scopeNetmask:I

.field private sourceNetmask:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method optionFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    .line 28
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    .line 31
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->addressLength(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_1

    .line 32
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid source netmask"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->scopeNetmask:I

    .line 34
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->scopeNetmask:I

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->addressLength(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_2

    .line 35
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid scope netmask"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 37
    array-length v1, v0

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-eq v1, v2, :cond_3

    .line 38
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid address"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->addressLength(I)I

    move-result v1

    new-array v1, v1, [B

    .line 40
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid padding"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "invalid address"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :cond_4
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, ", scope netmask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 3

    .prologue
    .line 54
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->family:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 55
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 56
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([BII)V

    .line 58
    return-void
.end method
