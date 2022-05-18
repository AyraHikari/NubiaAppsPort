.class Lcn/nubia/calendar/submodule_day/view/DayView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 4923
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$7;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4926
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$7;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2900(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4928
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$7;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v2, v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3002(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 4929
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3200()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3102(Z)Z

    .line 4931
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$7;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$2302(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 4932
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$7;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 4933
    return-void
.end method
