.class public Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;
.super Ljava/lang/Object;
.source "DoubleCache.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;


# instance fields
.field private diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

.field private memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    .line 6
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->clear()V

    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->clear()V

    .line 30
    return-void
.end method

.method public getCache(Ljava/lang/String;)[B
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 10
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 11
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-virtual {v1, p1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->putCache(Ljava/lang/String;[B)V

    .line 17
    :cond_0
    return-object v0
.end method

.method public putCache(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->putCache(Ljava/lang/String;[B)V

    .line 23
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DoubleCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->putCache(Ljava/lang/String;[B)V

    .line 24
    return-void
.end method
