.class Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescItr"
.end annotation


# instance fields
.field cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field expectedModCount:I

.field idx:I

.field lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/LinkedList;)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;

    .prologue
    .line 444
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;-><init>(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;I)V

    .line 445
    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;I)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/LinkedList;
    .param p2, "cursor"    # Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;
    .param p3, "idx"    # I

    .prologue
    .line 437
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 439
    iput p3, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    .line 440
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    .line 441
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 481
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 482
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-static {v0, v1, p1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$400(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;Ljava/lang/Object;)V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 484
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    .line 485
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    .line 486
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

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
    .line 456
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 465
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 466
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 467
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->prev:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 468
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    .line 469
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 474
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$100(Ledu/emory/mathcs/backport/java/util/LinkedList;)Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 475
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 476
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    .line 477
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 494
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$000(Ledu/emory/mathcs/backport/java/util/LinkedList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 495
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 496
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-ne v0, v1, :cond_2

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->idx:I

    .line 497
    :goto_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->this$0:Ledu/emory/mathcs/backport/java/util/LinkedList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/LinkedList;->access$300(Ledu/emory/mathcs/backport/java/util/LinkedList;Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;)Ljava/lang/Object;

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    .line 499
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->expectedModCount:I

    .line 500
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->next:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->cursor:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newVal"    # Ljava/lang/Object;

    .prologue
    .line 489
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 490
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/LinkedList$DescItr;->lastRet:Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;

    iput-object p1, v0, Ledu/emory/mathcs/backport/java/util/LinkedList$Entry;->val:Ljava/lang/Object;

    .line 491
    return-void
.end method
