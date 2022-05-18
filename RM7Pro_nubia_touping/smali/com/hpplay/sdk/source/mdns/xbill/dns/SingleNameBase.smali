.class abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x10e97ee72325L


# instance fields
.field protected singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 12
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 16
    invoke-static {p7, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 17
    return-void
.end method


# virtual methods
.method protected getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 27
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 22
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 39
    return-void
.end method
