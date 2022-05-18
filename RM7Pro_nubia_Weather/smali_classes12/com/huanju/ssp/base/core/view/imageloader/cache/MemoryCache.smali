.class public Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;


# instance fields
.field private memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit8 v0, v1, 0x8

    .line 19
    .local v0, "cacheSize":I
    new-instance v1, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache$1;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache$1;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;I)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;

    .line 25
    return-void
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->evictAll()V

    .line 44
    return-void
.end method

.method public getCache(Ljava/lang/String;)[B
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public putCache(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->memoryCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/MemoryCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
