.class Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    .prologue
    .line 627
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$300(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 634
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$200(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->fence:I

    .line 635
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/ArrayDeque;Ledu/emory/mathcs/backport/java/util/ArrayDeque$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque;
    .param p2, "x1"    # Ledu/emory/mathcs/backport/java/util/ArrayDeque$1;

    .prologue
    .line 627
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;-><init>(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

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
    .line 642
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 643
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 644
    :cond_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$400(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 645
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$400(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 646
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$200(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 647
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 648
    :cond_2
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 649
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 655
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->lastRet:I

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$500(Ledu/emory/mathcs/backport/java/util/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$400(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 657
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->this$0:Ledu/emory/mathcs/backport/java/util/ArrayDeque;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/ArrayDeque;->access$200(Ledu/emory/mathcs/backport/java/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->fence:I

    .line 659
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 660
    return-void
.end method
