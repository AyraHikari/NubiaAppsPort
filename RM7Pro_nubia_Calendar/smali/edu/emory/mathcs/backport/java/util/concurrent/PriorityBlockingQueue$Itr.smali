.class Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 514
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 516
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    .line 517
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

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
    .line 524
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 526
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 527
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 531
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    if-gez v2, :cond_0

    .line 532
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 533
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    aget-object v1, v2, v3

    .line 534
    .local v1, "x":Ljava/lang/Object;
    const/4 v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 537
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 539
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 541
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/PriorityBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
