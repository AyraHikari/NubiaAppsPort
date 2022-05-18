.class Lb/a/b/e/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lb/a/b/e/a;
.implements Lb/a/b/e/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lb/a/b/e/a<",
        "TT;>;",
        "Lb/a/b/e/d$d;"
    }
.end annotation


# instance fields
.field private a:Lb/a/b/e/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/e/d$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lb/a/b/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lb/a/b/e/d$b;

.field private d:Lb/a/b/e/d$f;

.field private volatile e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private h:I

.field final synthetic i:Lb/a/b/e/d;


# direct methods
.method public constructor <init>(Lb/a/b/e/d;Lb/a/b/e/d$c;Lb/a/b/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/e/d$c<",
            "TT;>;",
            "Lb/a/b/e/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/b/e/d$g;->i:Lb/a/b/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/b/e/d$g;->a:Lb/a/b/e/d$c;

    .line 3
    iput-object p3, p0, Lb/a/b/e/d$g;->b:Lb/a/b/e/b;

    return-void
.end method

.method private c(Lb/a/b/e/d$f;)Z
    .locals 3

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lb/a/b/e/d$g;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lb/a/b/e/d$g;->d:Lb/a/b/e/d$f;

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_0
    iput-object p1, p0, Lb/a/b/e/d$g;->d:Lb/a/b/e/d$f;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    monitor-enter p1

    .line 8
    :try_start_1
    iget v0, p1, Lb/a/b/e/d$f;->a:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 9
    iput v0, p1, Lb/a/b/e/d$f;->a:I

    .line 10
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iput-object v1, p0, Lb/a/b/e/d$g;->d:Lb/a/b/e/d$f;

    .line 13
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 14
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :catch_0
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 16
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private d(I)Lb/a/b/e/d$f;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/b/e/d$g;->i:Lb/a/b/e/d;

    iget-object p1, p1, Lb/a/b/e/d;->a:Lb/a/b/e/d$f;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/b/e/d$g;->i:Lb/a/b/e/d;

    iget-object p1, p1, Lb/a/b/e/d;->b:Lb/a/b/e/d$f;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lb/a/b/e/d$f;)V
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p1, Lb/a/b/e/d$f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lb/a/b/e/d$f;->a:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/b/e/d$g;->get()Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized b(Lb/a/b/e/d$b;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lb/a/b/e/d$g;->c:Lb/a/b/e/d$b;

    .line 2
    iget-boolean p1, p0, Lb/a/b/e/d$g;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a/b/e/d$g;->c:Lb/a/b/e/d$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lb/a/b/e/d$b;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lb/a/b/e/d$g;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lb/a/b/e/d$g;->e:Z

    .line 3
    iget-object v0, p0, Lb/a/b/e/d$g;->d:Lb/a/b/e/d$f;

    if-eqz v0, :cond_1

    .line 4
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    iget-object v1, p0, Lb/a/b/e/d$g;->d:Lb/a/b/e/d$f;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/b/e/d$g;->c:Lb/a/b/e/d$b;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lb/a/b/e/d$b;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/e/d$g;->h:I

    invoke-direct {p0, v0}, Lb/a/b/e/d$g;->d(I)Lb/a/b/e/d$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lb/a/b/e/d$g;->e(Lb/a/b/e/d$f;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/b/e/d$g;->h:I

    .line 4
    invoke-direct {p0, p1}, Lb/a/b/e/d$g;->d(I)Lb/a/b/e/d$f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v1}, Lb/a/b/e/d$g;->c(Lb/a/b/e/d$f;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    iput p1, p0, Lb/a/b/e/d$g;->h:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lb/a/b/e/d$g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/b/e/d$g;->g:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/b/e/d$g;->e:Z

    return v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/a/b/e/d$g;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/b/e/d$g;->a:Lb/a/b/e/d$c;

    invoke-interface {v1, p0}, Lb/a/b/e/d$c;->a(Lb/a/b/e/d$d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-enter p0

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0, v2}, Lb/a/b/e/d$g;->f(I)Z

    .line 6
    iput-object v1, p0, Lb/a/b/e/d$g;->g:Ljava/lang/Object;

    .line 7
    iput-boolean v0, p0, Lb/a/b/e/d$g;->f:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object v0, p0, Lb/a/b/e/d$g;->b:Lb/a/b/e/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lb/a/b/e/b;->a(Lb/a/b/e/a;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
