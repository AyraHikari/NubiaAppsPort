.class Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 6325
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6385
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6386
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onDown"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6388
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5800(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V

    .line 6389
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 6369
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6370
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onFling"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6372
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5500(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6373
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 6374
    const/4 v0, 0x0

    .line 6380
    :goto_0
    return v0

    .line 6377
    :cond_1
    const/4 p4, 0x0

    .line 6379
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5700(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 6380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6338
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6339
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onLongPress"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6341
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5300(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V

    .line 6342
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 6347
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6348
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onScroll"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6350
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5400(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 6351
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5500(Lcn/nubia/calendar/submodule_day/view/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6352
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 6356
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 6357
    const/4 v0, 0x0

    .line 6363
    :goto_0
    return v0

    .line 6360
    :cond_1
    const/4 p4, 0x0

    .line 6362
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5600(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 6363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6329
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6330
    invoke-static {}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onSingleTapUp"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6332
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$CalendarGestureListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5200(Lcn/nubia/calendar/submodule_day/view/DayView;Landroid/view/MotionEvent;)V

    .line 6333
    const/4 v0, 0x1

    return v0
.end method
