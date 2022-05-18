.class final Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Looper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    monitor-exit v0

    return-void

    .line 98
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$102(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 99
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$202(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Z)Z

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$300(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 102
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$300(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$500(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    iget-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    iput-boolean v1, p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isBind:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 71
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$300(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    :try_start_2
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :try_start_3
    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 78
    monitor-exit v0

    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$400(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)V

    .line 81
    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    iput-boolean v1, v2, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isBind:Z

    .line 82
    sget-object v1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 83
    iget-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$200(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 84
    iget-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->access$100(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 86
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

    .line 90
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method
