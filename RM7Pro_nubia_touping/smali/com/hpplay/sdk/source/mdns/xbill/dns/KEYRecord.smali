.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x589e41991f74c08aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;-><init>()V

    .line 17
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
    .line 20
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;-><init>()V

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
    const v2, 0xc000

    .line 25
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->flags:I

    .line 27
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->flags:I

    if-gez v1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->proto:I

    .line 32
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->proto:I

    if-gez v1, :cond_1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->alg:I

    .line 37
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->alg:I

    if-gez v1, :cond_2

    .line 38
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

    .line 40
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->flags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->key:[B

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;->key:[B

    goto :goto_0
.end method
