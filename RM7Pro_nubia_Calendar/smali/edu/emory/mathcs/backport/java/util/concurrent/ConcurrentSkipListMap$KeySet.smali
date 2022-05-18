.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation


# instance fields
.field private final m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .param p1, "map"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .prologue
    .line 2330
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 2338
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2333
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2374
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2

    .prologue
    .line 2403
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2360
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 2370
    :cond_0
    :goto_0
    return v3

    .line 2362
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 2364
    check-cast v0, Ljava/util/Collection;

    .line 2366
    .local v0, "c":Ljava/util/Collection;
    :try_start_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2367
    :catch_0
    move-exception v1

    .line 2368
    .local v1, "unused":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2369
    .end local v1    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 2370
    .local v1, "unused":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 2337
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "toElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 2386
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 2397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 2339
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 2336
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2344
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2345
    .local v0, "e":Ljava/util/Map$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2348
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2349
    .local v0, "e":Ljava/util/Map$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2334
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toElement"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 2380
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 2394
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 2390
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 2400
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2351
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 2352
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
