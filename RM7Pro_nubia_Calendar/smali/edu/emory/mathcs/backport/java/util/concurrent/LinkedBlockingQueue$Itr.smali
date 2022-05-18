.class Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field private current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

.field private currentElement:Ljava/lang/Object;

.field private lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)V
    .locals 3
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    .prologue
    .line 643
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    :try_start_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 647
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 649
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 651
    return-void

    .line 649
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 650
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

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
    .line 658
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 659
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 660
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 668
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 669
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 662
    :cond_0
    :try_start_3
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 663
    .local v0, "x":Ljava/lang/Object;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 664
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 665
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->current:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 667
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 673
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v4, :cond_0

    .line 674
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 675
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 676
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$200(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 677
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 678
    .local v1, "node":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    const/4 v4, 0x0

    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 679
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v3

    .line 680
    .local v3, "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v4

    iget-object v2, v4, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 681
    .local v2, "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_1

    .line 682
    move-object v3, v2

    .line 683
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_0

    .line 685
    :cond_1
    if-ne v2, v1, :cond_3

    .line 686
    const/4 v4, 0x0

    iput-object v4, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 687
    iget-object v4, v2, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v4, v3, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 688
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$400(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v4

    if-ne v4, v2, :cond_2

    .line 689
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$402(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;)Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;

    .line 691
    :cond_2
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$510(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)I

    move-result v0

    .local v0, "c":I
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    :try_start_3
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$600(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 693
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 695
    .end local v0    # "c":I
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 696
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 697
    return-void

    .line 691
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 695
    .end local v1    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v2    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    .end local v3    # "trail":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4

    .line 696
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4
.end method
