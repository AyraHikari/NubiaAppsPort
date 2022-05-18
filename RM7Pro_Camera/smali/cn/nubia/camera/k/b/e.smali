.class public Lcn/nubia/camera/k/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:Lcn/nubia/camera/k/b/a;

.field private e:Lcn/nubia/camera/k/b/c;


# direct methods
.method public constructor <init>(Lcom/a/a/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcn/nubia/camera/k/b/e;->c:Z

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/k/b/e;->a:Lcom/a/a/a/d;

    .line 65
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/b/e;->b:Ljava/lang/Object;

    .line 66
    new-instance p1, Lcn/nubia/camera/k/b/c;

    invoke-direct {p1}, Lcn/nubia/camera/k/b/c;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/b/e;->e:Lcn/nubia/camera/k/b/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "SessionCameraCommand"

    const-string v1, "Session manager closing"

    .line 30
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/k/b/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 32
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/b/e;->c:Z

    const-string v1, "SessionCameraCommand"

    const-string v2, "Session manager closed"

    .line 33
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/k/b/a;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/k/b/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/b/e;->c:Z

    if-nez v1, :cond_0

    const-string v1, "SessionCameraCommand"

    const-string v2, "SessionManager is close, just save current session"

    .line 73
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/k/b/e;->d:Lcn/nubia/camera/k/b/a;

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/b/e;->a()V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/k/b/e;->e:Lcn/nubia/camera/k/b/c;

    invoke-virtual {v1}, Lcn/nubia/camera/k/b/c;->a()V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/k/b/e;->a:Lcom/a/a/a/d;

    invoke-interface {v1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/k/b/b;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/b/e;->e:Lcn/nubia/camera/k/b/c;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    const-string v0, "SessionCameraCommand"

    const-string v1, "Session manager opening"

    .line 38
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/k/b/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 40
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/b/e;->c:Z

    const-string v1, "SessionCameraCommand"

    const-string v2, "Session manager opened"

    .line 41
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcn/nubia/camera/k/b/e;->d:Lcn/nubia/camera/k/b/a;

    if-eqz v1, :cond_0

    const-string v1, "SessionCameraCommand"

    const-string v2, "Execute session latency"

    .line 43
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcn/nubia/camera/k/b/e;->d:Lcn/nubia/camera/k/b/a;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/k/b/e;->a(Lcn/nubia/camera/k/b/a;)V

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcn/nubia/camera/k/b/e;->d:Lcn/nubia/camera/k/b/a;

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/k/b/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/b/e;->c:Z

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcn/nubia/camera/k/b/e;->d:Lcn/nubia/camera/k/b/a;

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
