.class Lcn/nubia/k/a/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/k/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcn/nubia/k/b/e;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "StorageThread"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcn/nubia/k/a/c;->b:Z

    .line 22
    iput-object v0, p0, Lcn/nubia/k/a/c;->c:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    .line 29
    iput-object p2, p0, Lcn/nubia/k/a/c;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "StorageThread"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/k/a/c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/k/a/c;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/k/a/c;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcn/nubia/k/a/c;->c:Landroid/os/Handler;

    const-string v0, "StorageThread"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/k/a/c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 43
    :try_start_2
    iget-object v1, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 45
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 47
    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 49
    :cond_4
    iget-object v1, p0, Lcn/nubia/k/a/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/k/b/e;

    .line 51
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    const-string v0, "jinrong"

    const-string v2, "sendThumbnail request"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {v1}, Lcn/nubia/k/b/e;->a()Lcn/nubia/k/a/b;

    move-result-object v0

    .line 55
    invoke-interface {v1, v0}, Lcn/nubia/k/b/e;->a(Lcn/nubia/k/a/b;)V

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    iput v2, v1, Landroid/os/Message;->what:I

    .line 60
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcn/nubia/k/a/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 51
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
