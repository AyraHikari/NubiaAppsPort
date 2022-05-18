.class Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AscendingSubMap"
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
    .line 1557
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    .line 1558
    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 1559
    return-void
.end method


# virtual methods
.method protected ceiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absCeiling(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8

    .prologue
    .line 1605
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    if-nez v0, :cond_0

    .line 1606
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromStart:Z

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromKey:Ljava/lang/Object;

    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromInclusive:Z

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toEnd:Z

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toKey:Ljava/lang/Object;

    iget-boolean v7, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toInclusive:Z

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 1610
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    return-object v0
.end method

.method protected first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absLowest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected floor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absFloor(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "toInclusive"    # Z

    .prologue
    .line 1589
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromStart:Z

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromKey:Ljava/lang/Object;

    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->fromInclusive:Z

    const/4 v5, 0x0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method protected higher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absHigher(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absHighest()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected lower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1567
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->absLower(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

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

    .line 1578
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_0
    invoke-virtual {p0, p3, p4}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1584
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-object v3, p1

    move v4, p2

    move v5, v2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z

    .prologue
    .line 1597
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1600
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    const/4 v2, 0x0

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toEnd:Z

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toKey:Ljava/lang/Object;

    iget-boolean v7, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;->toInclusive:Z

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method protected uncheckedHigher(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 1573
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method
