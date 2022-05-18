.class Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeRunnable"
.end annotation


# instance fields
.field flag:Z

.field lastTime:J

.field n:J

.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/ClockView;)V
    .locals 2

    .prologue
    .line 246
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->n:J

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->lastTime:J

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/ClockView$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 253
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-boolean v2, v2, Lcn/nubia/deskclock/ui/ClockView;->mForceStop:Z

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    .local v0, "currTime":J
    iget-wide v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->n:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 258
    iget-wide v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->n:J

    .line 259
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/ClockView;->access$100(Lcn/nubia/deskclock/ui/ClockView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/deskclock/ui/ClockView;->access$102(Lcn/nubia/deskclock/ui/ClockView;I)I

    .line 260
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/ClockView;->access$200(Lcn/nubia/deskclock/ui/ClockView;)V

    .line 262
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    invoke-static {v2, v3}, Lcn/nubia/deskclock/ui/ClockView;->access$302(Lcn/nubia/deskclock/ui/ClockView;F)F

    .line 265
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->flag:Z

    if-eqz v2, :cond_2

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->flag:Z

    .line 268
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/deskclock/ui/ClockView;->setHandAngle(J)V

    .line 269
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v2, p0}, Lcn/nubia/deskclock/ui/ClockView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
