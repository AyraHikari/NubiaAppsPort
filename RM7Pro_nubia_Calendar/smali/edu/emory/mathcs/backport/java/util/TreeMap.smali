.class public Ledu/emory/mathcs/backport/java/util/TreeMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/TreeMap$SubMap;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$IOIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingKeySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntrySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingValueIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingKeyIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntryIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$ValueIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$KeyIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private transient descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

.field private transient entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;

.field private transient modCount:I

.field private transient navigableKeySet:Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;

.field private transient reverseComparator:Ljava/util/Comparator;

.field private transient root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

.field private transient size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 40
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 41
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 40
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 41
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 53
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 40
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 41
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 63
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 2
    .param p1, "map"    # Ljava/util/SortedMap;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 40
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 41
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 57
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 58
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V

    .line 59
    return-void
.end method

.method static access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->delete(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-void
.end method

.method static access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 31
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1200(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getMatchingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1300(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 31
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLastEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1500(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 31
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/Comparator;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static access$1700(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1800(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$1900(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$2000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 31
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    return v0
.end method

.method static access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 31
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->successor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$900(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 31
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->predecessor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z
    .locals 1
    .param p0, "p"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 511
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$500(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v0

    goto :goto_0
.end method

.method private static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;
    .param p2, "cmp"    # Ljava/util/Comparator;

    .prologue
    .line 934
    if-nez p2, :cond_0

    check-cast p0, Ljava/lang/Comparable;

    .end local p0    # "o1":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .restart local p0    # "o1":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static containsNull(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z
    .locals 2
    .param p0, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    const/4 v0, 0x1

    .line 1118
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return v0

    .line 1119
    :cond_1
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsNull(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    :cond_2
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsNull(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static containsValue(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 1125
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v0

    .line 1126
    :cond_1
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsValue(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    :cond_2
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsValue(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createFromSorted(Ljava/util/Iterator;III)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 8
    .param p0, "itr"    # Ljava/util/Iterator;
    .param p1, "size"    # I
    .param p2, "level"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 411
    add-int/lit8 p2, p2, 0x1

    .line 412
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    add-int/lit8 v6, p1, -0x1

    shr-int/lit8 v2, v6, 0x1

    .line 414
    .local v2, "leftSize":I
    add-int/lit8 v6, p1, -0x1

    sub-int v5, v6, v2

    .line 415
    .local v5, "rightSize":I
    invoke-static {p0, v2, p2, p3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->createFromSorted(Ljava/util/Iterator;III)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 416
    .local v1, "left":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 417
    .local v3, "orig":Ljava/util/Map$Entry;
    invoke-static {p0, v5, p2, p3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->createFromSorted(Ljava/util/Iterator;III)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v4

    .line 418
    .local v4, "right":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-eqz v1, :cond_2

    .line 420
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 421
    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 423
    :cond_2
    if-eqz v4, :cond_3

    .line 424
    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 425
    invoke-static {v4, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 427
    :cond_3
    if-ne p2, p3, :cond_0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$502(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)Z

    goto :goto_0
.end method

.method private delete(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 5
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    .line 441
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 442
    const/4 v2, 0x0

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 443
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 500
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 448
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->successor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 449
    .local v1, "s":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$402(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$602(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move-object p1, v1

    .line 457
    .end local v1    # "s":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_6

    .line 459
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$500(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 460
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->fixAfterDeletion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 464
    :cond_2
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 465
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 466
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 469
    :cond_3
    :goto_1
    invoke-static {p1, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 498
    :cond_4
    :goto_2
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 499
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    goto :goto_0

    .line 467
    :cond_5
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 468
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_1

    .line 474
    :cond_6
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 475
    .local v0, "replacement":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_7

    .line 476
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 479
    :cond_7
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 481
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-nez v2, :cond_8

    .line 482
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 488
    :goto_3
    invoke-static {p1, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 489
    invoke-static {p1, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 490
    invoke-static {p1, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 493
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$500(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 494
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->fixAfterDeletion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_2

    .line 483
    :cond_8
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 484
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_3

    .line 486
    :cond_9
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_3
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 930
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private final fixAfterDeletion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 624
    move-object v1, p1

    .line 625
    .local v1, "x":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-eq v1, v2, :cond_7

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_7

    .line 626
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 627
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 628
    .local v0, "sib":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    invoke-static {v0, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 630
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 631
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 632
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 634
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 636
    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 637
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_0

    .line 640
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 641
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 642
    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 643
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 644
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 646
    :cond_2
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    invoke-static {v0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 647
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 648
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 649
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 650
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto/16 :goto_0

    .line 654
    .end local v0    # "sib":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_3
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 655
    .restart local v0    # "sib":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 656
    invoke-static {v0, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 657
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 658
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 659
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 661
    :cond_4
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_5

    .line 663
    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 664
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto/16 :goto_0

    .line 667
    :cond_5
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-ne v2, v3, :cond_6

    .line 668
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 669
    invoke-static {v0, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 670
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 671
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 673
    :cond_6
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    invoke-static {v0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 674
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 675
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 676
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 677
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto/16 :goto_0

    .line 681
    .end local v0    # "sib":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_7
    invoke-static {v1, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 682
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    return-object v2
.end method

.method private final fixAfterInsertion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 6
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 576
    invoke-static {p1, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$502(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)Z

    .line 577
    move-object v0, p1

    .line 579
    .local v0, "x":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-eq v0, v2, :cond_6

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$500(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 580
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 581
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 582
    .local v1, "y":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 583
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 584
    invoke-static {v1, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 585
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 586
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 589
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 590
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 591
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 593
    :cond_2
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 594
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 595
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 596
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto/16 :goto_0

    .line 600
    .end local v1    # "y":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_3
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 601
    .restart local v1    # "y":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->colorOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 602
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 603
    invoke-static {v1, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 604
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 605
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto/16 :goto_0

    .line 608
    :cond_4
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 609
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 610
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 612
    :cond_5
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 613
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V

    .line 614
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 615
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto/16 :goto_0

    .line 619
    .end local v1    # "y":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_6
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v2, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$502(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)Z

    .line 620
    return-void
.end method

.method private getCeilingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 328
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 347
    :cond_0
    :goto_0
    return-object v2

    .line 330
    :cond_1
    :goto_1
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 331
    .local v0, "diff":I
    if-gez v0, :cond_3

    .line 332
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 334
    :cond_3
    if-lez v0, :cond_5

    .line 335
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 336
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_4
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    .line 340
    .local v2, "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 341
    move-object v1, v2

    .line 342
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_2

    .end local v2    # "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_5
    move-object v2, v1

    .line 347
    goto :goto_0
.end method

.method private getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 269
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v4, :cond_4

    .line 271
    :goto_0
    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_1
    return-object v3

    .line 272
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 273
    .local v1, "diff":I
    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_1

    .line 274
    :cond_2
    if-gez v1, :cond_3

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    :goto_2
    goto :goto_0

    :cond_3
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_2

    .end local v1    # "diff":I
    :cond_4
    move-object v0, p1

    .line 278
    check-cast v0, Ljava/lang/Comparable;

    .line 280
    .local v0, "c":Ljava/lang/Comparable;
    :goto_3
    if-eqz v2, :cond_0

    .line 281
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 282
    .restart local v1    # "diff":I
    if-nez v1, :cond_5

    move-object v3, v2

    goto :goto_1

    .line 283
    :cond_5
    if-gez v1, :cond_6

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    :goto_4
    goto :goto_3

    :cond_6
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_4
.end method

.method private getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 314
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 316
    :goto_0
    return-object v1

    .line 315
    :cond_0
    :goto_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 316
    goto :goto_0
.end method

.method private getFloorEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 376
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 377
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 396
    :cond_0
    :goto_0
    return-object v2

    .line 379
    :cond_1
    :goto_1
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 380
    .local v0, "diff":I
    if-lez v0, :cond_3

    .line 381
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 383
    :cond_3
    if-gez v0, :cond_5

    .line 384
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 385
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    .line 388
    :cond_4
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    .line 389
    .local v2, "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 390
    move-object v1, v2

    .line 391
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_2

    .end local v2    # "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_5
    move-object v2, v1

    .line 396
    goto :goto_0
.end method

.method private getHigherEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 289
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 290
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 292
    :cond_1
    :goto_1
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 293
    .local v0, "diff":I
    if-gez v0, :cond_3

    .line 294
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 298
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_1

    .line 301
    :cond_4
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 302
    .local v1, "parent":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 303
    move-object v2, v1

    .line 304
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_2
.end method

.method private getLastEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 321
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 323
    :goto_0
    return-object v1

    .line 322
    :cond_0
    :goto_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 323
    goto :goto_0
.end method

.method private getLowerEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 352
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 353
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object v2

    .line 355
    :cond_1
    :goto_1
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v3, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 356
    .local v0, "diff":I
    if-lez v0, :cond_3

    .line 357
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 361
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_1

    .line 364
    :cond_4
    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    .line 365
    .local v2, "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 366
    move-object v1, v2

    .line 367
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_2
.end method

.method private getMatchingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 757
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 760
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    .line 758
    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    .line 760
    .local v1, "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ledu/emory/mathcs/backport/java/util/TreeMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method private static leftOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "p"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 532
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method static parentOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "p"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 518
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method private static predecessor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2
    .param p0, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 253
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 259
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 260
    move-object p0, v0

    .line 261
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 263
    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .end local p0    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_2
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1727
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1728
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1730
    .local v1, "size":I
    :try_start_0
    new-instance v2, Ledu/emory/mathcs/backport/java/util/TreeMap$IOIterator;

    invoke-direct {v2, p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$IOIterator;-><init>(Ljava/io/ObjectInputStream;I)V

    invoke-virtual {p0, v2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V
    :try_end_0
    .catch Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1738
    return-void

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;->getException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1735
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;
    :catch_1
    move-exception v0

    .line 1736
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;->getException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static rightOf(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 1
    .param p0, "p"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 539
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method private final rotateLeft(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 2
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 544
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 545
    .local v0, "r":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 546
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 548
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 549
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 554
    :goto_0
    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 555
    invoke-static {p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 556
    return-void

    .line 550
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 551
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_0
.end method

.method private final rotateRight(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 2
    .param p1, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 560
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 561
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 562
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 564
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 565
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 570
    :goto_0
    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 571
    invoke-static {p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 572
    return-void

    .line 566
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 567
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_0

    .line 569
    :cond_2
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    goto :goto_0
.end method

.method private static setColor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)V
    .locals 0
    .param p0, "p"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .param p1, "c"    # Z

    .prologue
    .line 525
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$502(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Z)Z

    .line 526
    :cond_0
    return-void
.end method

.method private static successor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 2
    .param p0, "e"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 236
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object p0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 241
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 242
    move-object p0, v0

    .line 243
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$100(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 245
    .end local v0    # "p":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .end local p0    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_2
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1717
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1718
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_0
    if-eqz v0, :cond_0

    .line 1719
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1720
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1718
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->successor(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 1722
    :cond_0
    return-void
.end method


# virtual methods
.method buildFromSorted(Ljava/util/Iterator;I)V
    .locals 3
    .param p1, "itr"    # Ljava/util/Iterator;
    .param p2, "size"    # I

    .prologue
    .line 401
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 402
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "bottom":I
    const/4 v1, 0x1

    .local v1, "ssize":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->createFromSorted(Ljava/util/Iterator;III)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 407
    return-void
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 975
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 976
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 984
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 71
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 72
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    :try_start_0
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "clone":Ledu/emory/mathcs/backport/java/util/TreeMap;
    const/4 v2, 0x0

    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 79
    iput v3, v0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 80
    iput v3, v0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 81
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V

    .line 84
    :cond_0
    return-object v0

    .line 77
    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/TreeMap;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1113
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1114
    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsNull(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->containsValue(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1045
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 1046
    .local v0, "map":Ledu/emory/mathcs/backport/java/util/NavigableMap;
    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;

    .end local v0    # "map":Ledu/emory/mathcs/backport/java/util/NavigableMap;
    move-object v1, p0

    move v4, v2

    move v5, v2

    move-object v6, v3

    move v7, v2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .restart local v0    # "map":Ledu/emory/mathcs/backport/java/util/NavigableMap;
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 1050
    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;

    .line 143
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->entrySet:Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1007
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1008
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1097
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1098
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1099
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 959
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 960
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 968
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 132
    .local v0, "entry":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "toInclusive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1076
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 991
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 992
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 999
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1000
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1015
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLastEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1016
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1103
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLastEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1104
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1105
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 943
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 944
    .local v0, "e":Ljava/util/Map$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 951
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 952
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

.method public navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingKeySet;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingKeySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;

    .line 1159
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->navigableKeySet:Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1023
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getFirstEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1024
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1027
    :goto_0
    return-object v1

    .line 1025
    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1026
    .local v1, "res":Ljava/util/Map$Entry;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->delete(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 1034
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getLastEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1035
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1038
    :goto_0
    return-object v1

    .line 1036
    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1037
    .local v1, "res":Ljava/util/Map$Entry;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->delete(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-nez v4, :cond_0

    .line 89
    new-instance v4, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-direct {v4, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 90
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 91
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 120
    :goto_0
    return-object v3

    .line 95
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->root:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 97
    .local v2, "t":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_1
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v4, v5}, Ledu/emory/mathcs/backport/java/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 98
    .local v0, "diff":I
    if-nez v0, :cond_1

    invoke-virtual {v2, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 99
    :cond_1
    if-gtz v0, :cond_3

    .line 100
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_1

    .line 102
    :cond_2
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 103
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 104
    new-instance v1, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-direct {v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 106
    invoke-static {v2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$002(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 107
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->fixAfterInsertion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :cond_3
    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    goto :goto_1

    .line 114
    :cond_4
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    .line 115
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->modCount:I

    .line 116
    new-instance v1, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-direct {v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .restart local v1    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$102(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 118
    invoke-static {v2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$202(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 119
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->fixAfterInsertion(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 1140
    instance-of v1, p1, Ljava/util/SortedMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1141
    check-cast v0, Ljava/util/SortedMap;

    .line 1142
    .local v0, "smap":Ljava/util/SortedMap;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V

    .line 1149
    .end local v0    # "smap":Ljava/util/SortedMap;
    :goto_0
    return-void

    .line 1148
    :cond_0
    invoke-super {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->getEntry(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1133
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1136
    :goto_0
    return-object v1

    .line 1134
    :cond_0
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1135
    .local v1, "old":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->delete(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    goto :goto_0
.end method

.method final reverseComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->reverseComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->reverseComparator:Ljava/util/Comparator;

    .line 1093
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->reverseComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1071
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, v2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 1058
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1081
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/backport/java/util/TreeMap$AscendingSubMap;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
