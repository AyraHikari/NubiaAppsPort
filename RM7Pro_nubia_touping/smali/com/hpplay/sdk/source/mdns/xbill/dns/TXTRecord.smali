.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x50397a0652cbc79eL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getStrings()Ljava/util/List;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->getStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStringsAsByteArrays()Ljava/util/List;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->getStringsAsByteArrays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
