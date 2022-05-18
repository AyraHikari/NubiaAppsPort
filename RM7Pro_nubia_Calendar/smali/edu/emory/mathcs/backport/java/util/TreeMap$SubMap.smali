.class Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ledu/emory/mathcs/backport/java/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubMap"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field final fromKey:Ljava/lang/Object;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

.field final toKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 1746
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1749
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    if-nez v5, :cond_1

    move v5, v4

    :goto_1
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1757
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1758
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1789
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1767
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1768
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1761
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1790
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1755
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1756
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1787
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1759
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1760
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1762
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1791
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1753
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1754
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1766
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1763
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1764
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 1772
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1784
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 1780
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 1788
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method
