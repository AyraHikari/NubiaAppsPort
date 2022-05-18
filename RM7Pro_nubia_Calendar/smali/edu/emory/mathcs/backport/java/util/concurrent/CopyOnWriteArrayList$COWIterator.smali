.class Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;
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
    name = "COWIterator"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "cursor"    # I

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->array:[Ljava/lang/Object;

    .line 439
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 440
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 441
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 448
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 456
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
