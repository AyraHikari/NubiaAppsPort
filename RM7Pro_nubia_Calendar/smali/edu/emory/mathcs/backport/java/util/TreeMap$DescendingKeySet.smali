.class Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingKeySet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 886
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 898
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 893
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeyIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$KeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-object v0
.end method

.method public descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 897
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 899
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 889
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeyIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1300(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 896
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 905
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 906
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
    .line 909
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 910
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

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toElement"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 915
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 922
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/NavigableSet;

    return-object v0
.end method
