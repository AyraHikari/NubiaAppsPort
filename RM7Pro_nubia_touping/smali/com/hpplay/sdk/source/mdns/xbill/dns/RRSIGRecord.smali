.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x243590b6b5a8564dL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V
    .locals 15

    .prologue
    .line 21
    const/16 v2, 0x2e

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFootprint()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getFootprint()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLabels()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getLabels()I

    move-result v0

    return v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getOrigTTL()J
    .locals 2

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getOrigTTL()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSigner()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getSigner()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeCovered()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getTypeCovered()I

    move-result v0

    return v0
.end method
