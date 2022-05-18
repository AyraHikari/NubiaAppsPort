.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final key:Ljava/lang/Object;

.field volatile next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .param p1, "next"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 402
    iput-object p0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 403
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 404
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "next"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 389
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 390
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 391
    return-void
.end method


# virtual methods
.method appendMarker(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 1
    .param p1, "f"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    .line 458
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 1
    .param p1, "cmp"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .param p2, "val"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v0, p1, :cond_0

    .line 424
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized casValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 411
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    const/4 v0, 0x1

    .line 415
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method createSnapshot()Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;
    .locals 3

    .prologue
    .line 501
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 503
    const/4 v1, 0x0

    .line 504
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getValidValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 490
    .local v0, "v":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 491
    :cond_0
    const/4 v0, 0x0

    .line 492
    .end local v0    # "v":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method helpDelete(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)V
    .locals 1
    .param p1, "b"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .param p2, "f"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .prologue
    .line 474
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p0, v0, :cond_1

    .line 475
    if-eqz p2, :cond_0

    iget-object v0, p2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eq v0, p2, :cond_2

    .line 476
    :cond_0
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    iget-object v0, p2, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p1, p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;)Z

    goto :goto_0
.end method

.method isBaseHeader()Z
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMarker()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
