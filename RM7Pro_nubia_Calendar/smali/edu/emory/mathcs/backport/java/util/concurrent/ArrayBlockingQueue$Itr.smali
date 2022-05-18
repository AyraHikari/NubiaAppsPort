.class Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    .prologue
    const/4 v1, -0x1

    .line 714
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 716
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 722
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 720
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkNext()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 738
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 739
    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 744
    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v0, :cond_0

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
    .line 749
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$400(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 750
    .local v0, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 752
    :try_start_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v2, :cond_0

    .line 753
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 754
    :cond_0
    :try_start_1
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 755
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 756
    .local v1, "x":Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 757
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->checkNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public remove()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 765
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$400(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 766
    .local v1, "lock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 768
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 769
    .local v0, "i":I
    if-ne v0, v4, :cond_0

    .line 770
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 771
    .restart local v0    # "i":I
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 773
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v2

    .line 774
    .local v2, "ti":I
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 776
    if-ne v0, v2, :cond_1

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue;)I

    move-result v0

    .end local v0    # "i":I
    :cond_1
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 777
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ArrayBlockingQueue$Itr;->checkNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 781
    return-void
.end method
