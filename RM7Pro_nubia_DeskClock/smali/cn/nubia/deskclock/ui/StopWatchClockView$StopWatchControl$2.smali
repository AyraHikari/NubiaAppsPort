.class Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;
.super Ljava/lang/Object;
.source "StopWatchClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->newTimeRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currTime:J

.field private lastTime:J

.field final synthetic this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V
    .locals 2
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    .prologue
    .line 685
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->lastTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->currTime:J

    .line 692
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    iget-wide v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->currTime:J

    iget-wide v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->lastTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setHandAngle(J)V

    .line 693
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;->this$1:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method
