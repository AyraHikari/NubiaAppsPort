.class Lb/a/b/c/b/g$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Z

.field final synthetic d:Lb/a/b/c/b/g;


# direct methods
.method private constructor <init>(Lb/a/b/c/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/a/b/c/b/g$f;->a:Z

    .line 3
    iput-boolean p1, p0, Lb/a/b/c/b/g$f;->b:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lb/a/b/c/b/g$f;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lb/a/b/c/b/g$f;-><init>(Lb/a/b/c/b/g;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/b/c/b/g$f;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lb/a/b/c/b/g$f;->c:Z

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v0}, Lb/a/b/c/b/g;->l(Lb/a/b/c/b/g;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lb/a/b/c/b/g$f;->b:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lb/a/b/c/b/g$f;->a:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lb/a/b/c/b/g$f;->a:Z

    if-eqz v2, :cond_7

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lb/a/b/c/b/g$f;->a:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lb/a/b/c/b/g$f;->b:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lb/a/b/c/b/g$f;->c(Z)V

    .line 6
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->n(Lb/a/b/c/b/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->g(Lb/a/b/c/b/g;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reload pause"

    invoke-static {v2, v3}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {p0}, Lb/a/b/d/e;->U(Ljava/lang/Object;)V

    .line 9
    iget-boolean v2, p0, Lb/a/b/c/b/g$f;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->n(Lb/a/b/c/b/g;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->g(Lb/a/b/c/b/g;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reload resume"

    invoke-static {v2, v3}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean v0, p0, Lb/a/b/c/b/g$f;->b:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v1}, Lb/a/b/c/b/g$f;->c(Z)V

    .line 15
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->m(Lb/a/b/c/b/g;)Lb/a/b/c/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/b/c/b/o;->n()J

    move-result-wide v2

    .line 16
    iget-object v4, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    new-instance v5, Lb/a/b/c/b/g$c;

    invoke-direct {v5, v4, v2, v3}, Lb/a/b/c/b/g$c;-><init>(Lb/a/b/c/b/g;J)V

    invoke-static {v4, v5}, Lb/a/b/c/b/g;->o(Lb/a/b/c/b/g;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/a/b/c/b/g$h;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    iget-wide v5, v4, Lb/a/b/c/b/g$h;->a:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_5

    .line 18
    iget-object v5, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v5}, Lb/a/b/c/b/g;->m(Lb/a/b/c/b/g;)Lb/a/b/c/b/o;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/b/c/b/o;->i()I

    move-result v5

    iput v5, v4, Lb/a/b/c/b/g$h;->d:I

    .line 19
    iput-wide v2, v4, Lb/a/b/c/b/g$h;->a:J

    .line 20
    :cond_5
    iget v2, v4, Lb/a/b/c/b/g$h;->c:I

    if-lez v2, :cond_6

    .line 21
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->m(Lb/a/b/c/b/g;)Lb/a/b/c/b/o;

    move-result-object v2

    iget v3, v4, Lb/a/b/c/b/g$h;->b:I

    iget v5, v4, Lb/a/b/c/b/g$h;->c:I

    invoke-virtual {v2, v3, v5}, Lb/a/b/c/b/o;->h(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lb/a/b/c/b/g$h;->e:Ljava/util/ArrayList;

    .line 22
    :cond_6
    iget-object v2, p0, Lb/a/b/c/b/g$f;->d:Lb/a/b/c/b/g;

    new-instance v3, Lb/a/b/c/b/g$g;

    invoke-direct {v3, v2, v4}, Lb/a/b/c/b/g$g;-><init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$h;)V

    invoke-static {v2, v3}, Lb/a/b/c/b/g;->o(Lb/a/b/c/b/g;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 24
    :cond_7
    invoke-direct {p0, v0}, Lb/a/b/c/b/g$f;->c(Z)V

    return-void
.end method
