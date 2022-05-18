.class Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field cursor:I

.field cursorPercolated:I

.field expectedModCount:I

.field lastRet:I

.field lastRetPercolated:Ljava/lang/Object;

.field percolatedElems:Ljava/util/List;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    .line 544
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursorPercolated:I

    .line 545
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$000(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->expectedModCount:I

    .line 548
    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .prologue
    .line 596
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$000(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 597
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 599
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$100(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 555
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->checkForComodification()V

    .line 556
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$100(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 557
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    .line 558
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$200(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    .line 566
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    .line 562
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRetPercolated:Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    .line 566
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRetPercolated:Ljava/lang/Object;

    goto :goto_0

    .line 569
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 574
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    if-ltz v1, :cond_2

    .line 575
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$300(Ledu/emory/mathcs/backport/java/util/PriorityQueue;I)Ljava/lang/Object;

    move-result-object v0

    .line 576
    .local v0, "percolatedElem":Ljava/lang/Object;
    const/4 v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRet:I

    .line 577
    if-nez v0, :cond_0

    .line 578
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->cursor:I

    .line 592
    .end local v0    # "percolatedElem":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->access$000(Ledu/emory/mathcs/backport/java/util/PriorityQueue;)I

    move-result v1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->expectedModCount:I

    .line 593
    return-void

    .line 581
    .restart local v0    # "percolatedElem":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    .line 582
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->percolatedElems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v0    # "percolatedElem":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRetPercolated:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 586
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRetPercolated:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/PriorityQueue$Itr;->lastRetPercolated:Ljava/lang/Object;

    goto :goto_0

    .line 590
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
