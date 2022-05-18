.class Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$1;
.super Landroid/os/Handler;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    .prologue
    .line 666
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$1;->this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 669
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 670
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x507

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$1;->this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->access$900(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V

    .line 673
    :cond_0
    return-void
.end method
