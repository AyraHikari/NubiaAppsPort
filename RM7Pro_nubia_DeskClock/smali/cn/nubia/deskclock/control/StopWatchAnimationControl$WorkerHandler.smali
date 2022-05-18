.class Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;
.super Landroid/os/Handler;
.source "StopWatchAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/StopWatchAnimationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/control/StopWatchAnimationControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$000(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$100(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$200(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$300(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    goto :goto_0

    .line 99
    :pswitch_4
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$400(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    goto :goto_0

    .line 102
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stop_watch_set_time"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 104
    .local v0, "time":J
    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2, v0, v1}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$500(Lcn/nubia/deskclock/control/StopWatchAnimationControl;J)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
