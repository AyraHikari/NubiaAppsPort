.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7874d826330d9b3aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFlags()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getFlags()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFootprint()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getFootprint()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKey()[B
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getProtocol()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getProtocol()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->flags:I

    .line 25
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->proto:I

    .line 26
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->alg:I

    .line 28
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->alg:I

    if-gez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->key:[B

    .line 32
    return-void
.end method
