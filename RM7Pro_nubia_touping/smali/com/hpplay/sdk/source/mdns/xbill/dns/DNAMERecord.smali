.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2510790d5526c57aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 9

    .prologue
    .line 18
    const/16 v2, 0x27

    const-string v7, "alias"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getAlias()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;->getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;->getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method
