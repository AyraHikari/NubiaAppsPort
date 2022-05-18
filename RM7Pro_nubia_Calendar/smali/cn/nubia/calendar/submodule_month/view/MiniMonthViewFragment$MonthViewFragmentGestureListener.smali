.class Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiniMonthViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonthViewFragmentGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 494
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 523
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$1000(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 517
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$900(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$700(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V

    .line 505
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 510
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 498
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$600(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Landroid/view/MotionEvent;)V

    .line 499
    const/4 v0, 0x1

    return v0
.end method
