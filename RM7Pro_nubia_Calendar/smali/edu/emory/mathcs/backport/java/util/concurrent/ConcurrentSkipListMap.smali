.class public Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    }
.end annotation


# static fields
.field private static final BASE_HEADER:Ljava/lang/Object;

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final LT:I = 0x2

.field private static final seedGenerator:Ljava/util/Random;

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private transient descendingMap:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

.field private transient entrySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

.field private volatile transient head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

.field private transient keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

.field private transient randomSeed:I

.field private transient values:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1402
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1404
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1405
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 1415
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 1416
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1417
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1418
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 1431
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1433
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1434
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    .line 1435
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .param p1, "m"    # Ljava/util/SortedMap;

    .prologue
    .line 1446
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 1447
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1448
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1449
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1450
    return-void
.end method

.method static access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    return-object v0
.end method

.method private addIndex(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V
    .locals 9
    .param p1, "idx"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p2, "h"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .param p3, "indexLevel"    # I

    .prologue
    .line 993
    move v1, p3

    .line 994
    .local v1, "insertionLevel":I
    iget-object v8, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v8, v8, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 995
    .local v3, "key":Ljava/lang/Comparable;
    if-nez v3, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 1000
    :cond_0
    iget v2, p2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 1001
    .local v2, "j":I
    move-object v5, p2

    .line 1002
    .local v5, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget-object v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1003
    .local v6, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    move-object v7, p1

    .line 1005
    .local v7, "t":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_0
    if-eqz v6, :cond_2

    .line 1006
    iget-object v4, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1008
    .local v4, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v8, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 1009
    .local v0, "c":I
    iget-object v8, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 1010
    invoke-virtual {v5, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1012
    iget-object v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1013
    goto :goto_0

    .line 1015
    :cond_1
    if-lez v0, :cond_2

    .line 1016
    move-object v5, v6

    .line 1017
    iget-object v6, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1018
    goto :goto_0

    .line 1022
    .end local v0    # "c":I
    .end local v4    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_2
    if-ne v2, v1, :cond_5

    .line 1024
    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1025
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1034
    :cond_3
    :goto_1
    return-void

    .line 1028
    :cond_4
    invoke-virtual {v5, v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->link(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1030
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    .line 1032
    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1033
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    .line 1038
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_6

    if-ge v2, p3, :cond_6

    .line 1039
    iget-object v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1040
    :cond_6
    iget-object v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1041
    iget-object v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 15
    .param p1, "map"    # Ljava/util/SortedMap;

    .prologue
    .line 1477
    if-nez p1, :cond_0

    .line 1478
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1480
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1481
    .local v2, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1485
    .local v0, "basepred":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v10, "preds":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v14, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v4, v14, :cond_1

    .line 1489
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1490
    :cond_1
    move-object v11, v2

    .line 1491
    .local v11, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget v4, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v4, :cond_2

    .line 1492
    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1493
    iget-object v11, v11, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1491
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1496
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1498
    .local v7, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1499
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1500
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v8

    .line 1501
    .local v8, "j":I
    iget v14, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v8, v14, :cond_4

    iget v14, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v8, v14, 0x1

    .line 1502
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 1503
    .local v9, "k":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 1504
    .local v12, "v":Ljava/lang/Object;
    if-eqz v9, :cond_5

    if-nez v12, :cond_6

    .line 1505
    :cond_5
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1506
    :cond_6
    new-instance v13, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v12, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1507
    .local v13, "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iput-object v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1508
    move-object v0, v13

    .line 1509
    if-lez v8, :cond_3

    .line 1510
    const/4 v5, 0x0

    .line 1511
    .local v5, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    const/4 v4, 0x1

    move-object v6, v5

    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .local v6, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    move-object v3, v2

    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .local v3, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :goto_3
    if-gt v4, v8, :cond_a

    .line 1512
    new-instance v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v5, v13, v6, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1513
    .end local v6    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget v14, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v4, v14, :cond_9

    .line 1514
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v2, v14, v3, v5, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1516
    .end local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_7

    .line 1517
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v5, v14, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1518
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1511
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v6    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    move-object v3, v2

    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_3

    .line 1520
    .end local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .end local v6    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1524
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .end local v8    # "j":I
    .end local v9    # "k":Ljava/lang/Object;
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_8
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1525
    return-void

    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v1    # "e":Ljava/util/Map$Entry;
    .restart local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v8    # "j":I
    .restart local v9    # "k":Ljava/lang/Object;
    .restart local v12    # "v":Ljava/lang/Object;
    .restart local v13    # "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_9
    move-object v2, v3

    .end local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_4

    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v6    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :cond_a
    move-object v2, v3

    .end local v3    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_2
.end method

.method private declared-synchronized casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 1
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    if-ne v0, p1, :cond_0

    .line 362
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    const/4 v0, 0x1

    .line 366
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    .prologue
    .line 1194
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1196
    .local v0, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :cond_1
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1197
    .local v1, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    :cond_2
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_1

    .line 1200
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v2, :cond_3

    .line 1201
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 1202
    :cond_3
    return-void
.end method

.method private comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 625
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 626
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;-><init>(Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 628
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "okey"    # Ljava/lang/Object;

    .prologue
    .line 793
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    .line 794
    .local v4, "key":Ljava/lang/Comparable;
    const/4 v0, 0x0

    .line 795
    .local v0, "bound":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 796
    .local v6, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget-object v7, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 803
    .local v7, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_0
    if-eqz v7, :cond_4

    iget-object v5, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .local v5, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eq v5, v0, :cond_4

    iget-object v3, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 804
    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_0

    .line 805
    move-object v6, v7

    .line 806
    iget-object v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 807
    goto :goto_0

    .line 808
    :cond_0
    if-nez v1, :cond_3

    .line 809
    iget-object v8, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 810
    .local v8, "v":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 833
    .end local v1    # "c":I
    .end local v3    # "k":Ljava/lang/Object;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v8

    .line 810
    .restart local v1    # "c":I
    .restart local v3    # "k":Ljava/lang/Object;
    .restart local v8    # "v":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getUsingFindNode(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 812
    .end local v8    # "v":Ljava/lang/Object;
    :cond_3
    move-object v0, v5

    .line 816
    .end local v1    # "c":I
    .end local v3    # "k":Ljava/lang/Object;
    .end local v5    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_4
    iget-object v2, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .local v2, "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v2, :cond_5

    .line 817
    move-object v6, v2

    .line 818
    iget-object v7, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 820
    goto :goto_0

    .line 824
    :cond_5
    iget-object v9, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v5, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .restart local v5    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_2
    if-eqz v5, :cond_7

    .line 825
    iget-object v3, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .restart local v3    # "k":Ljava/lang/Object;
    if-eqz v3, :cond_8

    .line 826
    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "c":I
    if-nez v1, :cond_6

    .line 827
    iget-object v8, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 828
    .restart local v8    # "v":Ljava/lang/Object;
    if-nez v8, :cond_1

    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getUsingFindNode(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 829
    .end local v8    # "v":Ljava/lang/Object;
    :cond_6
    if-gez v1, :cond_8

    .line 833
    .end local v1    # "c":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 824
    .restart local v3    # "k":Ljava/lang/Object;
    :cond_8
    iget-object v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_2
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p1, "kkey"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "onlyIfAbsent"    # Z

    .prologue
    .line 869
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 871
    .local v3, "key":Ljava/lang/Comparable;
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 872
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 874
    .local v5, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_1
    if-eqz v5, :cond_4

    .line 875
    iget-object v2, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 876
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v8, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v5, v8, :cond_0

    .line 878
    iget-object v6, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 879
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 880
    invoke-virtual {v5, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 883
    :cond_1
    if-eq v6, v5, :cond_0

    iget-object v8, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 885
    iget-object v8, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 886
    .local v1, "c":I
    if-lez v1, :cond_2

    .line 887
    move-object v0, v5

    .line 888
    move-object v5, v2

    .line 889
    goto :goto_1

    .line 891
    :cond_2
    if-nez v1, :cond_4

    .line 892
    if-nez p3, :cond_3

    invoke-virtual {v5, v6, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 906
    .end local v1    # "c":I
    .end local v2    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .end local v6    # "v":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-object v6

    .line 900
    :cond_4
    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v7, p1, p2, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 901
    .local v7, "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-virtual {v0, v5, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 903
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v4

    .line 904
    .local v4, "level":I
    if-lez v4, :cond_5

    .line 905
    invoke-direct {p0, v7, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->insertIndex(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;I)V

    .line 906
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .param p1, "key"    # Ljava/lang/Comparable;

    .prologue
    const/4 v5, 0x0

    .line 754
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 755
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 757
    .local v3, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_1
    if-nez v3, :cond_2

    move-object v3, v5

    .line 773
    .end local v3    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_1
    :goto_2
    return-object v3

    .line 759
    .restart local v3    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_2
    iget-object v2, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 760
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v6, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v3, v6, :cond_0

    .line 762
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 763
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 764
    invoke-virtual {v3, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 767
    :cond_3
    if-eq v4, v3, :cond_0

    iget-object v6, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 769
    iget-object v6, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 770
    .local v1, "c":I
    if-eqz v1, :cond_1

    .line 772
    if-gez v1, :cond_4

    move-object v3, v5

    .line 773
    goto :goto_2

    .line 774
    :cond_4
    move-object v0, v3

    .line 775
    move-object v3, v2

    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .param p1, "key"    # Ljava/lang/Comparable;

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 680
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 681
    .local v3, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 683
    .local v4, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_0
    if-eqz v4, :cond_2

    .line 684
    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 685
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v1, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 686
    .local v1, "k":Ljava/lang/Object;
    iget-object v5, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 687
    invoke-virtual {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 690
    goto :goto_0

    .line 692
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    .line 693
    move-object v3, v4

    .line 694
    iget-object v4, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 695
    goto :goto_0

    .line 698
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_2
    iget-object v0, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 699
    .local v0, "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v0, :cond_3

    .line 700
    move-object v3, v0

    .line 701
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    .line 703
    :cond_3
    iget-object v5, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v5
.end method

.method private findPredecessorOfLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4

    .prologue
    .line 1266
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1269
    .local v1, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_1
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .local v2, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v2, :cond_1

    .line 1270
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_0

    .line 1275
    :cond_0
    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_1

    .line 1276
    move-object v1, v2

    .line 1277
    goto :goto_1

    .line 1280
    :cond_1
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .local v0, "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v0, :cond_2

    .line 1281
    move-object v1, v0

    goto :goto_1

    .line 1283
    :cond_2
    iget-object v3, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v3
.end method

.method private getUsingFindNode(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Comparable;

    .prologue
    .line 849
    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 850
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_1

    .line 851
    const/4 v1, 0x0

    .line 854
    :goto_0
    return-object v1

    .line 852
    :cond_1
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 853
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private insertIndex(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;I)V
    .locals 15
    .param p1, "z"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .param p2, "level"    # I

    .prologue
    .line 938
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 939
    .local v1, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget v8, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 941
    .local v8, "max":I
    move/from16 v0, p2

    if-gt v0, v8, :cond_1

    .line 942
    const/4 v3, 0x0

    .line 943
    .local v3, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    const/4 v2, 0x1

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .local v4, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_0
    move/from16 v0, p2

    if-gt v2, v0, :cond_0

    .line 944
    new-instance v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 943
    .end local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    goto :goto_0

    .line 945
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v4, v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->addIndex(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    .line 982
    :goto_1
    return-void

    .line 956
    .end local v2    # "i":I
    .end local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :cond_1
    add-int/lit8 p2, v8, 0x1

    .line 957
    add-int/lit8 v14, p2, 0x1

    new-array v5, v14, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v5, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 958
    .local v5, "idxs":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    const/4 v3, 0x0

    .line 959
    .restart local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    const/4 v2, 0x1

    .restart local v2    # "i":I
    move-object v4, v3

    .end local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_2
    move/from16 v0, p2

    if-gt v2, v0, :cond_2

    .line 960
    new-instance v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V

    .end local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    aput-object v3, v5, v2

    .line 959
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    goto :goto_2

    .line 965
    :cond_2
    iget-object v13, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 966
    .local v13, "oldh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget v11, v13, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 967
    .local v11, "oldLevel":I
    move/from16 v0, p2

    if-gt v0, v11, :cond_3

    .line 968
    move/from16 v7, p2

    .line 980
    .local v7, "k":I
    :goto_3
    aget-object v14, v5, v7

    invoke-direct {p0, v14, v13, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->addIndex(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    goto :goto_1

    .line 971
    .end local v7    # "k":I
    :cond_3
    move-object v9, v13

    .line 972
    .local v9, "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget-object v12, v13, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 973
    .local v12, "oldbase":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    add-int/lit8 v6, v11, 0x1

    .local v6, "j":I
    move-object v10, v9

    .end local v9    # "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .local v10, "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :goto_4
    move/from16 v0, p2

    if-gt v6, v0, :cond_4

    .line 974
    new-instance v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    aget-object v14, v5, v6

    invoke-direct {v9, v12, v10, v14, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 973
    .end local v10    # "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v9    # "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    add-int/lit8 v6, v6, 0x1

    move-object v10, v9

    .end local v9    # "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v10    # "newh":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_4

    .line 975
    :cond_4
    invoke-direct {p0, v13, v10}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 976
    move v7, v11

    .line 977
    .restart local v7    # "k":I
    goto :goto_3
.end method

.method private randomLevel()I
    .locals 3

    .prologue
    .line 921
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 922
    .local v1, "x":I
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 923
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 924
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 925
    const v2, 0x8001

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 926
    const/4 v0, 0x0

    .line 929
    :cond_0
    return v0

    .line 927
    :cond_1
    const/4 v0, 0x1

    .line 928
    .local v0, "level":I
    :goto_0
    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1562
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1572
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1573
    .local v1, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1574
    .local v0, "basepred":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v9, "preds":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v14, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v3, v14, :cond_0

    .line 1576
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1577
    :cond_0
    move-object v10, v1

    .line 1578
    .local v10, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget v3, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v3, :cond_2

    .line 1579
    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1578
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .local v2, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .local v5, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .local v6, "j":I
    .local v7, "k":Ljava/lang/Object;
    .local v8, "key":Ljava/lang/Object;
    .local v11, "v":Ljava/lang/Object;
    .local v12, "val":Ljava/lang/Object;
    .local v13, "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_1
    move-object v1, v2

    .line 1584
    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .end local v6    # "j":I
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/Object;
    .end local v11    # "v":Ljava/lang/Object;
    .end local v12    # "val":Ljava/lang/Object;
    .end local v13    # "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .restart local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 1585
    .restart local v7    # "k":Ljava/lang/Object;
    if-nez v7, :cond_3

    .line 1612
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1613
    return-void

    .line 1587
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 1588
    .restart local v11    # "v":Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 1589
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1590
    :cond_4
    move-object v8, v7

    .line 1591
    .restart local v8    # "key":Ljava/lang/Object;
    move-object v12, v11

    .line 1592
    .restart local v12    # "val":Ljava/lang/Object;
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v6

    .line 1593
    .restart local v6    # "j":I
    iget v14, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v6, v14, :cond_5

    iget v14, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v6, v14, 0x1

    .line 1594
    :cond_5
    new-instance v13, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v12, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1595
    .restart local v13    # "z":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iput-object v13, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1596
    move-object v0, v13

    .line 1597
    if-lez v6, :cond_2

    .line 1598
    const/4 v4, 0x0

    .line 1599
    .local v4, "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    const/4 v3, 0x1

    move-object v5, v4

    .end local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    move-object v2, v1

    .end local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :goto_2
    if-gt v3, v6, :cond_1

    .line 1600
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v5, v14}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1601
    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    iget v14, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v3, v14, :cond_7

    .line 1602
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v1, v14, v2, v4, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1604
    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 1605
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v4, v14, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1606
    invoke-virtual {v9, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1599
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    move-object v2, v1

    .end local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_2

    .line 1608
    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .end local v5    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .restart local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v4    # "idx":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :cond_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :cond_7
    move-object v1, v2

    .end local v2    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .restart local v1    # "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 2321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v1, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2325
    :cond_0
    return-object v1
.end method

.method private tryReduceLevel()V
    .locals 5

    .prologue
    .line 1130
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1133
    .local v2, "h":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    iget v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v0, "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    if-eqz v0, :cond_0

    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v1, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    if-eqz v1, :cond_0

    iget-object v3, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v3, :cond_0

    .line 1141
    invoke-direct {p0, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->casHead(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    .line 1142
    .end local v0    # "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .end local v1    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1544
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1546
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1547
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1548
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1544
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1551
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1552
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2128
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2129
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1740
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1741
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1459
    const/4 v0, 0x0

    .line 1461
    .local v0, "clone":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    :try_start_0
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    .restart local v0    # "clone":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1467
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1468
    return-object v0

    .line 1462
    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    :catch_0
    move-exception v1

    .line 1463
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 637
    .local v0, "cmp":Ljava/util/Comparator;
    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 640
    .end local p1    # "k1":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "k1":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k1":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1628
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1693
    if-nez p1, :cond_0

    .line 1694
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1695
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1696
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1697
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1698
    const/4 v2, 0x1

    .line 1700
    .end local v1    # "v":Ljava/lang/Object;
    :goto_1
    return v2

    .line 1695
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1700
    .end local v1    # "v":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1844
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1838
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 1839
    .local v7, "dm":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;
    if-eqz v7, :cond_0

    .end local v7    # "dm":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;
    :goto_0
    return-object v7

    .restart local v7    # "dm":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    move-object v7, v0

    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "okey"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1068
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1070
    .local v3, "key":Ljava/lang/Comparable;
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1071
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1073
    .local v4, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 1104
    :cond_1
    :goto_2
    return-object v5

    .line 1075
    :cond_2
    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1076
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1078
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1079
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1080
    invoke-virtual {v4, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1083
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1085
    iget-object v7, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1086
    .local v1, "c":I
    if-gez v1, :cond_4

    move-object v5, v6

    .line 1087
    goto :goto_2

    .line 1088
    :cond_4
    if-lez v1, :cond_5

    .line 1089
    move-object v0, v4

    .line 1090
    move-object v4, v2

    .line 1091
    goto :goto_1

    .line 1093
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v5, v6

    .line 1094
    goto :goto_2

    .line 1095
    :cond_6
    invoke-virtual {v4, v5, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1097
    invoke-virtual {v4, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v4, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1098
    :cond_7
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_2

    .line 1100
    :cond_8
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1101
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_1

    .line 1102
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1168
    :cond_0
    :goto_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1169
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1170
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v2, :cond_1

    .line 1185
    :goto_1
    return-object v4

    .line 1172
    :cond_1
    iget-object v1, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1173
    .local v1, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v2, v5, :cond_0

    .line 1175
    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1176
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 1177
    invoke-virtual {v2, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1180
    :cond_2
    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1182
    invoke-virtual {v2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1183
    :cond_3
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1184
    :cond_4
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    .line 1185
    new-instance v4, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    iget-object v5, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1295
    :cond_0
    :goto_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1296
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1297
    .local v4, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v4, :cond_2

    .line 1298
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1330
    :goto_1
    return-object v6

    .line 1314
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .local v5, "v":Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_4

    .line 1315
    move-object v0, v4

    .line 1316
    move-object v4, v2

    .line 1304
    .end local v2    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2
    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1305
    .restart local v2    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1307
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1308
    .restart local v5    # "v":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 1309
    invoke-virtual {v4, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1312
    :cond_3
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v7, :cond_1

    goto :goto_0

    .line 1319
    :cond_4
    invoke-virtual {v4, v5, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1321
    iget-object v3, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 1322
    .local v3, "key":Ljava/lang/Object;
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1323
    .local v1, "ck":Ljava/lang/Comparable;
    invoke-virtual {v4, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v4, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1324
    :cond_5
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1330
    :cond_6
    :goto_2
    new-instance v6, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1326
    :cond_7
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1327
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_6

    .line 1328
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2307
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->entrySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 1834
    .local v0, "es":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;
    if-eqz v0, :cond_0

    .end local v0    # "es":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;
    :goto_0
    return-object v0

    .restart local v0    # "es":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0    # "es":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->entrySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1862
    if-ne p1, p0, :cond_1

    .line 1884
    :cond_0
    :goto_0
    return v6

    .line 1864
    :cond_1
    instance-of v8, p1, Ljava/util/Map;

    if-nez v8, :cond_2

    move v6, v7

    .line 1865
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 1866
    check-cast v3, Ljava/util/Map;

    .line 1868
    .local v3, "m":Ljava/util/Map;
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1869
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1870
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    .line 1871
    goto :goto_0

    .line 1873
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1874
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1875
    .restart local v0    # "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1876
    .local v2, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1877
    .local v5, "v":Ljava/lang/Object;
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_5

    :cond_6
    move v6, v7

    .line 1878
    goto :goto_0

    .line 1881
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "itr":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/Object;
    .end local v5    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .local v4, "unused":Ljava/lang/ClassCastException;
    move v6, v7

    .line 1882
    goto :goto_0

    .line 1883
    .end local v4    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v4

    .local v4, "unused":Ljava/lang/NullPointerException;
    move v6, v7

    .line 1884
    goto :goto_0
.end method

.method findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3

    .prologue
    .line 1152
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1153
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1154
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_1

    .line 1155
    const/4 v1, 0x0

    .line 1157
    .end local v1    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_0
    return-object v1

    .line 1156
    .restart local v1    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_1
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1158
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method findLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8

    .prologue
    .line 1221
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1224
    .local v4, "q":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :goto_0
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .local v5, "r":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v5, :cond_1

    .line 1225
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1226
    invoke-virtual {v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 1227
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1230
    :cond_0
    move-object v4, v5

    goto :goto_0

    .line 1231
    :cond_1
    iget-object v1, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .local v1, "d":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    if-eqz v1, :cond_2

    .line 1232
    move-object v4, v1

    goto :goto_0

    .line 1234
    :cond_2
    iget-object v0, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1235
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1237
    .local v3, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_1
    if-nez v3, :cond_4

    .line 1238
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    .end local v0    # "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_3
    return-object v0

    .line 1239
    .restart local v0    # "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_4
    iget-object v2, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1240
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v7, :cond_6

    .line 1252
    :cond_5
    :goto_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    .line 1242
    :cond_6
    iget-object v6, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1243
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_7

    .line 1244
    invoke-virtual {v3, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_2

    .line 1247
    :cond_7
    if-eq v6, v3, :cond_5

    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 1249
    move-object v0, v3

    .line 1250
    move-object v3, v2

    goto :goto_1
.end method

.method findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .param p1, "kkey"    # Ljava/lang/Object;
    .param p2, "rel"    # I

    .prologue
    const/4 v6, 0x0

    .line 1350
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1352
    .local v3, "key":Ljava/lang/Comparable;
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1353
    .local v0, "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1355
    .local v4, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_1
    if-nez v4, :cond_3

    .line 1356
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move-object v0, v6

    .line 1372
    .end local v0    # "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_2
    :goto_2
    return-object v0

    .line 1357
    .restart local v0    # "b":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_3
    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1358
    .local v2, "f":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_0

    .line 1360
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1361
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1362
    invoke-virtual {v4, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    .line 1365
    :cond_4
    if-eq v5, v4, :cond_0

    iget-object v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1367
    iget-object v7, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1368
    .local v1, "c":I
    if-nez v1, :cond_5

    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_6

    :cond_5
    if-gez v1, :cond_7

    and-int/lit8 v7, p2, 0x2

    if-nez v7, :cond_7

    :cond_6
    move-object v0, v4

    .line 1370
    goto :goto_2

    .line 1371
    :cond_7
    if-gtz v1, :cond_9

    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_9

    .line 1372
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v6, v0

    goto :goto_3

    .line 1373
    :cond_9
    move-object v0, v4

    .line 1374
    move-object v4, v2

    goto :goto_1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 2164
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2165
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_1

    .line 2166
    const/4 v0, 0x0

    .line 2169
    :goto_0
    return-object v0

    .line 2167
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2168
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1979
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    .line 1980
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1981
    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2097
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2106
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2107
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1646
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "rel"    # I

    .prologue
    .line 1387
    :cond_0
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1388
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_1

    .line 1389
    const/4 v0, 0x0

    .line 1392
    :goto_0
    return-object v0

    .line 1390
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 1391
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 7
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2016
    if-nez p1, :cond_0

    .line 2017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2018
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 2050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2152
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2153
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method inHalfOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "least"    # Ljava/lang/Object;
    .param p3, "fence"    # Ljava/lang/Object;

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method inOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "least"    # Ljava/lang/Object;
    .param p3, "fence"    # Ljava/lang/Object;

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 662
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 349
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->entrySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 350
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->values:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;

    .line 351
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 352
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 353
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;I)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->head:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 355
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1733
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2299
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1777
    .local v0, "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 2181
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2182
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_1

    .line 2183
    const/4 v0, 0x0

    .line 2186
    :goto_0
    return-object v0

    .line 2184
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2185
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1988
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1989
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    .line 1990
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1991
    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2074
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2082
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2083
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1782
    .local v0, "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->keySet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2197
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2207
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1663
    if-nez p2, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1665
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1900
    if-nez p2, :cond_0

    .line 1901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1902
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1679
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1913
    if-nez p1, :cond_0

    .line 1914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1915
    :cond_0
    if-nez p2, :cond_2

    .line 1917
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1955
    if-nez p2, :cond_0

    .line 1956
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1957
    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1959
    .local v0, "k":Ljava/lang/Comparable;
    :cond_1
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1960
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_2

    .line 1961
    const/4 v2, 0x0

    .line 1964
    :goto_0
    return-object v2

    .line 1962
    :cond_2
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1963
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1928
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1929
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1930
    :cond_1
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1932
    .local v0, "k":Ljava/lang/Comparable;
    :cond_2
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1933
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_4

    .line 1940
    :cond_3
    :goto_0
    return v3

    .line 1935
    :cond_4
    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1936
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 1937
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1939
    invoke-virtual {v1, v2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1940
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 1720
    const-wide/16 v0, 0x0

    .line 1721
    .local v0, "count":J
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 1722
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1723
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1721
    :cond_0
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 1725
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    const v3, 0x7fffffff

    :goto_1
    return v3

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 7
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 2003
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2004
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2005
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 2041
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 7
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2029
    if-nez p1, :cond_0

    .line 2030
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2031
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 2059
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2303
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->values:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;

    .line 1805
    .local v0, "vs":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0    # "vs":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->values:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;

    goto :goto_0
.end method
