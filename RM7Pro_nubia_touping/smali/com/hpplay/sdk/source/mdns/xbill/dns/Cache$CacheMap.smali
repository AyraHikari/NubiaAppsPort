.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheMap"
.end annotation


# instance fields
.field private maxsize:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    .line 31
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    .line 32
    return-void
.end method


# virtual methods
.method getMaxSize()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setMaxSize(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->maxsize:I

    .line 20
    return-void
.end method
