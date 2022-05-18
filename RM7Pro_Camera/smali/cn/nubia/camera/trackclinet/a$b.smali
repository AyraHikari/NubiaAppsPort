.class final Lcn/nubia/camera/trackclinet/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/trackclinet/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/trackclinet/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/trackclinet/a;Landroid/os/Looper;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {p1}, Lcn/nubia/camera/trackclinet/a;->f(Lcn/nubia/camera/trackclinet/a;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v0}, Lcn/nubia/camera/trackclinet/a;->b(Lcn/nubia/camera/trackclinet/a;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    :try_start_0
    sget-object v0, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->c(Lcn/nubia/camera/trackclinet/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->d(Lcn/nubia/camera/trackclinet/a;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->d(Lcn/nubia/camera/trackclinet/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 128
    monitor-exit v0

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->e(Lcn/nubia/camera/trackclinet/a;)V

    .line 131
    sget-object v1, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->c(Lcn/nubia/camera/trackclinet/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->d(Lcn/nubia/camera/trackclinet/a;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a$b;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {v1}, Lcn/nubia/camera/trackclinet/a;->d(Lcn/nubia/camera/trackclinet/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 135
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
