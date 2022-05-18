.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheRRset"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52dfefb855793de0L


# instance fields
.field credibility:I

.field expire:I


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;IJ)V
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    .line 110
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->credibility:I

    .line 111
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->access$000(JJ)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->expire:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;IJ)V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;-><init>()V

    .line 103
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->credibility:I

    .line 104
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->access$000(JJ)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->expire:I

    .line 105
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->addRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 106
    return-void
.end method


# virtual methods
.method public final compareCredibility(I)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->credibility:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final expired()Z
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 83
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->expire:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, " cl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->credibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
