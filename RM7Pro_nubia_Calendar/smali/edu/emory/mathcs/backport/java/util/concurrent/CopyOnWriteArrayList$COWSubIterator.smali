.class Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "COWSubIterator"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field first:I

.field last:I


# direct methods
.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "first"    # I
    .param p3, "last"    # I
    .param p4, "cursor"    # I

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    .line 850
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    .line 851
    iput p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    .line 852
    iput p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    .line 853
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 854
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 855
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 858
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->last:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 859
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 863
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 864
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 861
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWSubIterator;->first:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 873
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 870
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
