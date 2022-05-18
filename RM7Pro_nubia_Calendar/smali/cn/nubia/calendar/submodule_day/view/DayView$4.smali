.class Lcn/nubia/calendar/submodule_day/view/DayView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
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
    .line 369
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 377
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$802(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 378
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$802(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 383
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$900(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 384
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 385
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 372
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$4;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$802(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 373
    return-void
.end method
