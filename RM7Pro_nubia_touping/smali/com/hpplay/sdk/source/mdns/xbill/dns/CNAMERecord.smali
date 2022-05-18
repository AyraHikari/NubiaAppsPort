.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x37cb3cbfd07c7ad4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;->getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method
