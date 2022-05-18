.class Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoBroadcaster"
.end annotation


# instance fields
.field private final mCounter:I

.field private final mEnd:Landroid/text/format/Time;

.field private final mStart:Landroid/text/format/Time;

.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V
    .locals 1
    .param p2, "start"    # Landroid/text/format/Time;
    .param p3, "end"    # Landroid/text/format/Time;

    .prologue
    .line 2167
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1104()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->mCounter:I

    .line 2169
    iput-object p2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->mStart:Landroid/text/format/Time;

    .line 2170
    iput-object p3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    .line 2171
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 2175
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2176
    .local v2, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-static {v2, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1302(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 2177
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    .end local v2    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    check-cast v2, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 2178
    .restart local v2    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-static {v2, v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1302(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 2179
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, " lsm %%%%%%%%%%%%%%%%%%%%%% onAnimationEnd"

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->mCounter:I

    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1100()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2181
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget v3, v3, Lcn/nubia/calendar/submodule_day/view/DayView;->mNumDays:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    new-instance v0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 2184
    .local v0, "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    iput-object v3, v0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->selectedTime:Landroid/text/format/Time;

    .line 2185
    const-wide/16 v4, 0x1

    iput-wide v4, v0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->extraLong:J

    .line 2186
    const/4 v3, 0x1

    iput v3, v0, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->isSingleTapOrSwitchViews:I

    .line 2187
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayView$GotoBroadcaster;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1500(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xfa7

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2189
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 2190
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2202
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2206
    return-void
.end method
