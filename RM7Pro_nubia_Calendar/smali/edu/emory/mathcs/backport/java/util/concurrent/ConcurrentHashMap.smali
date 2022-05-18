.class public Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field transient entrySet:Ljava/util/Set;

.field transient keySet:Ljava/util/Set;

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

.field transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 653
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 654
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 645
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 646
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 632
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 633
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 586
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;-><init>()V

    .line 587
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 588
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 590
    :cond_1
    const/high16 v5, 0x10000

    if-le p3, v5, :cond_2

    .line 591
    const/high16 p3, 0x10000

    .line 594
    :cond_2
    const/4 v3, 0x0

    .line 595
    .local v3, "sshift":I
    const/4 v4, 0x1

    .line 596
    .local v4, "ssize":I
    :goto_0
    if-ge v4, p3, :cond_3

    .line 597
    add-int/lit8 v3, v3, 0x1

    .line 598
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    :cond_3
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentShift:I

    .line 601
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentMask:I

    .line 602
    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v5

    iput-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 604
    const/high16 v5, 0x40000000    # 2.0f

    if-le p1, v5, :cond_4

    .line 605
    const/high16 p1, 0x40000000    # 2.0f

    .line 606
    :cond_4
    div-int v0, p1, v4

    .line 607
    .local v0, "c":I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_5

    .line 608
    add-int/lit8 v0, v0, 0x1

    .line 609
    :cond_5
    const/4 v1, 0x1

    .line 610
    .local v1, "cap":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 611
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 614
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    new-instance v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 615
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    const/16 v2, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 665
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 668
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 669
    return-void
.end method

.method private static hash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 162
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 163
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 164
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 165
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 166
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 167
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1259
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1263
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .local v1, "key":Ljava/lang/Object;
    .local v2, "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1269
    .restart local v1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1270
    .restart local v2    # "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1274
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1231
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1233
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 1234
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v5, v2

    .line 1235
    .local v3, "seg":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 1237
    :try_start_0
    iget-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->table:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1238
    .local v4, "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 1239
    aget-object v0, v4, v1

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :goto_2
    if-eqz v0, :cond_0

    .line 1240
    iget-object v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1241
    iget-object v5, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1239
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    .end local v0    # "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :cond_1
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 1233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    .end local v1    # "i":I
    .end local v4    # "tab":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v5

    .line 1248
    .end local v3    # "seg":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    :cond_2
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1249
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1250
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 972
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 784
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 804
    :cond_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 805
    .local v7, "segments":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    array-length v9, v7

    new-array v5, v9, [I

    .line 808
    .local v5, "mc":[I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    const/4 v9, 0x2

    if-ge v4, v9, :cond_7

    .line 809
    const/4 v8, 0x0

    .line 810
    .local v8, "sum":I
    const/4 v6, 0x0

    .line 811
    .local v6, "mcsum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_3

    .line 812
    aget-object v9, v7, v3

    iget v0, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 813
    .local v0, "c":I
    aget-object v9, v7, v3

    iget v9, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v5, v3

    add-int/2addr v6, v9

    .line 814
    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 815
    const/4 v2, 0x1

    .line 845
    .end local v0    # "c":I
    .end local v6    # "mcsum":I
    .end local v8    # "sum":I
    :cond_1
    :goto_2
    return v2

    .line 811
    .restart local v0    # "c":I
    .restart local v6    # "mcsum":I
    .restart local v8    # "sum":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 817
    .end local v0    # "c":I
    :cond_3
    const/4 v1, 0x1

    .line 818
    .local v1, "cleanSweep":Z
    if-eqz v6, :cond_4

    .line 819
    const/4 v3, 0x0

    :goto_3
    array-length v9, v7

    if-ge v3, v9, :cond_4

    .line 820
    aget-object v9, v7, v3

    iget v0, v9, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 821
    .restart local v0    # "c":I
    aget v9, v5, v3

    aget-object v10, v7, v3

    iget v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_5

    .line 822
    const/4 v1, 0x0

    .line 827
    .end local v0    # "c":I
    :cond_4
    if-eqz v1, :cond_6

    .line 828
    const/4 v2, 0x0

    goto :goto_2

    .line 819
    .restart local v0    # "c":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 808
    .end local v0    # "c":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 831
    .end local v1    # "cleanSweep":Z
    .end local v3    # "i":I
    .end local v6    # "mcsum":I
    .end local v8    # "sum":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v9, v7

    if-ge v3, v9, :cond_8

    .line 832
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 831
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 833
    :cond_8
    const/4 v2, 0x0

    .line 835
    .local v2, "found":Z
    const/4 v3, 0x0

    :goto_5
    :try_start_0
    array-length v9, v7

    if-ge v3, v9, :cond_9

    .line 836
    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_a

    .line 837
    const/4 v2, 0x1

    .line 842
    :cond_9
    const/4 v3, 0x0

    :goto_6
    array-length v9, v7

    if-ge v3, v9, :cond_1

    .line 843
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 842
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 835
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 842
    :cond_b
    throw v9

    :catchall_0
    move-exception v9

    const/4 v3, 0x0

    :goto_7
    array-length v10, v7

    if-ge v3, v10, :cond_b

    .line 843
    aget-object v10, v7, v3

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 842
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1035
    .local v0, "es":Ljava/util/Set;
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 769
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 770
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 677
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 687
    .local v3, "segments":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    array-length v5, v3

    new-array v1, v5, [I

    .line 688
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 689
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 690
    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 705
    :cond_0
    :goto_1
    return v4

    .line 693
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    if-eqz v2, :cond_3

    .line 699
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 700
    aget-object v5, v3, v0

    iget v5, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 705
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 993
    .local v0, "ks":Ljava/util/Set;
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1045
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 881
    if-nez p2, :cond_0

    .line 882
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 883
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 884
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 909
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 911
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 913
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 895
    if-nez p2, :cond_0

    .line 896
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 897
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 898
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 925
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 926
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 935
    if-nez p2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v1

    .line 937
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 938
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 961
    if-nez p2, :cond_0

    .line 962
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 963
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 964
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 947
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 948
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 949
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 950
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    .locals 3
    .param p1, "hash"    # I

    .prologue
    .line 176
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 12

    .prologue
    .line 716
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->segments:[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;

    .line 717
    .local v6, "segments":[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;
    const-wide/16 v8, 0x0

    .line 718
    .local v8, "sum":J
    const-wide/16 v0, 0x0

    .line 719
    .local v0, "check":J
    array-length v7, v6

    new-array v4, v7, [I

    .line 722
    .local v4, "mc":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/4 v7, 0x2

    if-ge v3, v7, :cond_2

    .line 723
    const-wide/16 v0, 0x0

    .line 724
    const-wide/16 v8, 0x0

    .line 725
    const/4 v5, 0x0

    .line 726
    .local v5, "mcsum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 727
    aget-object v7, v6, v2

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 728
    aget-object v7, v6, v2

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v7, v4, v2

    add-int/2addr v5, v7

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 730
    :cond_0
    if-eqz v5, :cond_1

    .line 731
    const/4 v2, 0x0

    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 732
    aget-object v7, v6, v2

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    .line 733
    aget v7, v4, v2

    aget-object v10, v6, v2

    iget v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v7, v10, :cond_3

    .line 734
    const-wide/16 v0, -0x1

    .line 739
    :cond_1
    cmp-long v7, v0, v8

    if-nez v7, :cond_4

    .line 742
    .end local v2    # "i":I
    .end local v5    # "mcsum":I
    :cond_2
    cmp-long v7, v0, v8

    if-eqz v7, :cond_7

    .line 743
    const-wide/16 v8, 0x0

    .line 744
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_5

    .line 745
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 731
    .restart local v5    # "mcsum":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 722
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 746
    .end local v5    # "mcsum":I
    :cond_5
    const/4 v2, 0x0

    :goto_4
    array-length v7, v6

    if-ge v2, v7, :cond_6

    .line 747
    aget-object v7, v6, v2

    iget v7, v7, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 748
    :cond_6
    const/4 v2, 0x0

    :goto_5
    array-length v7, v6

    if-ge v2, v7, :cond_7

    .line 749
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 751
    .end local v2    # "i":I
    :cond_7
    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 752
    const v7, 0x7fffffff

    .line 754
    :goto_6
    return v7

    :cond_8
    long-to-int v7, v8

    goto :goto_6
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 1014
    .local v0, "vs":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;
    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
