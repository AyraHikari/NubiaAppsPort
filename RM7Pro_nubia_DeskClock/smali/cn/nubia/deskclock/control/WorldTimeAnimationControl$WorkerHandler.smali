.class public Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;
.super Landroid/os/Handler;
.source "WorldTimeAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/WorldTimeAnimationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 53
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$000(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    goto :goto_0

    .line 56
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$100(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    goto :goto_0

    .line 59
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$200(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    goto :goto_0

    .line 62
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$300(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    goto :goto_0

    .line 65
    :sswitch_4
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$500(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$400(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)Lcn/nubia/deskclock/model/WorldTimeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/WorldTimeModel;->getsetDeleteStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_3
        0x1388 -> :sswitch_4
    .end sparse-switch
.end method
