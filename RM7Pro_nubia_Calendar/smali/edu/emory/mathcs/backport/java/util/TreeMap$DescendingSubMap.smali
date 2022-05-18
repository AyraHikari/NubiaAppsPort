.class Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingSubMap"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p2, "fromStart"    # Z
    .param p3, "fromKey"    # Ljava/lang/Object;
    .param p4, "fromInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p6, "toKey"    # Ljava/lang/Object;
    .param p7, "toInclusive"    # Z

    .prologue
    .line 1616
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    .line 1617
    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 1618
    return-void
.end method


# virtual methods
.method protected ceiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1626
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absFloor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->reverseComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8

    .prologue
    .line 1662
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    if-nez v0, :cond_0

    .line 1663
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromKey:Ljava/lang/Object;

    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromInclusive:Z

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toKey:Ljava/lang/Object;

    iget-boolean v7, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toInclusive:Z

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 1668
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    return-object v0
.end method

.method protected first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1

    .prologue
    .line 1622
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected floor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1625
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absCeiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "toInclusive"    # Z

    .prologue
    .line 1646
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    const/4 v2, 0x0

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toKey:Ljava/lang/Object;

    iget-boolean v7, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->toInclusive:Z

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method protected higher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absLower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1

    .prologue
    .line 1623
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected lower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1624
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->absHigher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1635
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    :cond_0
    invoke-virtual {p0, p3, p4}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-object v3, p3

    move v4, p4

    move v5, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z

    .prologue
    .line 1654
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromKey:Ljava/lang/Object;

    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;->fromInclusive:Z

    const/4 v5, 0x0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method protected uncheckedHigher(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 1630
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$900(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method
