.class public Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "ConcurrentSkipListSet.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static class$edu$emory$mathcs$backport$java$util$concurrent$ConcurrentSkipListSet:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x2267af8642300ea5L


# instance fields
.field private final m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 77
    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .param p1, "m"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .prologue
    .line 123
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 124
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 102
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 103
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 104
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 87
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 88
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 2
    .param p1, "s"    # Ljava/util/SortedSet;

    .prologue
    .line 115
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 116
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    .line 117
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 134
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 323
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 227
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->class$edu$emory$mathcs$backport$java$util$concurrent$ConcurrentSkipListSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.ConcurrentSkipListSet"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->class$edu$emory$mathcs$backport$java$util$concurrent$ConcurrentSkipListSet:Ljava/lang/Class;

    :goto_0
    if-eq v1, v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t clone subclasses"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->class$edu$emory$mathcs$backport$java$util$concurrent$ConcurrentSkipListSet:Ljava/lang/Class;

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/SortedMap;)V

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 183
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2

    .prologue
    .line 443
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 268
    check-cast v0, Ljava/util/Collection;

    .line 270
    .local v0, "c":Ljava/util/Collection;
    :try_start_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "unused":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 273
    .end local v1    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, "unused":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 315
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "toElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 388
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 331
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 307
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 336
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
    .line 340
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 341
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
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 219
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toElement"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    .prologue
    .line 376
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 409
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .prologue
    .line 398
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->m:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentNavigableMap;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
