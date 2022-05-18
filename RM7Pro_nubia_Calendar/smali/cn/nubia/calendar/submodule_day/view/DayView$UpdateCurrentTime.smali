.class Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCurrentTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 6308
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x493e0

    .line 6310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6311
    .local v0, "currentTime":J
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 6314
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-boolean v2, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mPaused:Z

    if-nez v2, :cond_0

    .line 6315
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4700(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$4900(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;

    move-result-object v3

    rem-long v4, v0, v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6319
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 6320
    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/text/format/Time;

    move-result-object v3

    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    .line 6319
    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5002(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 6321
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$UpdateCurrentTime;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 6322
    return-void
.end method
