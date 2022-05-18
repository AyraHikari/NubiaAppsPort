.class public Lcn/nubia/weather/ui/view/DragSortController;
.super Lcn/nubia/weather/ui/view/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcn/nubia/weather/ui/view/DragSortController;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;III)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 100
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/ui/view/DragSortController;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;IIII)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    .line 105
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/weather/ui/view/DragSortController;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;IIIII)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 33
    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mSortEnabled:Z

    .line 48
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    .line 49
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    .line 59
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    .line 60
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    .line 62
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveHitPos:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    .line 72
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    .line 74
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingSpeed:F

    .line 446
    new-instance v0, Lcn/nubia/weather/ui/view/DragSortController$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/view/DragSortController$1;-><init>(Lcn/nubia/weather/ui/view/DragSortController;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 118
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 119
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 120
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 121
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 122
    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTouchSlop:I

    .line 123
    iput p2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragHandleId:I

    .line 124
    iput p5, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveId:I

    .line 125
    iput p6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHandleId:I

    .line 126
    invoke-virtual {p0, p4}, Lcn/nubia/weather/ui/view/DragSortController;->setRemoveMode(I)V

    .line 127
    invoke-virtual {p0, p3}, Lcn/nubia/weather/ui/view/DragSortController;->setDragInitMode(I)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/DragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/view/DragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/view/DragSortController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/DragSortController;)Lcn/nubia/weather/ui/view/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/DragSortController;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;

    .prologue
    .line 23
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/view/DragSortController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortController;

    .prologue
    .line 23
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    return v0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 365
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveHitPos:I

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    .line 369
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 370
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortController;->startDrag(III)Z

    .line 373
    :cond_1
    iput-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    .line 374
    iput-boolean v5, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCanDrag:Z

    .line 375
    iput v4, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    .line 376
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    .line 378
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 280
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 281
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    .line 283
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->performHapticFeedback(I)Z

    .line 419
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCurrX:I

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCurrY:I

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortController;->startDrag(III)Z

    .line 421
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 385
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 386
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 387
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 388
    .local v5, "y2":I
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 389
    .local v0, "deltaX":I
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 391
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_1

    .line 392
    :cond_0
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_3

    .line 393
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    if-ne v6, v8, :cond_2

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_2

    iget-boolean v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_2

    .line 394
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcn/nubia/weather/ui/view/DragSortController;->startDrag(III)Z

    .line 411
    :cond_1
    :goto_0
    return v9

    .line 395
    :cond_2
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    if-eqz v6, :cond_1

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_1

    iget-boolean v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_1

    .line 397
    iput-boolean v8, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    .line 398
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcn/nubia/weather/ui/view/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 400
    :cond_3
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_1

    .line 401
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_4

    iget-boolean v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_4

    .line 402
    iput-boolean v8, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    .line 403
    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcn/nubia/weather/ui/view/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 404
    :cond_4
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_1

    .line 405
    iput-boolean v9, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 433
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->removeItem(I)V

    .line 437
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v5

    .line 246
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    .line 248
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 252
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 254
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCurrX:I

    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mCurrY:I

    goto :goto_0

    .line 258
    :pswitch_2
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    .line 259
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    .line 260
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 261
    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    .line 262
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcn/nubia/weather/ui/view/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 266
    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    .line 267
    iput-boolean v5, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    goto :goto_0

    .line 259
    :cond_4
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortController;->mPositionX:I

    neg-int v2, v3

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 210
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mClickRemoveId:I

    .line 211
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 190
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragHandleId:I

    .line 191
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 141
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragInitMode:I

    .line 142
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 200
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mFlingHandleId:I

    .line 201
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    .line 177
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 165
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    .line 166
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mSortEnabled:Z

    .line 153
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    if-nez v1, :cond_0

    .line 228
    or-int/lit8 v0, v0, 0xc

    .line 230
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 231
    or-int/lit8 v0, v0, 0x1

    .line 232
    or-int/lit8 v0, v0, 0x2

    .line 235
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    .line 237
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDragging:Z

    return v1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 326
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 328
    .local v9, "y":I
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->pointToPosition(II)I

    move-result v7

    .line 330
    .local v7, "touchPos":I
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v10}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 331
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v10}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 332
    .local v3, "numFooters":I
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v10}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v0

    .line 337
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    .line 339
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/DragSortController;->mDslv:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v11}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 340
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 341
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 343
    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .line 344
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 345
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 347
    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    .line 348
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 351
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemX:I

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcn/nubia/weather/ui/view/DragSortController;->mItemY:I

    .line 359
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    .end local v7    # "touchPos":I
    :goto_1
    return v7

    .line 343
    .restart local v2    # "item":Landroid/view/View;
    .restart local v5    # "rawX":I
    .restart local v6    # "rawY":I
    .restart local v7    # "touchPos":I
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 359
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method
