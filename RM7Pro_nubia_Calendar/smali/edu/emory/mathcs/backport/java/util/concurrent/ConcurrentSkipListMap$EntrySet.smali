.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySet"
.end annotation


# instance fields
.field private final m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .param p1, "map"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .prologue
    .line 2437
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 2438
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 2439
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 2470
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 2449
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 2453
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 2451
    check-cast v0, Ljava/util/Map$Entry;

    .line 2452
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2453
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2472
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 2482
    :cond_0
    :goto_0
    return v3

    .line 2474
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 2476
    check-cast v0, Ljava/util/Collection;

    .line 2478
    .local v0, "c":Ljava/util/Collection;
    :try_start_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

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

    .line 2479
    :catch_0
    move-exception v1

    .line 2480
    .local v1, "unused":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2481
    .end local v1    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 2482
    .local v1, "unused":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2456
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 2457
    const/4 v1, 0x0

    .line 2459
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 2458
    check-cast v0, Ljava/util/Map$Entry;

    .line 2459
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2485
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
    .line 2486
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
