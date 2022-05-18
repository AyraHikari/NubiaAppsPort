.class Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Index"
.end annotation


# instance fields
.field final down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

.field final node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field volatile right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V
    .locals 0
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .param p2, "down"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p3, "right"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 527
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->down:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 528
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 529
    return-void
.end method


# virtual methods
.method final declared-synchronized casRight(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 1
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    if-ne v0, p1, :cond_0

    .line 536
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    const/4 v0, 0x1

    .line 539
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final indexesDeletedNode()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final link(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 2
    .param p1, "succ"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p2, "newSucc"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .prologue
    .line 558
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->node:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 559
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iput-object p1, p2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .line 560
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->casRight(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final unlink(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 1
    .param p1, "succ"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    .prologue
    .line 571
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->right:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;->casRight(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
