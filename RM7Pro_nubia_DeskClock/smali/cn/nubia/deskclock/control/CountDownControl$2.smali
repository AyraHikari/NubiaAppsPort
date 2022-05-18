.class Lcn/nubia/deskclock/control/CountDownControl$2;
.super Ljava/lang/Object;
.source "CountDownControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/CountDownControl;->newTimeRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTime:J

.field private startTime:J

.field final synthetic this$0:Lcn/nubia/deskclock/control/CountDownControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/CountDownControl;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->startTime:J

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->lastTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->lastTime:J

    .line 105
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->lastTime:J

    iget-wide v4, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/ui/CountDownView;->updateTime(J)V

    .line 106
    iget-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->lastTime:J

    iput-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->startTime:J

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/deskclock/ui/CountDownView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$700(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$2;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCurrentTime(J)V

    .line 109
    return-void
.end method
