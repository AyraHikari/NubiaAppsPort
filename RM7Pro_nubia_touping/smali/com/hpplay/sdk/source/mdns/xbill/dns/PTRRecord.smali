.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x737c6468424b3050L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 9

    .prologue
    .line 21
    const/16 v2, 0xc

    const-string v7, "target"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method
