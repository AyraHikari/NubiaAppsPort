.class Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;
.super Ljava/lang/Object;
.source "StopWatchAnimationControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/StopWatchAnimationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$700(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/model/StopWatchModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/StopWatchModel;->getTotleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setHandAngle(J)V

    .line 167
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$800(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->getDigitalSecondTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->getDigitalDeciSecondTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    iget-object v1, v1, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/deskclock/ui/StopWatchClockView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_0
    return-void
.end method
