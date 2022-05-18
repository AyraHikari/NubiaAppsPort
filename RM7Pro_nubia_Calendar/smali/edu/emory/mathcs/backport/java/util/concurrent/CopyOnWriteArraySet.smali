.class public Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;
.super Ljava/util/AbstractSet;
.source "CopyOnWriteArraySet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4bbdd092901569d7L


# instance fields
.field private final al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 74
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 85
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    .line 86
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    .line 87
    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 365
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


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 223
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 255
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 192
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 238
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 330
    if-ne p1, p0, :cond_1

    move v9, v8

    .line 358
    :cond_0
    :goto_0
    return v9

    .line 332
    :cond_1
    instance-of v10, p1, Ljava/util/Set;

    if-eqz v10, :cond_0

    move-object v6, p1

    .line 334
    check-cast v6, Ljava/util/Set;

    .line 335
    .local v6, "set":Ljava/util/Set;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 341
    .local v2, "it":Ljava/util/Iterator;
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "elements":[Ljava/lang/Object;
    array-length v4, v0

    .line 344
    .local v4, "len":I
    new-array v5, v4, [Z

    .line 345
    .local v5, "matched":[Z
    const/4 v3, 0x0

    .line 346
    .local v3, "k":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 347
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v4, :cond_0

    .line 349
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 350
    .local v7, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 351
    aget-boolean v10, v5, v1

    if-nez v10, :cond_2

    aget-object v10, v0, v1

    invoke-static {v7, v10}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 352
    aput-boolean v8, v5, v1

    goto :goto_1

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    .end local v1    # "i":I
    .end local v7    # "x":Ljava/lang/Object;
    :cond_3
    if-ne v3, v4, :cond_4

    :goto_3
    move v9, v8

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 207
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 274
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 295
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 183
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArraySet;->al:Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
