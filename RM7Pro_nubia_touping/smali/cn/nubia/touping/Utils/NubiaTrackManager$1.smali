.class Lcn/nubia/touping/Utils/NubiaTrackManager$1;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/NubiaTrackManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;->this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 40
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;->this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager;->access$102(Lcn/nubia/touping/Utils/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 42
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;->this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager;->access$202(Lcn/nubia/touping/Utils/NubiaTrackManager;Z)Z

    .line 43
    sget-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;->this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager;->access$102(Lcn/nubia/touping/Utils/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 51
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;->this$0:Lcn/nubia/touping/Utils/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager;->access$202(Lcn/nubia/touping/Utils/NubiaTrackManager;Z)Z

    .line 52
    sget-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
