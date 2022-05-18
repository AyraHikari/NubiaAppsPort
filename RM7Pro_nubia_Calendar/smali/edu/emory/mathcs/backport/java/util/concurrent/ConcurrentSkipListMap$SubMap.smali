.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient entrySetView:Ljava/util/Set;

.field private final hi:Ljava/lang/Object;

.field private final hiInclusive:Z

.field private final isDescending:Z

.field private transient keySetView:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

.field private final lo:Ljava/lang/Object;

.field private final loInclusive:Z

.field private final m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

.field private transient valuesView:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .locals 2
    .param p1, "map"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    .param p2, "fromKey"    # Ljava/lang/Object;
    .param p3, "fromInclusive"    # Z
    .param p4, "toKey"    # Ljava/lang/Object;
    .param p5, "toInclusive"    # Z
    .param p6, "isDescending"    # Z

    .prologue
    .line 2530
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 2531
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p1, p2, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2534
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    .line 2535
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2536
    iput-object p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2537
    iput-boolean p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2538
    iput-boolean p5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2539
    iput-boolean p6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    .line 2540
    return-void
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2501
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    return v0
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2501
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2501
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2501
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static access$500(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2501
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static access$600(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 2501
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    return-object v0
.end method

.method static access$700(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2501
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkKeyBounds(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2567
    if-nez p1, :cond_0

    .line 2568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2569
    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2571
    :cond_1
    return-void
.end method

.method private getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "rel"    # I

    .prologue
    const/4 v3, 0x0

    .line 2694
    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v4, :cond_0

    .line 2695
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    .line 2696
    or-int/lit8 p2, p2, 0x2

    .line 2700
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2701
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3

    .line 2711
    :cond_1
    :goto_1
    return-object v3

    .line 2698
    :cond_2
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 2701
    :cond_3
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_1

    .line 2702
    :cond_4
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2703
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_1

    .line 2705
    :cond_5
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2706
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eqz v1, :cond_1

    iget-object v4, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2708
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2709
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    .line 2710
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 2711
    new-instance v3, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "rel"    # I

    .prologue
    const/4 v4, 0x0

    .line 2717
    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v5, :cond_0

    .line 2718
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_2

    .line 2719
    or-int/lit8 p2, p2, 0x2

    .line 2723
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2724
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_3

    .line 2725
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2726
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2727
    iget-object v1, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2749
    .end local v2    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_1
    :goto_1
    return-object v1

    .line 2721
    :cond_2
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 2729
    goto :goto_1

    .line 2731
    :cond_4
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2732
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_5

    .line 2733
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2734
    .restart local v2    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eqz v2, :cond_5

    .line 2735
    iget-object v1, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2736
    .local v1, "last":Ljava/lang/Object;
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .end local v1    # "last":Ljava/lang/Object;
    .end local v2    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :cond_5
    move-object v1, v4

    .line 2740
    goto :goto_1

    .line 2743
    :cond_6
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2744
    .restart local v2    # "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eqz v2, :cond_7

    iget-object v5, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    move-object v1, v4

    .line 2745
    goto :goto_1

    .line 2746
    :cond_8
    iget-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2747
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    .line 2748
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_6

    move-object v1, v0

    .line 2749
    goto :goto_1
.end method

.method private hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3

    .prologue
    .line 2608
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2609
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findLast()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2613
    :goto_0
    return-object v0

    .line 2610
    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v0, :cond_1

    .line 2611
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0

    .line 2613
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private highestEntry()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 2653
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2654
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eqz v1, :cond_1

    iget-object v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2655
    :cond_1
    const/4 v0, 0x0

    .line 2658
    :goto_0
    return-object v0

    .line 2656
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2657
    .local v0, "e":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private highestKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2631
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2632
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-eqz v1, :cond_0

    .line 2633
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2634
    .local v0, "last":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2635
    return-object v0

    .line 2637
    .end local v0    # "last":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private inBounds(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2563
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 6
    .param p1, "n"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2577
    if-nez p1, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return v2

    .line 2579
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v4, :cond_2

    move v2, v3

    .line 2580
    goto :goto_0

    .line 2581
    :cond_2
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2582
    .local v1, "k":Ljava/lang/Object;
    if-nez v1, :cond_3

    move v2, v3

    .line 2583
    goto :goto_0

    .line 2584
    :cond_3
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2585
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_4

    iget-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    .line 2587
    goto :goto_0
.end method

.method private loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3

    .prologue
    .line 2595
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2596
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2600
    :goto_0
    return-object v0

    .line 2597
    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-eqz v0, :cond_1

    .line 2598
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0

    .line 2600
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private lowestEntry()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 2642
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2643
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2644
    const/4 v0, 0x0

    .line 2647
    :goto_0
    return-object v0

    .line 2645
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2646
    .local v0, "e":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private lowestKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2620
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2621
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2622
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1

    .line 2624
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 10
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 2854
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    .line 2855
    move-object v9, p1

    .line 2856
    .local v9, "tk":Ljava/lang/Object;
    move-object p1, p3

    .line 2857
    move-object p3, v9

    .line 2858
    move v8, p2

    .line 2859
    .local v8, "ti":Z
    move p2, p4

    .line 2860
    move p4, v8

    .line 2862
    .end local v8    # "ti":Z
    .end local v9    # "tk":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2863
    if-nez p1, :cond_3

    .line 2864
    iget-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2865
    iget-boolean p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2873
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2874
    if-nez p3, :cond_5

    .line 2875
    iget-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2876
    iget-boolean p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2884
    :cond_2
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-boolean v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 2868
    :cond_3
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2869
    .local v7, "c":I
    if-ltz v7, :cond_4

    if-nez v7, :cond_1

    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2870
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2879
    .end local v7    # "c":I
    :cond_5
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2880
    .restart local v7    # "c":I
    if-gtz v7, :cond_6

    if-nez v7, :cond_2

    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 2881
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeHighest()Ljava/util/Map$Entry;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2678
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2679
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_2

    .line 2686
    :cond_1
    :goto_0
    return-object v3

    .line 2681
    :cond_2
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2682
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2684
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2685
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 2686
    new-instance v3, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeLowest()Ljava/util/Map$Entry;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2664
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2665
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v1, :cond_2

    .line 2672
    :cond_1
    :goto_0
    return-object v3

    .line 2667
    :cond_2
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2668
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2670
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2671
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 2672
    new-instance v3, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2554
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2555
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2556
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v1, :cond_1

    .line 2557
    :cond_0
    const/4 v1, 0x1

    .line 2559
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2545
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2546
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2547
    .local v0, "c":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v1, :cond_1

    .line 2548
    :cond_0
    const/4 v1, 0x1

    .line 2550
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2931
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2935
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 2806
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2807
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2809
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2810
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    :cond_0
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2812
    :cond_1
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 2839
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2840
    .local v0, "cmp":Ljava/util/Comparator;
    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_0

    .line 2841
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2843
    .end local v0    # "cmp":Ljava/util/Comparator;
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2756
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2757
    :cond_0
    move-object v0, p1

    .line 2758
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2793
    if-nez p1, :cond_0

    .line 2794
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2795
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2796
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2798
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 2799
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2800
    const/4 v2, 0x1

    .line 2802
    .end local v1    # "v":Ljava/lang/Object;
    :goto_1
    return v2

    .line 2797
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2802
    .end local v1    # "v":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 3009
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 7

    .prologue
    .line 2924
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    iget-boolean v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 3021
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    .line 3005
    .local v0, "es":Ljava/util/Set;
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2971
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2963
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2947
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2951
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2762
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2763
    :cond_0
    move-object v0, p1

    .line 2764
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 2
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 2899
    if-nez p1, :cond_0

    .line 2900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2901
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 2916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2955
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2959
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2789
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

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
    .line 3013
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2989
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2990
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

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2975
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2967
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2939
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2943
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 1

    .prologue
    .line 2994
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2995
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

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2979
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2983
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2768
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2769
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2817
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2818
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2773
    move-object v0, p1

    .line 2774
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2822
    move-object v0, p1

    .line 2823
    .local v0, "k":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2832
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2833
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2827
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2828
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 2778
    const-wide/16 v0, 0x0

    .line 2779
    .local v0, "count":J
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2780
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :goto_0
    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2782
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2783
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 2781
    :cond_0
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2785
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
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 2892
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2893
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2894
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 2912
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 2906
    if-nez p1, :cond_0

    .line 2907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2908
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 2920
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 3017
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2999
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    .line 3000
    .local v0, "vs":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    goto :goto_0
.end method
