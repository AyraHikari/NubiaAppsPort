.class public Lcn/nubia/music/ui/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/GestureDetector$a;,
        Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;,
        Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;,
        Lcn/nubia/music/ui/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcn/nubia/music/ui/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 223
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcn/nubia/music/ui/GestureDetector;->TAP_TIMEOUT:I

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcn/nubia/music/ui/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;)V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/GestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 361
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/music/ui/GestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/16 v0, 0x190

    iput v0, p0, Lcn/nubia/music/ui/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 378
    if-eqz p3, :cond_1

    .line 379
    new-instance v0, Lcn/nubia/music/ui/GestureDetector$a;

    invoke-direct {v0, p0, p3}, Lcn/nubia/music/ui/GestureDetector$a;-><init>(Lcn/nubia/music/ui/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 383
    :goto_0
    iput-object p2, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    .line 384
    instance-of v0, p2, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 385
    check-cast p2, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcn/nubia/music/ui/GestureDetector;->setOnDoubleTapListener(Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;)V

    .line 387
    :cond_0
    invoke-direct {p0, p1, p4}, Lcn/nubia/music/ui/GestureDetector;->init(Landroid/content/Context;Z)V

    .line 388
    return-void

    .line 381
    :cond_1
    new-instance v0, Lcn/nubia/music/ui/GestureDetector$a;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/GestureDetector$a;-><init>(Lcn/nubia/music/ui/GestureDetector;)V

    iput-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Lcn/nubia/music/ui/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0, p1, v0}, Lcn/nubia/music/ui/GestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/music/ui/GestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/music/ui/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/ui/GestureDetector;)Lcn/nubia/music/ui/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/ui/GestureDetector;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/ui/GestureDetector;)Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/ui/GestureDetector;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 630
    iput-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mIsDoubleTapping:Z

    .line 631
    iput-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mStillDown:Z

    .line 632
    iput-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mAlwaysInTapRegion:Z

    .line 634
    iget-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 635
    iput-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    .line 637
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    .line 646
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 647
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mIsLongpressEnabled:Z

    .line 395
    iput-boolean p2, p0, Lcn/nubia/music/ui/GestureDetector;->mIgnoreMultitouch:Z

    .line 399
    if-nez p1, :cond_1

    .line 401
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 404
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/GestureDetector;->mMinimumFlingVelocity:I

    .line 405
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/GestureDetector;->mMaximumFlingVelocity:I

    .line 413
    :goto_0
    mul-int/2addr v0, v0

    iput v0, p0, Lcn/nubia/music/ui/GestureDetector;->mTouchSlopSquare:I

    .line 415
    return-void

    .line 407
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 410
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcn/nubia/music/ui/GestureDetector;->mMinimumFlingVelocity:I

    .line 411
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 462
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 463
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 465
    :cond_0
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 469
    and-int/lit16 v5, v2, 0xff

    packed-switch v5, :pswitch_data_0

    .line 621
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 471
    :pswitch_1
    iget-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureDetector;->cancel()V

    goto :goto_0

    .line 479
    :pswitch_2
    iget-boolean v3, p0, Lcn/nubia/music/ui/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 480
    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_2

    .line 482
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionX:F

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionY:F

    .line 484
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 485
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 480
    goto :goto_1

    .line 490
    :pswitch_3
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_7

    .line 491
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_3

    .line 493
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    :cond_3
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 496
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureDetector;->isConsideredDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 498
    iput-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mIsDoubleTapping:Z

    .line 500
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v5}, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    .line 502
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    invoke-interface {v5, p1}, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 509
    :goto_2
    iput v4, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionX:F

    .line 510
    iput v3, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionY:F

    .line 511
    iget-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_4

    .line 512
    iget-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 514
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 515
    iput-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mAlwaysInTapRegion:Z

    .line 517
    iput-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mStillDown:Z

    .line 518
    iput-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    .line 520
    iget-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v1, :cond_5

    .line 521
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v3, Lcn/nubia/music/ui/GestureDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 525
    :cond_5
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v3, Lcn/nubia/music/ui/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 527
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v1, v2, v0

    .line 528
    goto/16 :goto_0

    .line 505
    :cond_6
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v5, Lcn/nubia/music/ui/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v5

    invoke-virtual {v2, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    move v2, v1

    goto :goto_2

    .line 531
    :pswitch_4
    iget-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mIgnoreMultitouch:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_1

    .line 535
    :cond_8
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onMove(Landroid/view/MotionEvent;)V

    .line 537
    iget v2, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionX:F

    sub-float/2addr v2, v4

    .line 538
    iget v5, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionY:F

    sub-float/2addr v5, v3

    .line 539
    iget-boolean v6, p0, Lcn/nubia/music/ui/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v6, :cond_9

    .line 541
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    goto/16 :goto_0

    .line 542
    :cond_9
    iget-boolean v6, p0, Lcn/nubia/music/ui/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_b

    .line 543
    iget-object v6, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 544
    iget-object v7, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v7, v3, v7

    float-to-int v7, v7

    .line 545
    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    .line 546
    iget v7, p0, Lcn/nubia/music/ui/GestureDetector;->mTouchSlopSquare:I

    if-le v6, v7, :cond_a

    .line 547
    iget-object v7, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v8, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v2, v5}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 548
    iput v4, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionX:F

    .line 549
    iput v3, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionY:F

    .line 550
    iput-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mAlwaysInTapRegion:Z

    .line 551
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v2

    .line 555
    :cond_a
    iget v0, p0, Lcn/nubia/music/ui/GestureDetector;->mBiggerTouchSlopSquare:I

    if-le v6, v0, :cond_1

    goto/16 :goto_0

    .line 558
    :cond_b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gez v0, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_1

    .line 560
    :cond_c
    iget-boolean v0, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1, v2, v5}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onLongPressScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 567
    :goto_3
    iput v4, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionX:F

    .line 568
    iput v3, p0, Lcn/nubia/music/ui/GestureDetector;->mLastMotionY:F

    move v1, v0

    goto/16 :goto_0

    .line 565
    :cond_d
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1, v2, v5}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_3

    .line 572
    :pswitch_5
    iput-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mStillDown:Z

    .line 573
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 574
    iget-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v2, :cond_f

    .line 576
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    .line 595
    :goto_4
    iget-object v4, p0, Lcn/nubia/music/ui/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_e

    .line 596
    iget-object v4, p0, Lcn/nubia/music/ui/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 599
    :cond_e
    iput-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 600
    iget-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 601
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 602
    iput-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mIsDoubleTapping:Z

    .line 603
    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    move v1, v2

    .line 608
    goto/16 :goto_0

    .line 577
    :cond_f
    iget-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    if-eqz v2, :cond_10

    .line 578
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iput-boolean v1, p0, Lcn/nubia/music/ui/GestureDetector;->mInLongPress:Z

    move v2, v1

    goto :goto_4

    .line 580
    :cond_10
    iget-boolean v2, p0, Lcn/nubia/music/ui/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_11

    .line 581
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_4

    .line 585
    :cond_11
    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 586
    const/16 v4, 0x3e8

    iget v5, p0, Lcn/nubia/music/ui/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 587
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 588
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 590
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcn/nubia/music/ui/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_12

    .line 591
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcn/nubia/music/ui/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_13

    .line 592
    :cond_12
    iget-object v5, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v6, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, p1, v2, v4}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_4

    .line 611
    :pswitch_6
    invoke-direct {p0}, Lcn/nubia/music/ui/GestureDetector;->cancel()V

    .line 613
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector;->mListener:Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    iget-object v2, p0, Lcn/nubia/music/ui/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v2, p1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_13
    move v2, v1

    goto :goto_4

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lcn/nubia/music/ui/GestureDetector;->mIsLongpressEnabled:Z

    .line 437
    return-void
.end method

.method public setOnDoubleTapListener(Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcn/nubia/music/ui/GestureDetector;->mDoubleTapListener:Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    .line 425
    return-void
.end method
