.class Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubKeySet"
.end annotation


# instance fields
.field private final this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V
    .locals 0
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    .prologue
    .line 1458
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1494
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1464
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v0

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 1489
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1493
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 1515
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 1478
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1495
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 1485
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1492
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1501
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1502
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
    .line 1505
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1506
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
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1468
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v2, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return v1

    .line 1469
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v2

    invoke-static {v2, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1470
    .local v0, "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-eqz v0, :cond_0

    .line 1471
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 1472
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toElement"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 1511
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 1475
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 1518
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 1481
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeySet;->tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
