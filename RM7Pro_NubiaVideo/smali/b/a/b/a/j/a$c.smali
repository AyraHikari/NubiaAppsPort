.class final Lb/a/b/a/j/a$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/a/j/a;


# direct methods
.method public constructor <init>(Lb/a/b/a/j/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {p1}, Lb/a/b/a/j/a;->c(Lb/a/b/a/j/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lb/a/b/a/j/a;->b(Lb/a/b/a/j/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 7
    iget-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lb/a/b/a/j/a;->d(Lb/a/b/a/j/a;Z)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {p1}, Lb/a/b/a/j/a;->e(Lb/a/b/a/j/a;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {p1}, Lb/a/b/a/j/a;->e(Lb/a/b/a/j/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v0}, Lb/a/b/a/j/a;->g(Lb/a/b/a/j/a;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v0}, Lb/a/b/a/j/a;->e(Lb/a/b/a/j/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/a/k/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    :try_start_2
    sget-object v0, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    :try_start_3
    iget-object v2, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v2}, Lb/a/b/a/j/a;->c(Lb/a/b/a/j/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v2}, Lb/a/b/a/j/a;->a(Lb/a/b/a/j/a;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v1}, Lb/a/b/a/j/a;->a(Lb/a/b/a/j/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 16
    monitor-exit v0

    goto :goto_0

    .line 17
    :cond_4
    iget-object v2, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    iput-boolean v1, v2, Lb/a/b/a/j/a;->d:Z

    .line 18
    invoke-static {v2}, Lb/a/b/a/j/a;->f(Lb/a/b/a/j/a;)V

    .line 19
    sget-object v1, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 20
    iget-object v1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v1}, Lb/a/b/a/j/a;->c(Lb/a/b/a/j/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v1}, Lb/a/b/a/j/a;->a(Lb/a/b/a/j/a;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lb/a/b/a/j/a$c;->a:Lb/a/b/a/j/a;

    invoke-static {v1}, Lb/a/b/a/j/a;->a(Lb/a/b/a/j/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 22
    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method
