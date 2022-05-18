.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x35ef7ae628ad0604L


# instance fields
.field private port:I

.field private priority:I

.field private target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private weight:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getAdditionalName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;-><init>()V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->priority:I

    return v0
.end method

.method public getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->weight:I

    return v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->priority:I

    .line 30
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->weight:I

    .line 31
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->port:I

    .line 32
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 33
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->priority:I

    .line 22
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->weight:I

    .line 23
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->port:I

    .line 24
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 25
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->priority:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 62
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->weight:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->port:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->target:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 65
    return-void
.end method
