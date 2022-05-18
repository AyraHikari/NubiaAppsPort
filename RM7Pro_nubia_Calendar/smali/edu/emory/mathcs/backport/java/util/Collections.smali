.class public Ledu/emory/mathcs/backport/java/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;,
        Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;,
        Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
    }
.end annotation


# static fields
.field static class$edu$emory$mathcs$backport$java$util$Collections$CheckedMap$EntryView:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$100(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "modified":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 271
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return v1
.end method

.method public static asLifoQueue(Ledu/emory/mathcs/backport/java/util/Deque;)Ledu/emory/mathcs/backport/java/util/Queue;
    .locals 1
    .param p0, "deque"    # Ledu/emory/mathcs/backport/java/util/Deque;

    .prologue
    .line 281
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;-><init>(Ledu/emory/mathcs/backport/java/util/Deque;)V

    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "c"    # Ljava/util/Comparator;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 165
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "l"    # Ljava/util/List;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 177
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p0, "m"    # Ljava/util/Map;
    .param p1, "keyType"    # Ljava/lang/Class;
    .param p2, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 181
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    invoke-direct {v0, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .param p0, "s"    # Ljava/util/Set;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 169
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "m"    # Ljava/util/SortedMap;
    .param p1, "keyType"    # Ljava/lang/Class;
    .param p2, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 185
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "s"    # Ljava/util/SortedSet;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 173
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 623
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

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "dest"    # Ljava/util/List;
    .param p1, "src"    # Ljava/util/List;

    .prologue
    .line 75
    invoke-static {p0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .prologue
    .line 257
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 258
    :cond_0
    move-object v1, p0

    .line 259
    .local v1, "tmp":Ljava/util/Collection;
    move-object p0, p1

    .line 260
    move-object p1, v1

    .line 262
    .end local v1    # "tmp":Ljava/util/Collection;
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 265
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyList()Ljava/util/List;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static emptyMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static emptySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 233
    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 687
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

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {p0, p1}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .locals 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "freq":I
    if-nez p1, :cond_1

    .line 243
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "itr":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "itr":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_3
    return v0
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .param p0, "source"    # Ljava/util/List;
    .param p1, "target"    # Ljava/util/List;

    .prologue
    .line 103
    invoke-static {p0, p1}, Ljava/util/Collections;->indexOfSubList(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .param p0, "source"    # Ljava/util/List;
    .param p1, "target"    # Ljava/util/List;

    .prologue
    .line 107
    invoke-static {p0, p1}, Ljava/util/Collections;->lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 237
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;

    .prologue
    .line 87
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;
    .param p1, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 91
    invoke-static {p0, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;

    .prologue
    .line 79
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;
    .param p1, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 83
    invoke-static {p0, p1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "n"    # I
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 219
    invoke-static {p0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 277
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "oldVal"    # Ljava/lang/Object;
    .param p2, "newVal"    # Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 55
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .param p0, "cmp"    # Ljava/util/Comparator;

    .prologue
    .line 227
    instance-of v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;

    if-eqz v0, :cond_0

    check-cast p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;

    .end local p0    # "cmp":Ljava/util/Comparator;
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    .restart local p0    # "cmp":Ljava/util/Comparator;
    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static rotate(Ljava/util/List;I)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;
    .param p1, "distance"    # I

    .prologue
    .line 95
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 96
    return-void
.end method

.method public static shuffle(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;
    .param p1, "rnd"    # Ljava/util/Random;

    .prologue
    .line 63
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 64
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 205
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 209
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 213
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 40
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;
    .param p1, "c"    # Ljava/util/Comparator;

    .prologue
    .line 43
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 67
    invoke-static {p0, p1, p1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 68
    return-void
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 139
    invoke-static {p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "l"    # Ljava/util/List;

    .prologue
    .line 151
    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "m"    # Ljava/util/Map;

    .prologue
    .line 155
    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "s"    # Ljava/util/Set;

    .prologue
    .line 143
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "m"    # Ljava/util/SortedMap;

    .prologue
    .line 159
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "s"    # Ljava/util/SortedSet;

    .prologue
    .line 147
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 113
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "l"    # Ljava/util/List;

    .prologue
    .line 125
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "m"    # Ljava/util/Map;

    .prologue
    .line 129
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "s"    # Ljava/util/Set;

    .prologue
    .line 117
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "m"    # Ljava/util/SortedMap;

    .prologue
    .line 133
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "s"    # Ljava/util/SortedSet;

    .prologue
    .line 121
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
