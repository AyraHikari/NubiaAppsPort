.class public Ledu/emory/mathcs/backport/java/util/ArrayDeque;
.super Ledu/emory/mathcs/backport/java/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/ArrayDeque$1;,
        Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;,
        Ledu/emory/mathcs/backport/java/util/ArrayDeque$DeqIterator;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field static class$edu$emory$mathcs$backport$java$util$ArrayDeque:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->class$edu$emory$mathcs$backport$java$util$ArrayDeque:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.ArrayDeque"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->class$edu$emory$mathcs$backport$java$util$ArrayDeque:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->class$edu$emory$mathcs$backport$java$util$ArrayDeque:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    .line 164
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    .line 174
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->allocateElements(I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 187
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->allocateElements(I)V

    .line 189
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 190
    return-void
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    .prologue
    .line 61
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    return v0
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    .prologue
    .line 61
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    return v0
.end method

.method static access$400(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    .prologue
    .line 61
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static access$500(Ledu/emory/mathcs/backport/java/util/ArrayDeque;I)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 103
    const/16 v0, 0x8

    .line 106
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 107
    move v0, p1

    .line 108
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 109
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 110
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 111
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 112
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    if-gez v0, :cond_0

    .line 116
    ushr-int/lit8 v0, v0, 0x1

    .line 118
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private checkInvariants()V
    .locals 3

    .prologue
    .line 489
    sget-boolean v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_0
    sget-boolean v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 493
    :cond_1
    sget-boolean v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 494
    :cond_4
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
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

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 149
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-ge v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_0
    :goto_0
    return-object p1

    .line 151
    :cond_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-le v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 153
    .local v0, "headPortionLen":I
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 507
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->checkInvariants()V

    .line 508
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 509
    .local v1, "elements":[Ljava/lang/Object;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 510
    .local v4, "mask":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 511
    .local v3, "h":I
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    .line 512
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 513
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 516
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 517
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 520
    :cond_0
    if-ge v2, v0, :cond_2

    .line 521
    if-gt v3, p1, :cond_1

    .line 522
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 529
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 541
    :goto_1
    return v6

    .line 524
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 526
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 532
    :cond_2
    if-ge p1, v5, :cond_3

    .line 533
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    :goto_2
    move v6, v7

    .line 541
    goto :goto_1

    .line 536
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 538
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 126
    sget-boolean v5, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget v5, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v6, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 127
    :cond_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 128
    .local v3, "p":I
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 129
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 130
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 131
    .local v2, "newCapacity":I
    if-gez v2, :cond_1

    .line 132
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 134
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "a":[Ljava/lang/Object;
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 137
    iput v7, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 138
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    .line 139
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 835
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 836
    .local v1, "size":I
    invoke-direct {p0, v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->allocateElements(I)V

    .line 837
    const/4 v2, 0x0

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 838
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    .line 841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 842
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
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
    .line 816
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 819
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 822
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 823
    .local v1, "mask":I
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 824
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 823
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 825
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 206
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 207
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->doubleCapacity()V

    .line 208
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 222
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 223
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->doubleCapacity()V

    .line 224
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 707
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 708
    .local v0, "h":I
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    .line 709
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 710
    const/4 v4, 0x0

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 711
    move v1, v0

    .line 712
    .local v1, "i":I
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 714
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 715
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 716
    if-ne v1, v3, :cond_0

    .line 718
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 794
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    .line 795
    .local v1, "result":Ledu/emory/mathcs/backport/java/util/ArrayDeque;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    return-object v1

    .line 798
    .end local v1    # "result":Ledu/emory/mathcs/backport/java/util/ArrayDeque;
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 672
    if-nez p1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v3

    .line 674
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 675
    .local v1, "mask":I
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 677
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    const/4 v3, 0x1

    goto :goto_0

    .line 680
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 578
    new-instance v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;-><init>(Ledu/emory/mathcs/backport/java/util/ArrayDeque;Ledu/emory/mathcs/backport/java/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 295
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 296
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 297
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 305
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 306
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 307
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DeqIterator;-><init>(Ledu/emory/mathcs/backport/java/util/ArrayDeque;Ledu/emory/mathcs/backport/java/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 271
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 272
    .local v0, "h":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 273
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 277
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 275
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 276
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 281
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 282
    .local v1, "t":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 283
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 287
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 286
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 256
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 257
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 331
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 333
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 334
    .local v1, "mask":I
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    .line 336
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->delete(I)Z

    .line 339
    const/4 v3, 0x1

    goto :goto_0

    .line 341
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "x":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 266
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 267
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 359
    if-nez p1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v3

    .line 361
    :cond_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 362
    .local v1, "mask":I
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 364
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->delete(I)Z

    .line 367
    const/4 v3, 0x1

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->tail:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 775
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->size()I

    move-result v0

    .line 776
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 779
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 780
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 781
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 782
    :cond_1
    return-object p1
.end method
