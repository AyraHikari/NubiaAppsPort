.class public Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 48
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-gtz p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->maxSize:I

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 54
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->trimToSize(I)V

    .line 258
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 71
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I

    .line 72
    monitor-exit p0

    move-object v0, v1

    .line 106
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->missCount:I

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 86
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 89
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    monitor-enter p0

    .line 90
    :try_start_2
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->createCount:I

    .line 91
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_3

    .line 95
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 97
    :cond_3
    :try_start_3
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    goto :goto_1

    .line 99
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 105
    :cond_4
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->trimToSize(I)V

    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    monitor-enter p0

    .line 123
    :try_start_0
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->putCount:I

    .line 124
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    .line 125
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 127
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    .line 129
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_3
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->trimToSize(I)V

    .line 136
    return-object v0

    .line 129
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .line 186
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    .line 188
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :cond_2
    return-object v0

    .line 188
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 324
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I

    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 325
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 326
    .local v1, "hitPercent":I
    :cond_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->maxSize:I

    .line 327
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 326
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 324
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;, "Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 151
    :try_start_0
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 156
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    if-le v3, p1, :cond_2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    :cond_2
    monitor-exit p0

    .line 170
    return-void

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->size:I

    .line 165
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->evictionCount:I

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/huanju/ssp/base/core/view/imageloader/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
