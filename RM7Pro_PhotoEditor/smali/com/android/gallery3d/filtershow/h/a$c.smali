.class final Lcom/android/gallery3d/filtershow/h/a$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/h/a;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/h/a;->c(Lcom/android/gallery3d/filtershow/h/a;)Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/h/a;->b(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/h/a;->d(Lcom/android/gallery3d/filtershow/h/a;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/h/a;->e(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/h/a;->e(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/h/a;->g(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/h/a;->e(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/h/a;->c(Lcom/android/gallery3d/filtershow/h/a;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/h/a;->a(Lcom/android/gallery3d/filtershow/h/a;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/h/a;->a(Lcom/android/gallery3d/filtershow/h/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_4
    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    iput-boolean v1, v2, Lcom/android/gallery3d/filtershow/h/a;->d:Z

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/h/a;->f(Lcom/android/gallery3d/filtershow/h/a;)V

    sget-object v1, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/h/a;->c(Lcom/android/gallery3d/filtershow/h/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/h/a;->a(Lcom/android/gallery3d/filtershow/h/a;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/h/a$c;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/h/a;->a(Lcom/android/gallery3d/filtershow/h/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

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

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method
