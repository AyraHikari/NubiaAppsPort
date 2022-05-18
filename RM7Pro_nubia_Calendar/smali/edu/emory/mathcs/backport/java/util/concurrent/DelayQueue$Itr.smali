.class Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;
.super Ljava/lang/Object;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 407
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 409
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    .line 410
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

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
    .line 417
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 418
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 419
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->cursor:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 420
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 424
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->lastRet:I

    if-gez v2, :cond_0

    .line 425
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 426
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->lastRet:I

    aget-object v1, v2, v3

    .line 427
    .local v1, "x":Ljava/lang/Object;
    const/4 v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 430
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 431
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/DelayQueue;)Ledu/emory/mathcs/backport/java/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 433
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 434
    monitor-exit v3

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
