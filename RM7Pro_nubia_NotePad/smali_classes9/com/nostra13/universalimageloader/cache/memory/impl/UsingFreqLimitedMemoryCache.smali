.class public Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "UsingFreqLimitedMemoryCache.java"


# instance fields
.field private final usingCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "sizeLimit"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    .line 92
    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 1
    .param p1, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    .local v1, "value":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    .local v0, "usageCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0    # "usageCount":Ljava/lang/Integer;
    :cond_0
    return-object v1
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "value":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, "minUsageCount":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 103
    .local v4, "leastUsedValue":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 104
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;>;"
    iget-object v7, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    monitor-enter v7

    .line 105
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    if-nez v4, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 111
    .local v3, "lastValueUsage":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 112
    move-object v5, v3

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 117
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v3    # "lastValueUsage":Ljava/lang/Integer;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;->usingCounts:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v4

    .line 117
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
