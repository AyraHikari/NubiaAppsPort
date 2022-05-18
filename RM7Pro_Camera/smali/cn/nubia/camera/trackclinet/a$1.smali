.class Lcn/nubia/camera/trackclinet/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/trackclinet/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/trackclinet/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/trackclinet/a;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {p1}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 93
    iget-object p2, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;Z)Z

    .line 94
    sget-object p2, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    invoke-static {p1}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a$1;->a:Lcn/nubia/camera/trackclinet/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/trackclinet/a;->a(Lcn/nubia/camera/trackclinet/a;Z)Z

    .line 104
    sget-object v0, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 105
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
