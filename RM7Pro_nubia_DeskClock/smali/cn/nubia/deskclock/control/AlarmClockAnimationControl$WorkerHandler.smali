.class Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;
.super Landroid/os/Handler;
.source "AlarmClockAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# instance fields
.field weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/control/AlarmClockAnimationControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Landroid/os/Looper;)V
    .locals 1
    .param p1, "alarmClockAnimationControl"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .line 68
    .local v0, "alarmClockAnimationControl":Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 89
    .end local v0    # "alarmClockAnimationControl":Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v0    # "alarmClockAnimationControl":Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
    :sswitch_0
    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$000(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    goto :goto_0

    .line 73
    :sswitch_1
    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$100(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/ui/AlarmClockView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->startUpdateTime()V

    goto :goto_0

    .line 76
    :sswitch_2
    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$200(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    goto :goto_0

    .line 79
    :sswitch_3
    invoke-static {v0, p1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$300(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :sswitch_4
    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$500(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$400(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/model/AlarmClockModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/AlarmClockModel;->getsetDeleteStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :sswitch_5
    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$600(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_5
        0x1388 -> :sswitch_4
    .end sparse-switch
.end method
