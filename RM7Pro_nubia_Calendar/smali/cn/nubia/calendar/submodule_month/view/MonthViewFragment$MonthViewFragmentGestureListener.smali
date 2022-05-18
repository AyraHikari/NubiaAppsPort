.class Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonthViewFragmentGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 646
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 676
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1300(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V

    .line 677
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
    .line 670
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1200(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 657
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1000(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V

    .line 658
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 663
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$1100(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 650
    const-string v0, "Calendar"

    const-string v1, "GestureDetector.onSingleTapUp"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$MonthViewFragmentGestureListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$900(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Landroid/view/MotionEvent;)V

    .line 652
    const/4 v0, 0x1

    return v0
.end method
