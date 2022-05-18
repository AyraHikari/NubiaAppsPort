.class final Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :try_start_0
    sget-object v2, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$200(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$100(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$100(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 76
    monitor-exit v2

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$300(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)V

    .line 80
    sget-object v2, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    :try_start_5
    sget-object v1, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 82
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$200(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$100(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$100(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 85
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    sget-object v2, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 94
    :try_start_7
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$200(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    monitor-exit v2

    goto :goto_0

    .line 97
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :cond_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 98
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$400(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$400(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$500(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 101
    :cond_4
    sget-object v2, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 102
    :try_start_9
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$102(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 103
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->access$202(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;Z)Z

    .line 104
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
