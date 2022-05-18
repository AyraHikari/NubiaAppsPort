.class public final Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;
.super Ljava/lang/Object;
.source "MemoryCacheUtils.java"


# static fields
.field private static final URI_AND_SIZE_SEPARATOR:Ljava/lang/String; = "_"

.field private static final WIDTH_AND_HEIGHT_SEPARATOR:Ljava/lang/String; = "x"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createFuzzyKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils$1;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils$1;-><init>()V

    return-object v0
.end method

.method public static findCacheKeysForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List;
    .locals 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "memoryCache"    # Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static findCachedBitmapsForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List;
    .locals 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "memoryCache"    # Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-interface {p1, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;
    .locals 2
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)V
    .locals 5
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "memoryCache"    # Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .prologue
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "keyToRemove":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 115
    .end local v1    # "keyToRemove":Ljava/lang/String;
    :cond_2
    return-void
.end method
