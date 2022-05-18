.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;
.super Ledu/emory/mathcs/backport/java/util/AbstractCollection;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation


# instance fields
.field private final m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .param p1, "map"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .prologue
    .line 2410
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    .line 2411
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 2412
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 2430
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2426
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2431
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
    .line 2432
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
