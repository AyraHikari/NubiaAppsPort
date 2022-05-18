.class public Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;,
        Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;
    }
.end annotation


# static fields
.field static array$Ljava$lang$Object:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "[Ljava.lang.Object;"

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    if-eq v2, v1, :cond_0

    .line 38
    array-length v2, v0

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "[Ljava.lang.Object;"

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, v2, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 43
    return-void

    .line 37
    :cond_1
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0

    .line 38
    :cond_2
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v1, p1

    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "[Ljava.lang.Object;"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {p1, v1, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 47
    return-void

    .line 46
    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0
.end method

.method static access$000([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method static access$100(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-static {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static access$200([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->reverseSearch([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
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

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 878
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
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 413
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 414
    .local v2, "length":I
    new-array v0, v2, [Ljava/lang/Object;

    .line 415
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method private static reverseSearch([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "subject"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "pos"    # I

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 76
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_3

    .line 77
    aget-object v0, p0, p3

    if-nez v0, :cond_0

    move v0, p3

    .line 85
    :goto_1
    return v0

    .line 76
    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 81
    :cond_1
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p2, :cond_3

    .line 82
    aget-object v0, p0, p3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p3

    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static search([Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "subject"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "end"    # I

    .prologue
    .line 61
    if-nez p1, :cond_2

    .line 62
    :goto_0
    if-ge p2, p3, :cond_3

    .line 63
    aget-object v0, p0, p2

    if-nez v0, :cond_0

    move v0, p2

    .line 71
    :goto_1
    return v0

    .line 62
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    if-ge p2, p3, :cond_3

    .line 68
    aget-object v0, p0, p2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_1

    .line 71
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 402
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "array":[Ljava/lang/Object;
    array-length v2, v0

    .line 404
    .local v2, "length":I
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 406
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "oldarr":[Ljava/lang/Object;
    array-length v0, v3

    .line 326
    .local v0, "length":I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 327
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    .end local v0    # "length":I
    .end local v3    # "oldarr":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 330
    .restart local v0    # "length":I
    .restart local v3    # "oldarr":[Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v0, 0x1

    :try_start_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 331
    .local v2, "newarr":[Ljava/lang/Object;
    sub-int v1, v0, p1

    .line 332
    .local v1, "moved":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    aput-object p2, v2, p1

    .line 334
    if-lez v1, :cond_2

    .line 335
    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, p1, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    :cond_2
    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 338
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "oldarr":[Ljava/lang/Object;
    array-length v0, v2

    .line 119
    .local v0, "length":I
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    .line 120
    .local v1, "newarr":[Ljava/lang/Object;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    aput-object p1, v1, v0

    .line 122
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 123
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 124
    .end local v0    # "length":I
    .end local v1    # "newarr":[Ljava/lang/Object;
    .end local v2    # "oldarr":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v6, 0x0

    .line 204
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "ca":[Ljava/lang/Object;
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    .line 207
    .local v4, "oldarr":[Ljava/lang/Object;
    array-length v1, v4

    .line 208
    .local v1, "length":I
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    .line 209
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    .end local v1    # "length":I
    .end local v4    # "oldarr":[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 212
    .restart local v1    # "length":I
    .restart local v4    # "oldarr":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    array-length v7, v0

    if-nez v7, :cond_2

    monitor-exit p0

    .line 222
    :goto_0
    return v6

    .line 213
    :cond_2
    array-length v6, v0

    add-int/2addr v6, v1

    new-array v3, v6, [Ljava/lang/Object;

    .line 214
    .local v3, "newarr":[Ljava/lang/Object;
    sub-int v2, v1, p1

    .line 215
    .local v2, "moved":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v3, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    move v5, v1

    .line 217
    .local v5, "pos":I
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v3, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    if-lez v2, :cond_3

    .line 219
    array-length v6, v0

    add-int/2addr v6, p1

    invoke-static {v4, p1, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_3
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 222
    const/4 v6, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x0

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "ca":[Ljava/lang/Object;
    array-length v6, v0

    if-nez v6, :cond_0

    .line 198
    :goto_0
    return v5

    .line 190
    :cond_0
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 192
    .local v3, "oldarr":[Ljava/lang/Object;
    array-length v1, v3

    .line 193
    .local v1, "length":I
    array-length v5, v0

    add-int/2addr v5, v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 194
    .local v2, "newarr":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move v4, v1

    .line 196
    .local v4, "pos":I
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 198
    const/4 v5, 0x1

    monitor-exit p0

    goto :goto_0

    .line 199
    .end local v1    # "length":I
    .end local v2    # "newarr":[Ljava/lang/Object;
    .end local v3    # "oldarr":[Ljava/lang/Object;
    .end local v4    # "pos":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public addAllAbsent(Ljava/util/Collection;)I
    .locals 11
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v9, 0x0

    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "arr":[Ljava/lang/Object;
    array-length v10, v2

    if-nez v10, :cond_0

    move v1, v9

    .line 159
    :goto_0
    return v1

    .line 143
    :cond_0
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    .line 145
    .local v6, "oldarr":[Ljava/lang/Object;
    array-length v7, v6

    .line 146
    .local v7, "oldlength":I
    array-length v10, v2

    new-array v8, v10, [Ljava/lang/Object;

    .line 147
    .local v8, "tmp":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 148
    .local v0, "added":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v1, v0

    .end local v0    # "added":I
    .local v1, "added":I
    :goto_1
    array-length v10, v2

    if-ge v3, v10, :cond_1

    .line 149
    aget-object v5, v2, v3

    .line 150
    .local v5, "o":Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v6, v5, v10, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v10

    if-gez v10, :cond_3

    const/4 v10, 0x0

    invoke-static {v8, v5, v10, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v10

    if-gez v10, :cond_3

    .line 151
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "added":I
    .restart local v0    # "added":I
    aput-object v5, v8, v1

    .line 148
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "added":I
    .restart local v1    # "added":I
    goto :goto_1

    .line 154
    .end local v5    # "o":Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_2

    monitor-exit p0

    move v1, v9

    goto :goto_0

    .line 155
    :cond_2
    add-int v9, v7, v1

    new-array v4, v9, [Ljava/lang/Object;

    .line 156
    .local v4, "newarr":[Ljava/lang/Object;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/4 v9, 0x0

    invoke-static {v8, v9, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    invoke-virtual {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 159
    monitor-exit p0

    goto :goto_0

    .line 160
    .end local v1    # "added":I
    .end local v3    # "i":I
    .end local v4    # "newarr":[Ljava/lang/Object;
    .end local v6    # "oldarr":[Ljava/lang/Object;
    .end local v7    # "oldlength":I
    .end local v8    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1    # "added":I
    .restart local v3    # "i":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "oldarr":[Ljava/lang/Object;
    .restart local v7    # "oldlength":I
    .restart local v8    # "tmp":[Ljava/lang/Object;
    :cond_3
    move v0, v1

    .end local v1    # "added":I
    .restart local v0    # "added":I
    goto :goto_2
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "oldarr":[Ljava/lang/Object;
    array-length v0, v2

    .line 131
    .local v0, "length":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v4

    if-ltz v4, :cond_0

    monitor-exit p0

    .line 136
    :goto_0
    return v3

    .line 132
    :cond_0
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    .line 133
    .local v1, "newarr":[Ljava/lang/Object;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput-object p1, v1, v0

    .line 135
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 136
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 137
    .end local v0    # "length":I
    .end local v1    # "newarr":[Ljava/lang/Object;
    .end local v2    # "oldarr":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "array":[Ljava/lang/Object;
    array-length v2, v0

    invoke-static {v0, p1, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "array":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    array-length v4, v0

    invoke-static {v0, v3, v2, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v3

    if-gez v3, :cond_0

    .line 183
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    .line 285
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v7

    .line 274
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v9, p1, Ljava/util/List;

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_0

    .line 276
    :cond_2
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 277
    .local v3, "itr":Ljava/util/ListIterator;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "array":[Ljava/lang/Object;
    array-length v4, v0

    .line 279
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "idx":I
    move v2, v1

    .line 280
    .end local v1    # "idx":I
    .local v2, "idx":I
    :goto_1
    if-ge v2, v4, :cond_4

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 281
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aget-object v5, v0, v2

    .line 282
    .local v5, "o1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 283
    .local v6, "o2":Ljava/lang/Object;
    invoke-static {v5, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    move v2, v1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_1

    .line 285
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_4
    if-ne v2, v4, :cond_5

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_5
    move v7, v8

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 300
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method final getArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 289
    const/4 v1, 0x1

    .line 290
    .local v1, "hashCode":I
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "array":[Ljava/lang/Object;
    array-length v3, v0

    .line 292
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 293
    aget-object v4, v0, v2

    .line 294
    .local v4, "o":Ljava/lang/Object;
    mul-int/lit8 v6, v1, 0x1f

    if-nez v4, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int v1, v6, v5

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 296
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 360
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, p1, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, p1, p2, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 370
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, p1, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->reverseSearch([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 375
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->reverseSearch([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 384
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "array":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 386
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_1
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-direct {v1, v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    .line 345
    .local v1, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 346
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "length":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 349
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "length":I
    :cond_1
    :try_start_1
    aget-object v4, v0, p1

    .line 350
    .local v4, "result":Ljava/lang/Object;
    add-int/lit8 v5, v1, -0x1

    new-array v3, v5, [Ljava/lang/Object;

    .line 351
    .local v3, "newarr":[Ljava/lang/Object;
    sub-int v5, v1, p1

    add-int/lit8 v2, v5, -0x1

    .line 352
    .local v2, "moved":I
    if-lez p1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v3, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v5, p1, 0x1

    invoke-static {v0, v5, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_3
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 355
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    .line 167
    .local v1, "length":I
    const/4 v6, 0x0

    invoke-static {v0, p1, v6, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->search([Ljava/lang/Object;Ljava/lang/Object;II)I

    move-result v4

    .line 168
    .local v4, "pos":I
    if-gez v4, :cond_0

    monitor-exit p0

    .line 174
    :goto_0
    return v5

    .line 169
    :cond_0
    add-int/lit8 v5, v1, -0x1

    new-array v3, v5, [Ljava/lang/Object;

    .line 170
    .local v3, "newarr":[Ljava/lang/Object;
    sub-int v5, v1, v4

    add-int/lit8 v2, v5, -0x1

    .line 171
    .local v2, "moved":I
    if-lez v4, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_2
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 174
    const/4 v5, 0x1

    monitor-exit p0

    goto :goto_0

    .line 175
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "length":I
    .end local v2    # "moved":I
    .end local v3    # "newarr":[Ljava/lang/Object;
    .end local v4    # "pos":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 10
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v8, 0x0

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    :goto_0
    return v8

    .line 228
    :cond_0
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "array":[Ljava/lang/Object;
    array-length v2, v0

    .line 231
    .local v2, "length":I
    new-array v7, v2, [Ljava/lang/Object;

    .line 232
    .local v7, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 233
    .local v4, "newlen":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "newlen":I
    .local v5, "newlen":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 234
    aget-object v6, v0, v1

    .line 235
    .local v6, "o":Ljava/lang/Object;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    aput-object v6, v7, v5

    .line 233
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "newlen":I
    .restart local v5    # "newlen":I
    goto :goto_1

    .line 237
    .end local v6    # "o":Ljava/lang/Object;
    :cond_1
    if-ne v5, v2, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 242
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v5    # "newlen":I
    .end local v7    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 238
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v5    # "newlen":I
    .restart local v7    # "tmp":[Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-array v3, v5, [Ljava/lang/Object;

    .line 239
    .local v3, "newarr":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 241
    const/4 v8, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "newarr":[Ljava/lang/Object;
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_3
    move v4, v5

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    goto :goto_2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v8, 0x0

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "array":[Ljava/lang/Object;
    array-length v2, v0

    .line 249
    .local v2, "length":I
    new-array v7, v2, [Ljava/lang/Object;

    .line 250
    .local v7, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 251
    .local v4, "newlen":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "newlen":I
    .local v5, "newlen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 252
    aget-object v6, v0, v1

    .line 253
    .local v6, "o":Ljava/lang/Object;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    aput-object v6, v7, v5

    .line 251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "newlen":I
    .restart local v5    # "newlen":I
    goto :goto_0

    .line 255
    .end local v6    # "o":Ljava/lang/Object;
    :cond_0
    if-ne v5, v2, :cond_1

    monitor-exit p0

    .line 259
    :goto_2
    return v8

    .line 256
    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    .line 257
    .local v3, "newarr":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 259
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_2

    .line 260
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "newarr":[Ljava/lang/Object;
    .end local v5    # "newlen":I
    .end local v7    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v5    # "newlen":I
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "tmp":[Ljava/lang/Object;
    :cond_2
    move v4, v5

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 306
    .local v3, "oldarr":[Ljava/lang/Object;
    array-length v0, v3

    .line 308
    .local v0, "length":I
    aget-object v2, v3, p1

    .line 309
    .local v2, "oldVal":Ljava/lang/Object;
    if-ne v2, p2, :cond_0

    .line 310
    invoke-virtual {p0, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 318
    :goto_0
    monitor-exit p0

    return-object v2

    .line 313
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 314
    .local v1, "newarr":[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    aput-object p2, v1, p1

    .line 316
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    .end local v0    # "length":I
    .end local v1    # "newarr":[Ljava/lang/Object;
    .end local v2    # "oldVal":Ljava/lang/Object;
    .end local v3    # "oldarr":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method final setArray([Ljava/lang/Object;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 393
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "array":[Ljava/lang/Object;
    if-ltz p1, :cond_0

    array-length v1, v0

    if-gt p2, v1, :cond_0

    if-le p1, p2, :cond_1

    .line 395
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 397
    :cond_1
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;

    sub-int v2, p2, p1

    invoke-direct {v1, p0, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;II)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "array":[Ljava/lang/Object;
    array-length v2, v0

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "[Ljava.lang.Object;"

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, v2, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    .line 105
    .local v1, "length":I
    array-length v2, p1

    if-ge v2, v1, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 111
    .end local p1    # "a":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 109
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_1
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    array-length v2, p1

    if-le v2, v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 422
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "array":[Ljava/lang/Object;
    array-length v3, v0

    .line 424
    .local v3, "length":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 427
    if-lez v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_0
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
