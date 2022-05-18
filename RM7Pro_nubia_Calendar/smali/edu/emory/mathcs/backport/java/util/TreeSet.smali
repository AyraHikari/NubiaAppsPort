.class public Ledu/emory/mathcs/backport/java/util/TreeSet;
.super Ljava/util/AbstractSet;
.source "TreeSet.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;,
        Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x2267af6c6a1278a5L


# instance fields
.field private transient map:Ledu/emory/mathcs/backport/java/util/NavigableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/TreeSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 31
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 32
    return-void
.end method

.method private constructor <init>(Ledu/emory/mathcs/backport/java/util/NavigableMap;)V
    .locals 0
    .param p1, "map"    # Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 49
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 39
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 40
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 35
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 2
    .param p1, "s"    # Ljava/util/SortedSet;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 44
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 45
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 46
    return-void
.end method

.method static access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Ledu/emory/mathcs/backport/java/util/TreeSet;->PRESENT:Ljava/lang/Object;

    return-object v0
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 193
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 227
    .local v0, "comparator":Ljava/util/Comparator;
    new-instance v2, Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {v2, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 228
    .local v2, "map":Ledu/emory/mathcs/backport/java/util/TreeMap;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 230
    .local v3, "size":I
    :try_start_0
    new-instance v4, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;

    invoke-direct {v4, p1, v3}, Ledu/emory/mathcs/backport/java/util/TreeSet$IOIterator;-><init>(Ljava/io/ObjectInputStream;I)V

    invoke-virtual {v2, v4, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V

    .line 231
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;
    :try_end_0
    .catch Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;->getException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 236
    .end local v1    # "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorIOException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$IteratorNoClassException;->getException()Ljava/lang/ClassNotFoundException;

    move-result-object v4

    throw v4
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
    .line 214
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 215
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 217
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 149
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    sget-object v1, Ledu/emory/mathcs/backport/java/util/TreeSet;->PRESENT:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 157
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    instance-of v0, v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    check-cast v0, Ledu/emory/mathcs/backport/java/util/TreeMap;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;-><init>(Ljava/util/Iterator;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->buildFromSorted(Ljava/util/Iterator;I)V

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->clear()V

    .line 171
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 185
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/TreeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v0, "clone":Ledu/emory/mathcs/backport/java/util/TreeSet;
    new-instance v2, Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-direct {v2, v3}, Ledu/emory/mathcs/backport/java/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    .line 189
    return-object v0

    .line 186
    .end local v0    # "clone":Ledu/emory/mathcs/backport/java/util/TreeSet;
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
    .line 117
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->descendingKeySet()Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->descendingMap()Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;-><init>(Ledu/emory/mathcs/backport/java/util/NavigableMap;)V

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "toElement"    # Ljava/lang/Object;
    .param p2, "toInclusive"    # Z

    .prologue
    .line 105
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;-><init>(Ledu/emory/mathcs/backport/java/util/NavigableMap;)V

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeSet;->headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 70
    .local v0, "e":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 75
    .local v0, "e":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->size()I

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
    .line 100
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;-><init>(Ledu/emory/mathcs/backport/java/util/NavigableMap;)V

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z

    .prologue
    .line 109
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v1, p1, p2}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeSet;-><init>(Ledu/emory/mathcs/backport/java/util/NavigableMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 145
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet;->map:Ledu/emory/mathcs/backport/java/util/NavigableMap;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
