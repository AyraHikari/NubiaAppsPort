.class Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 42
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 44
    iget-object p2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Z)Z

    .line 45
    sget-object p2, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 46
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

    .line 51
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Z)Z

    .line 54
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 55
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
