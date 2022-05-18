.class public Ledu/emory/mathcs/backport/java/util/PriorityQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final DEFAULT_INIT_CAPACITY:I = 0xb

.field static array$Ljava$lang$Object:Ljava/lang/Class; = null

.field static class$edu$emory$mathcs$backport$java$util$PriorityQueue:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private transient buffer:[Ljava/lang/Object;

.field private final comparator:Ljava/util/Comparator;

.field private transient modCount:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->class$edu$emory$mathcs$backport$java$util$PriorityQueue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.PriorityQueue"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->class$edu$emory$mathcs$backport$java$util$PriorityQueue:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->class$edu$emory$mathcs$backport$java$util$PriorityQueue:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 104
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 105
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 108
    return-void
.end method

.method public constructor <init>(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)V
    .locals 0
    .param p1, "q"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 9
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 166
    .local v0, "capacity":I
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    .line 167
    if-gez v0, :cond_2

    const v0, 0x7fffffff

    .line 169
    :cond_0
    :goto_0
    new-array v5, v0, [Ljava/lang/Object;

    iput-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    .line 171
    instance-of v5, p1, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    if-eqz v5, :cond_3

    move-object v4, p1

    .line 172
    check-cast v4, Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .line 173
    .local v4, "that":Ledu/emory/mathcs/backport/java/util/PriorityQueue;
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iput-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 174
    iget v5, v4, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    .line 175
    iget-object v5, v4, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v7, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .end local v4    # "that":Ledu/emory/mathcs/backport/java/util/PriorityQueue;
    :cond_1
    return-void

    .line 168
    :cond_2
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    instance-of v5, p1, Ljava/util/SortedSet;

    if-eqz v5, :cond_4

    move-object v3, p1

    .line 178
    check-cast v3, Ljava/util/SortedSet;

    .line 179
    .local v3, "s":Ljava/util/SortedSet;
    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v5

    iput-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 180
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_1

    .line 185
    .end local v2    # "itr":Ljava/util/Iterator;
    .end local v3    # "s":Ljava/util/SortedSet;
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "itr":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_2

    .line 189
    :cond_5
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    div-int/lit8 v1, v5, 0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_1

    .line 190
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-direct {p0, v1, v5}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateDown(ILjava/lang/Object;)I

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 101
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .param p1, "s"    # Ljava/util/SortedSet;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 143
    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .prologue
    .line 56
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    return v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .prologue
    .line 56
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    return v0
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .prologue
    .line 56
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/PriorityQueue;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 435
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

.method private percolateDown(ILjava/lang/Object;)I
    .locals 7
    .param p1, "idx"    # I
    .param p2, "e"    # Ljava/lang/Object;

    .prologue
    .line 294
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_3

    .line 296
    :goto_0
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 297
    .local v1, "c":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v3, :cond_1

    .line 322
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aput-object p2, v3, p1

    return p1

    .line 298
    :cond_1
    add-int/lit8 v3, v1, 0x1

    :try_start_1
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v3, v4, :cond_2

    .line 299
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 301
    :cond_2
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {v3, p2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 302
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, p1

    .line 303
    move p1, v1

    goto :goto_0

    .line 307
    .end local v1    # "c":I
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 309
    .local v2, "ec":Ljava/lang/Comparable;
    :goto_1
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 310
    .restart local v1    # "c":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v1, v3, :cond_0

    .line 311
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v3, v4, :cond_4

    .line 312
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Comparable;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 314
    :cond_4
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 315
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    move p1, v1

    goto :goto_1

    .line 322
    .end local v1    # "c":I
    .end local v2    # "ec":Ljava/lang/Comparable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aput-object p2, v4, p1

    throw v3
.end method

.method private percolateUp(ILjava/lang/Object;)I
    .locals 6
    .param p1, "idx"    # I
    .param p2, "e"    # Ljava/lang/Object;

    .prologue
    .line 332
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v4, :cond_2

    .line 333
    :goto_0
    if-lez p1, :cond_0

    .line 334
    add-int/lit8 v4, p1, -0x1

    ushr-int/lit8 v1, v4, 0x1

    .line 335
    .local v1, "c":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-interface {v4, p2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ltz v4, :cond_1

    .line 353
    .end local v1    # "c":I
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aput-object p2, v4, p1

    move v3, p1

    .end local p1    # "idx":I
    .local v3, "idx":I
    :goto_1
    return v3

    .line 336
    .end local v3    # "idx":I
    .restart local v1    # "c":I
    .restart local p1    # "idx":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, p1

    .line 337
    move p1, v1

    goto :goto_0

    .line 342
    .end local v1    # "c":I
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 343
    .local v2, "ce":Ljava/lang/Comparable;
    :goto_2
    if-lez p1, :cond_3

    .line 344
    add-int/lit8 v4, p1, -0x1

    ushr-int/lit8 v1, v4, 0x1

    .line 345
    .restart local v1    # "c":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ltz v4, :cond_4

    .line 353
    .end local v1    # "c":I
    :cond_3
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aput-object p2, v4, p1

    move v3, p1

    .end local p1    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_1

    .line 346
    .end local v3    # "idx":I
    .restart local v1    # "c":I
    .restart local p1    # "idx":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    move p1, v1

    goto :goto_2

    .line 353
    .end local v1    # "c":I
    .end local v2    # "ce":Ljava/lang/Comparable;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aput-object p2, v5, p1

    throw v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 618
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 620
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method private removeAt(I)Ljava/lang/Object;
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 517
    sget-boolean v3, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-lt p1, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 518
    :cond_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    .line 519
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    .line 521
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    aget-object v0, v3, v4

    .line 522
    .local v0, "e":Ljava/lang/Object;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    aput-object v2, v3, v4

    .line 524
    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateDown(ILjava/lang/Object;)I

    move-result v1

    .line 525
    .local v1, "newpos":I
    if-eq v1, p1, :cond_1

    .line 528
    .end local v0    # "e":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 527
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateUp(ILjava/lang/Object;)I

    move-result v1

    .line 528
    if-ge v1, p1, :cond_2

    .end local v0    # "e":Ljava/lang/Object;
    :goto_1
    move-object v2, v0

    goto :goto_0

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 608
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 610
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 536
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    .line 537
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ledu/emory/mathcs/backport/java/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 538
    iput v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    .line 539
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 416
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 418
    :goto_1
    return v1

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public element()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 232
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 233
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 234
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    .line 235
    .local v1, "newlen":I
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 236
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 237
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2

    .line 239
    :cond_1
    const v1, 0x7fffffff

    .line 241
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    .line 242
    .local v0, "newbuffer":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    .line 245
    .end local v0    # "newbuffer":[Ljava/lang/Object;
    .end local v1    # "newlen":I
    :cond_3
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    .line 246
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-direct {p0, v2, p1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateUp(ILjava/lang/Object;)I

    .line 247
    const/4 v2, 0x1

    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 269
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-nez v2, :cond_0

    move-object v0, v1

    .line 275
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    .line 271
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v0, v2, v4

    .line 272
    .local v0, "head":Ljava/lang/Object;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    .line 273
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    aget-object v2, v2, v3

    invoke-direct {p0, v4, v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateDown(ILjava/lang/Object;)I

    .line 274
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    aput-object v1, v2, v3

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 378
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v0, v1, v3

    .line 379
    .local v0, "head":Ljava/lang/Object;
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->modCount:I

    .line 380
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    .line 381
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->percolateDown(ILjava/lang/Object;)I

    .line 382
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 383
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    if-nez p1, :cond_0

    move v1, v2

    .line 513
    :goto_0
    return v1

    .line 497
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_4

    .line 499
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-interface {v1, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    .line 500
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move v1, v3

    .line 501
    goto :goto_0

    .line 498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_4

    .line 507
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    .line 508
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move v1, v3

    .line 509
    goto :goto_0

    .line 506
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 513
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    sget-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "[Ljava.lang.Object;"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v2, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 476
    array-length v0, p1

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 477
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 482
    .end local p1    # "a":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 480
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    array-length v0, p1

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
