.class public abstract Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.source "LimitedMemoryCache.java"


# static fields
.field private static final MAX_NORMAL_CACHE_SIZE:I = 0x1000000

.field private static final MAX_NORMAL_CACHE_SIZE_IN_MB:I = 0x10


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "sizeLimit"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    .line 58
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_0

    .line 61
    const-string v0, "You set too large memory cache size (more than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 61
    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 105
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->clear()V

    .line 106
    return-void
.end method

.method protected abstract getSize(Landroid/graphics/Bitmap;)I
.end method

.method protected getSizeLimit()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "putSuccessfully":Z
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 71
    .local v4, "valueSize":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSizeLimit()I

    move-result v3

    .line 72
    .local v3, "sizeLimit":I
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 73
    .local v0, "curCacheSize":I
    if-ge v4, v3, :cond_2

    .line 74
    :cond_0
    :goto_0
    add-int v5, v0, v4

    if-le v5, v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    .local v2, "removedValue":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 80
    .end local v2    # "removedValue":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 83
    const/4 v1, 0x1

    .line 86
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 87
    return v1
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "value":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected abstract removeNext()Landroid/graphics/Bitmap;
.end method
