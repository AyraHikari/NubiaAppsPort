.class Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/SlotView;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/SlotView$1;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/SlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 537
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onUp(Z)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 548
    sget-boolean p1, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 549
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 550
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 552
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-boolean v1, v1, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move p3, p4

    .line 553
    :goto_0
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p4, p4, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p4, p3, p1, v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 554
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/SlotView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/SlotView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 555
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 589
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-boolean v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mDownInScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->lockRendering()V

    .line 592
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 593
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->unlockRendering()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->unlockRendering()V

    .line 596
    throw p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 562
    sget-boolean p1, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 563
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 565
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-boolean v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, p4

    .line 566
    :goto_0
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p4, p4, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    .line 567
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    .line 566
    invoke-virtual {p4, p3, p1, v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 568
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget p3, p3, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez p3, :cond_2

    if-eqz p1, :cond_2

    .line 569
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object p3, p3, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/ui/Paper;->overScroll(F)V

    .line 572
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 523
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 524
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 526
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 527
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :cond_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 531
    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 579
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-boolean v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mDownInScrolling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 580
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 582
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    :cond_1
    return v1
.end method
