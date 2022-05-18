.class final Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/util/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/util/NubiaTrackManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :try_start_0
    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$200(Lcn/nubia/deskclock/util/NubiaTrackManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$100(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$100(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 76
    monitor-exit v3

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$300(Lcn/nubia/deskclock/util/NubiaTrackManager;)V

    .line 79
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 80
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$200(Lcn/nubia/deskclock/util/NubiaTrackManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$100(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$100(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 83
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 92
    :try_start_4
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$200(Lcn/nubia/deskclock/util/NubiaTrackManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    monitor-exit v3

    goto :goto_0

    .line 97
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 95
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$102(Lcn/nubia/deskclock/util/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 96
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$202(Lcn/nubia/deskclock/util/NubiaTrackManager;Z)Z

    .line 97
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :try_start_6
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$400(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v2}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$400(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->this$0:Lcn/nubia/deskclock/util/NubiaTrackManager;

    invoke-static {v3}, Lcn/nubia/deskclock/util/NubiaTrackManager;->access$500(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 102
    :catch_2
    move-exception v1

    .line 103
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
