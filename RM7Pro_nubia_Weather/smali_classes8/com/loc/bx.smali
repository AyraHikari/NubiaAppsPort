.class public final Lcom/loc/bx;
.super Ljava/lang/Object;
.source "CellCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bx$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/cw;

.field private b:Lcom/loc/cw;

.field private c:Lcom/loc/dc;

.field private d:Lcom/loc/bx$a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/cw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/bx$a;

    invoke-direct {v0}, Lcom/loc/bx$a;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/loc/bx;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/loc/dc;ZBLjava/lang/String;Ljava/util/List;)Lcom/loc/bx$a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/dc;",
            "ZB",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cw;",
            ">;)",
            "Lcom/loc/bx$a;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    invoke-virtual {v2}, Lcom/loc/bx$a;->a()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    invoke-virtual {v3}, Lcom/loc/bx$a;->a()V

    move/from16 v0, p3

    iput-byte v0, v3, Lcom/loc/bx$a;->a:B

    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/loc/bx$a;->b:Ljava/lang/String;

    if-eqz p5, :cond_3

    iget-object v2, v3, Lcom/loc/bx$a;->f:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v3, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cw;

    iget-boolean v5, v2, Lcom/loc/cw;->i:Z

    if-nez v5, :cond_2

    iget-boolean v5, v2, Lcom/loc/cw;->h:Z

    if-eqz v5, :cond_2

    iput-object v2, v3, Lcom/loc/bx$a;->d:Lcom/loc/cw;

    goto :goto_1

    :cond_2
    iget-boolean v5, v2, Lcom/loc/cw;->i:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Lcom/loc/cw;->h:Z

    if-eqz v5, :cond_1

    iput-object v2, v3, Lcom/loc/bx$a;->e:Lcom/loc/cw;

    goto :goto_1

    :cond_3
    iget-object v2, v3, Lcom/loc/bx$a;->d:Lcom/loc/cw;

    if-nez v2, :cond_4

    iget-object v2, v3, Lcom/loc/bx$a;->e:Lcom/loc/cw;

    :goto_2
    iput-object v2, v3, Lcom/loc/bx$a;->c:Lcom/loc/cw;

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->c:Lcom/loc/cw;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, v3, Lcom/loc/bx$a;->d:Lcom/loc/cw;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/dc;

    if-eqz v2, :cond_6

    iget v2, p1, Lcom/loc/dc;->g:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    const/high16 v2, 0x44fa0000    # 2000.0f

    :goto_3
    iget-object v3, p0, Lcom/loc/bx;->c:Lcom/loc/dc;

    invoke-virtual {p1, v3}, Lcom/loc/dc;->a(Lcom/loc/db;)D

    move-result-wide v4

    float-to-double v2, v2

    cmpl-double v2, v4, v2

    if-lez v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->d:Lcom/loc/cw;

    iget-object v3, p0, Lcom/loc/bx;->a:Lcom/loc/cw;

    invoke-static {v2, v3}, Lcom/loc/bx$a;->a(Lcom/loc/cw;Lcom/loc/cw;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->e:Lcom/loc/cw;

    iget-object v3, p0, Lcom/loc/bx;->b:Lcom/loc/cw;

    invoke-static {v2, v3}, Lcom/loc/bx$a;->a(Lcom/loc/cw;Lcom/loc/cw;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_6
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->d:Lcom/loc/cw;

    iput-object v2, p0, Lcom/loc/bx;->a:Lcom/loc/cw;

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->e:Lcom/loc/cw;

    iput-object v2, p0, Lcom/loc/bx;->b:Lcom/loc/cw;

    iput-object p1, p0, Lcom/loc/bx;->c:Lcom/loc/dc;

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-static {v2}, Lcom/loc/ct;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v8, p0, Lcom/loc/bx;->e:Ljava/util/List;

    monitor-enter v8

    :try_start_0
    iget-object v2, v2, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cw;

    if-eqz v2, :cond_7

    iget-boolean v3, v2, Lcom/loc/cw;->h:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/loc/cw;->e:J

    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_c

    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_8
    iget v2, p1, Lcom/loc/dc;->g:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    const/high16 v2, 0x43fa0000    # 500.0f

    goto :goto_3

    :cond_9
    const/high16 v2, 0x42c80000    # 100.0f

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    const/4 v5, -0x1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v6, v2

    move v3, v4

    move v4, v5

    :goto_7
    if-ge v3, v11, :cond_d

    :try_start_1
    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cw;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, -0x1

    iget v3, v10, Lcom/loc/cw;->c:I

    iget v5, v2, Lcom/loc/cw;->c:I

    if-eq v3, v5, :cond_d

    iget v3, v10, Lcom/loc/cw;->c:I

    int-to-long v12, v3

    iput-wide v12, v2, Lcom/loc/cw;->e:J

    iget v3, v10, Lcom/loc/cw;->c:I

    iput v3, v2, Lcom/loc/cw;->c:I

    :cond_d
    if-ltz v4, :cond_7

    const/4 v2, 0x3

    if-ge v11, v2, :cond_f

    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iget-wide v12, v2, Lcom/loc/cw;->e:J

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-wide v12, v2, Lcom/loc/cw;->e:J

    cmp-long v2, v6, v12

    if-nez v2, :cond_12

    move v2, v3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_7

    :cond_f
    iget-wide v2, v10, Lcom/loc/cw;->e:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    if-ge v4, v11, :cond_7

    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    iget-object v2, v2, Lcom/loc/bx$a;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/loc/bx;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/bx$a;

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    move v2, v4

    goto :goto_8
.end method
