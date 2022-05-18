.class public final Lcom/loc/ct;
.super Ljava/lang/Object;
.source "RssiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ct$b;,
        Lcom/loc/ct$a;
    }
.end annotation


# direct methods
.method public static a(II)J
    .locals 6

    const-wide v4, 0xffffffffL

    int-to-long v0, p0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized a(J)S
    .locals 2

    const-class v1, Lcom/loc/ct;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/loc/cs;->a(J)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cw;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/loc/ct;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cw;

    instance-of v4, v0, Lcom/loc/cy;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/loc/cy;

    new-instance v4, Lcom/loc/ct$a;

    iget v5, v0, Lcom/loc/cy;->j:I

    iget v6, v0, Lcom/loc/cy;->k:I

    iget v0, v0, Lcom/loc/cy;->c:I

    invoke-direct {v4, v5, v6, v0}, Lcom/loc/ct$a;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_2
    instance-of v4, v0, Lcom/loc/cz;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/loc/cz;

    new-instance v4, Lcom/loc/ct$a;

    iget v5, v0, Lcom/loc/cz;->j:I

    iget v6, v0, Lcom/loc/cz;->k:I

    iget v0, v0, Lcom/loc/cz;->c:I

    invoke-direct {v4, v5, v6, v0}, Lcom/loc/ct$a;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    instance-of v4, v0, Lcom/loc/da;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/loc/da;

    new-instance v4, Lcom/loc/ct$a;

    iget v5, v0, Lcom/loc/da;->j:I

    iget v6, v0, Lcom/loc/da;->k:I

    iget v0, v0, Lcom/loc/da;->c:I

    invoke-direct {v4, v5, v6, v0}, Lcom/loc/ct$a;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    instance-of v4, v0, Lcom/loc/cx;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/loc/cx;

    new-instance v4, Lcom/loc/ct$a;

    iget v5, v0, Lcom/loc/cx;->k:I

    iget v6, v0, Lcom/loc/cx;->l:I

    iget v0, v0, Lcom/loc/cx;->c:I

    invoke-direct {v4, v5, v6, v0}, Lcom/loc/ct$a;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/loc/cs;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized b(J)S
    .locals 2

    const-class v1, Lcom/loc/ct;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/loc/cs;->b(J)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dd;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/loc/ct;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dd;

    new-instance v4, Lcom/loc/ct$b;

    iget-wide v6, v0, Lcom/loc/dd;->a:J

    iget v0, v0, Lcom/loc/dd;->c:I

    invoke-direct {v4, v6, v7, v0}, Lcom/loc/ct$b;-><init>(JI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/loc/cs;->b(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
