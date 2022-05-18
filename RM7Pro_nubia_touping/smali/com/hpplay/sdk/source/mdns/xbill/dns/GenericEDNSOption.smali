.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
.source "SourceFile"


# instance fields
.field private data:[B


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;-><init>(I)V

    .line 20
    const-string v0, "option data"

    const v1, 0xffff

    invoke-static {v0, p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->checkByteArrayLength(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;->data:[B

    .line 21
    return-void
.end method


# virtual methods
.method optionFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;->data:[B

    .line 26
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;->data:[B

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;->data:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 30
    return-void
.end method
