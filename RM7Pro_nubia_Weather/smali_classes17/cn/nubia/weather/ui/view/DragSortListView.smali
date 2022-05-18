.class public Lcn/nubia/weather/ui/view/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;,
        Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;,
        Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;,
        Lcn/nubia/weather/ui/view/DragSortListView$DragSortListener;,
        Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;,
        Lcn/nubia/weather/ui/view/DragSortListView$DropListener;,
        Lcn/nubia/weather/ui/view/DragSortListView$DragListener;,
        Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;,
        Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;,
        Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;,
        Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;,
        Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;,
        Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;,
        Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

.field private mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;

.field private mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 441
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 76
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 86
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewOnMeasured:Z

    .line 97
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatAlpha:F

    .line 98
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    .line 123
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mAnimate:Z

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 196
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    .line 212
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mWidthMeasureSpec:I

    .line 218
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 230
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollStartFrac:F

    .line 237
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollStartFrac:F

    .line 261
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mMaxScrollSpeed:F

    .line 269
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/nubia/weather/ui/view/DragSortListView$1;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mScrollProfile:Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    .line 333
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    .line 339
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastCallWasIntercept:Z

    .line 344
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    .line 349
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    .line 369
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    .line 376
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideRegionFrac:F

    .line 385
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    .line 398
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    .line 408
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mBlockLayoutRequests:Z

    .line 415
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mIgnoreTouchEvent:Z

    .line 429
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mChildHeightCache:Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

    .line 438
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveVelocityX:F

    .line 1673
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mListViewIntercepted:Z

    .line 2155
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewInvalidated:Z

    .line 443
    const/16 v27, 0x96

    .line 444
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 445
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 447
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Lcn/nubia/weather/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 451
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 452
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 451
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    .line 454
    const/4 v5, 0x5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    .line 455
    const-string v5, "DragSortListView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mTrackDragSort : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 458
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragSortTracker:Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

    .line 462
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatAlpha:F

    .line 463
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    .line 465
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    .line 467
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x7

    const/high16 v15, 0x3f400000    # 0.75f

    .line 468
    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    .line 467
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideRegionFrac:F

    .line 470
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mAnimate:Z

    .line 472
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 475
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragScrollStart(F)V

    .line 477
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mMaxScrollSpeed:F

    .line 480
    const/16 v5, 0x8

    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 483
    const/16 v5, 0x9

    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 486
    const/16 v5, 0x11

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 489
    .local v34, "useDefault":Z
    if-eqz v34, :cond_1

    .line 490
    const/16 v5, 0xc

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 492
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 494
    .local v8, "removeMode":I
    const/16 v5, 0xb

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 495
    .local v33, "sortEnabled":Z
    const/16 v5, 0xd

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 497
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 498
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    const/4 v12, 0x0

    .line 499
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 500
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    const/4 v12, 0x0

    .line 501
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 502
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 505
    .local v26, "bgColor":I
    new-instance v4, Lcn/nubia/weather/ui/view/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcn/nubia/weather/ui/view/DragSortController;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;IIIII)V

    .line 507
    .local v4, "controller":Lcn/nubia/weather/ui/view/DragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcn/nubia/weather/ui/view/DragSortController;->setRemoveEnabled(Z)V

    .line 508
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcn/nubia/weather/ui/view/DragSortController;->setSortEnabled(Z)V

    .line 509
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcn/nubia/weather/ui/view/DragSortController;->setBackgroundColor(I)V

    .line 511
    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/weather/ui/view/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    .end local v4    # "controller":Lcn/nubia/weather/ui/view/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_2
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    .line 520
    const/high16 v32, 0x3f000000    # 0.5f

    .line 521
    .local v32, "smoothness":F
    if-lez v30, :cond_3

    .line 522
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveAnimator:Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;

    .line 525
    :cond_3
    if-lez v28, :cond_4

    .line 526
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropAnimator:Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;

    .line 529
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 533
    new-instance v5, Lcn/nubia/weather/ui/view/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/nubia/weather/ui/view/DragSortListView$2;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 550
    return-void

    .line 470
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/view/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/weather/ui/view/DragSortListView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/weather/ui/view/DragSortListView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 60
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1700(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$2100(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2200(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2300(Lcn/nubia/weather/ui/view/DragSortListView;)Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mScrollProfile:Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2500(Lcn/nubia/weather/ui/view/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2602(Lcn/nubia/weather/ui/view/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/weather/ui/view/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcn/nubia/weather/ui/view/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/weather/ui/view/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/weather/ui/view/DragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcn/nubia/weather/ui/view/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/ui/view/DragSortListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/weather/ui/view/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/DragSortListView;

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1835
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1836
    .local v2, "first":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1838
    .local v4, "last":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1839
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1841
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1842
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1843
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1844
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1841
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1847
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1852
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1853
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1855
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1864
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1866
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1867
    const/4 v0, -0x2

    .line 1872
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1873
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1874
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    :cond_0
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1879
    :cond_1
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1880
    check-cast v4, Lcn/nubia/weather/ui/view/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcn/nubia/weather/ui/view/DragSortItemView;->setGravity(I)V

    .line 1888
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1889
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1891
    .local v3, "vis":I
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1892
    const/4 v3, 0x4

    .line 1895
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1896
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    :cond_4
    return-void

    .line 1869
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1881
    :cond_6
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1882
    check-cast v4, Lcn/nubia/weather/ui/view/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcn/nubia/weather/ui/view/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1530
    .local v0, "firstPos":I
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1533
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1534
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1535
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1536
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1539
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcn/nubia/weather/ui/view/DragSortListView;->setSelectionFromTop(II)V

    .line 1541
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2032
    const/4 v0, 0x0

    .line 2034
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2036
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2037
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2039
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2040
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2041
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2042
    sub-int/2addr v4, v1

    .line 2043
    sub-int/2addr v3, v1

    .line 2046
    :cond_0
    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    .line 2047
    .local v2, "maxBlank":I
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2048
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2051
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2052
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2053
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2071
    :cond_2
    :goto_0
    return v0

    .line 2055
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2056
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2057
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2058
    :cond_4
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2059
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2061
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2064
    :cond_6
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2065
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2066
    :cond_7
    iget v7, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2067
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2677
    const/4 v4, 0x0

    .line 2679
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcn/nubia/weather/ui/view/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2680
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2721
    :goto_0
    return v5

    .line 2683
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2684
    .local v3, "position":I
    move v1, v3

    .line 2685
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2686
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2687
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2686
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2689
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2690
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2692
    :cond_2
    aput v1, p3, v4

    .line 2693
    aput v0, p4, v4

    .line 2694
    add-int/lit8 v4, v4, 0x1

    .line 2695
    move v1, v3

    .line 2696
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2700
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2705
    move v0, p1

    .line 2707
    :cond_4
    aput v1, p3, v4

    .line 2708
    aput v0, p4, v4

    .line 2709
    add-int/lit8 v4, v4, 0x1

    .line 2711
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2712
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2717
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2718
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2721
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 1989
    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 1990
    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 1991
    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 1995
    .local v4, "slideHeight":I
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 1996
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 1997
    if-eqz v2, :cond_1

    .line 1998
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 2021
    .local v1, "height":I
    :goto_1
    return v1

    .line 1989
    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2000
    .restart local v2    # "isSliding":Z
    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2002
    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 2004
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2006
    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 2008
    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 2009
    if-eqz v2, :cond_5

    .line 2010
    add-int v1, p2, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2012
    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .restart local v1    # "height":I
    goto :goto_1

    .line 2014
    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 2016
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .line 2018
    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1982
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1467
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    .line 1468
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1469
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 1470
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    .line 1471
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1771
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1772
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1774
    invoke-direct {p0, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->doDragFloatView(Z)V

    .line 1776
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1777
    .local v2, "minY":I
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1780
    .local v1, "maxY":I
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1782
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1786
    if-eq v0, v6, :cond_0

    .line 1788
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1792
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1811
    :cond_1
    :goto_0
    return-void

    .line 1793
    :cond_2
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1797
    if-eq v0, v6, :cond_3

    .line 1799
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1803
    :cond_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1804
    :cond_4
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    .line 1805
    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1809
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2387
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2388
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2389
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2392
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2393
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->invalidate()V

    .line 2395
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1643
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    .line 1644
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    .line 1645
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1646
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1648
    :cond_0
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    .line 1649
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mListViewIntercepted:Z

    .line 1650
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mChildHeightCache:Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->clear()V

    .line 1651
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2296
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mBlockLayoutRequests:Z

    .line 2298
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->updateFloatView()V

    .line 2300
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 2301
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 2303
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2305
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2306
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustAllItems()V

    .line 2307
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2310
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcn/nubia/weather/ui/view/DragSortListView;->setSelectionFromTop(II)V

    .line 2311
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->layoutChildren()V

    .line 2314
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2315
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->invalidate()V

    .line 2318
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mBlockLayoutRequests:Z

    .line 2319
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2286
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2288
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2293
    :goto_0
    return-void

    .line 2292
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1498
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->doRemoveItem(I)V

    .line 1499
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1507
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1510
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveListener:Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveListener:Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;->remove(I)V

    .line 1514
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->destroyFloatView()V

    .line 1516
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustOnReorder()V

    .line 1517
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->clearPositions()V

    .line 1520
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1521
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 732
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    .line 735
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    .line 736
    invoke-virtual {p0, v8}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 738
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 739
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 740
    .local v5, "l":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 744
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 746
    .local v1, "childHeight":I
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 747
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 748
    .local v7, "t":I
    add-int/lit8 v0, v7, 0x1

    .line 756
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 757
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 758
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 763
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 750
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 751
    .restart local v0    # "b":I
    add-int/lit8 v7, v0, -0x1

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1476
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1478
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1480
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcn/nubia/weather/ui/view/DragSortListView$DropListener;->drop(II)V

    .line 1483
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->destroyFloatView()V

    .line 1485
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustOnReorder()V

    .line 1486
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->clearPositions()V

    .line 1487
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustAllItems()V

    .line 1490
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1491
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1495
    :goto_0
    return-void

    .line 1493
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2737
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2738
    .local v1, "size":I
    invoke-static {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2739
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2741
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2742
    :cond_1
    const/4 v0, -0x1

    .line 2743
    .end local v0    # "i":I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1901
    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return v1

    .line 1905
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1907
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1910
    invoke-direct {p0, p1, v4, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mChildHeightCache:Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1915
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1920
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1921
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1924
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1925
    .local v3, "typeCount":I
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1926
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1929
    :cond_3
    if-ltz v2, :cond_5

    .line 1930
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1931
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1932
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1942
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1945
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mChildHeightCache:Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcn/nubia/weather/ui/view/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1934
    :cond_4
    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1938
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1952
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1978
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1957
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1958
    :cond_2
    move-object v0, p2

    .line 1963
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1965
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1966
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1967
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1960
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1971
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1973
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1974
    :cond_5
    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1975
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 821
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 895
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 896
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 902
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 949
    :goto_0
    return v3

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 910
    .local v2, "divHeight":I
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 911
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 912
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 916
    .local v4, "itemHeight":I
    move v8, p2

    .line 917
    .local v8, "otop":I
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 920
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 921
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 922
    add-int v9, p2, v4

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 943
    :cond_2
    :goto_1
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 944
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 924
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 925
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 926
    goto :goto_1

    .line 927
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 928
    sub-int v8, p2, v5

    goto :goto_1

    .line 934
    :cond_5
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 935
    add-int v8, p2, v5

    goto :goto_1

    .line 936
    :cond_6
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 937
    sub-int v0, v4, v1

    .line 938
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 946
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2747
    const/4 v1, 0x0

    .line 2748
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2749
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2750
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2751
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2752
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2754
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2756
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewInvalidated:Z

    .line 2159
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2095
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    .line 2096
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeightHalf:I

    .line 2098
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2075
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2076
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2077
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2079
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2081
    :cond_0
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getListPaddingLeft()I

    move-result v4

    .line 2082
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2081
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2084
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2085
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2089
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2090
    return-void

    .line 2087
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 826
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2725
    sub-int v0, p3, p2

    .line 2727
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2728
    if-ge p0, p2, :cond_1

    .line 2729
    add-int/2addr p0, v0

    .line 2733
    :cond_0
    :goto_0
    return p0

    .line 2730
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2731
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1655
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1656
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastX:I

    .line 1657
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastY:I

    .line 1659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    .line 1661
    if-nez v0, :cond_1

    .line 1662
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastX:I

    .line 1663
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastY:I

    .line 1665
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mOffsetX:I

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mOffsetY:I

    .line 1667
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2327
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2328
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    iget v11, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2329
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2332
    :cond_0
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2333
    .local v2, "floatX":I
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2336
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2337
    .local v7, "padLeft":I
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2338
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2344
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2345
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2346
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2347
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2351
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2352
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2353
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2355
    :cond_2
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2356
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2357
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2362
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2363
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2364
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2366
    :cond_4
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2367
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2368
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2376
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2377
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2383
    :cond_6
    :goto_1
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    .line 2384
    return-void

    .line 2339
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2340
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2378
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2379
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 954
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 955
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 956
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 958
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 960
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 962
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 964
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 966
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 967
    .local v5, "edge":I
    move v13, v5

    .line 969
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 973
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 974
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 975
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 978
    :goto_0
    if-ltz v11, :cond_1

    .line 979
    add-int/lit8 v11, v11, -0x1

    .line 980
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcn/nubia/weather/ui/view/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 982
    if-nez v11, :cond_7

    .line 983
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1022
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1023
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1025
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1027
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1028
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1029
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1031
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1032
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1035
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1036
    move v6, v5

    .line 1037
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1044
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1045
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1046
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1047
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1050
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1051
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1052
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 1053
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    .line 1074
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1075
    move v11, v15

    .line 1076
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1077
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 1084
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1086
    :cond_3
    const/16 v26, 0x1

    .line 1089
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragListener:Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragListener:Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcn/nubia/weather/ui/view/DragSortListView$DragListener;->drag(II)V

    .line 1094
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    .line 1095
    const/16 v26, 0x1

    .line 1098
    :cond_6
    return v26

    .line 987
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcn/nubia/weather/ui/view/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 995
    move v13, v5

    goto/16 :goto_0

    .line 1000
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v3

    .line 1001
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1002
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1003
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1004
    goto/16 :goto_1

    .line 1007
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1008
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1009
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcn/nubia/weather/ui/view/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1017
    move v13, v5

    .line 1018
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1039
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1040
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1056
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1057
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1058
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1060
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1061
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 1062
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1069
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1070
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1078
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1080
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1081
    move-object/from16 v0, p0

    iput v11, v0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1815
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1816
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1818
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartYF:F

    .line 1819
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartYF:F

    .line 1821
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartY:I

    .line 1822
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartY:I

    .line 1824
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollHeight:F

    .line 1825
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollHeight:F

    .line 1826
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1452
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1453
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1454
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->destroyFloatView()V

    .line 1455
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->clearPositions()V

    .line 1456
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->adjustAllItems()V

    .line 1458
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1459
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 767
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 769
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 771
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 772
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 774
    :cond_0
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 775
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 782
    .local v9, "w":I
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 784
    .local v8, "h":I
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 786
    .local v11, "x":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getWidth()I

    move-result v10

    .line 787
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 788
    neg-int v11, v11

    .line 790
    :cond_2
    if-ge v11, v10, :cond_4

    .line 791
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 792
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 797
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 799
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 805
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 806
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 807
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 810
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 794
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2473
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2115
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2117
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2118
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2122
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->measureFloatView()V

    .line 2124
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2125
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2127
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2609
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2610
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2611
    .local v3, "rangeStart":I
    move v2, p2

    .line 2612
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2613
    move v3, p2

    .line 2614
    move v2, p1

    .line 2616
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2618
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2619
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2620
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2621
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2639
    :cond_1
    return-void

    .line 2627
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2629
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2630
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2634
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2635
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2636
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1439
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1441
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1442
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcn/nubia/weather/ui/view/DragSortListView$DropListener;->drop(II)V

    .line 1445
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2133
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2152
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2135
    :pswitch_0
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 2136
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->cancelDrag()V

    .line 2138
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2142
    :pswitch_1
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->stopDrag(Z)Z

    .line 2145
    :cond_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2148
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1103
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1105
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragSortTracker:Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->appendState()V

    .line 1108
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1677
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1678
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1725
    :cond_0
    :goto_0
    return v1

    .line 1681
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1682
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastCallWasIntercept:Z

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1686
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1687
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1689
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1690
    goto :goto_0

    .line 1692
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    .line 1695
    :cond_3
    const/4 v1, 0x0

    .line 1698
    .local v1, "intercept":Z
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1700
    const/4 v1, 0x1

    .line 1721
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1722
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1702
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1703
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mListViewIntercepted:Z

    .line 1704
    const/4 v1, 0x1

    .line 1707
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1713
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1714
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1710
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1716
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2102
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2104
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->measureFloatView()V

    .line 2108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2110
    :cond_1
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mWidthMeasureSpec:I

    .line 2111
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1830
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1831
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->updateScrollStarts()V

    .line 1832
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1592
    iget-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1593
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1639
    :cond_0
    :goto_0
    return v2

    .line 1597
    :cond_1
    iget-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1598
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1601
    :cond_2
    const/4 v2, 0x0

    .line 1603
    .local v2, "more":Z
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastCallWasIntercept:Z

    .line 1604
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLastCallWasIntercept:Z

    .line 1606
    if-nez v1, :cond_3

    .line 1607
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1611
    :cond_3
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1612
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1613
    const/4 v2, 0x1

    goto :goto_0

    .line 1619
    :cond_4
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1620
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1621
    const/4 v2, 0x1

    .line 1625
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1627
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1633
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1634
    const/4 v3, 0x1

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1630
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2655
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2657
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2673
    :cond_0
    return-void

    .line 2659
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2660
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2661
    .local v5, "runEnd":[I
    move v3, p1

    .line 2662
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2663
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2664
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2665
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2669
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2671
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcn/nubia/weather/ui/view/DragSortListView;->setItemChecked(IZ)V

    .line 2664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUseRemoveVelocity:Z

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->removeItem(IF)V

    .line 1383
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1393
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1395
    :cond_0
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    .line 1398
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 1399
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 1400
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    .line 1401
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1403
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 1408
    iput p2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveVelocityX:F

    .line 1410
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1411
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1421
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveAnimator:Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1422
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveAnimator:Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->start()V

    .line 1427
    :cond_3
    :goto_1
    return-void

    .line 1413
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1424
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2026
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2027
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2029
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 587
    if-eqz p1, :cond_3

    .line 588
    new-instance v0, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    .line 589
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 591
    instance-of v0, p1, Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 592
    check-cast v0, Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->setDropListener(Lcn/nubia/weather/ui/view/DragSortListView$DropListener;)V

    .line 594
    :cond_0
    instance-of v0, p1, Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 595
    check-cast v0, Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragListener(Lcn/nubia/weather/ui/view/DragSortListView$DragListener;)V

    .line 597
    :cond_1
    instance-of v0, p1, Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 598
    check-cast p1, Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setRemoveListener(Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;)V

    .line 604
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    return-void

    .line 601
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mAdapterWrapper:Lcn/nubia/weather/ui/view/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2469
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    .line 2470
    return-void
.end method

.method public setDragListener(Lcn/nubia/weather/ui/view/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    .prologue
    .line 2455
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragListener:Lcn/nubia/weather/ui/view/DragSortListView$DragListener;

    .line 2456
    return-void
.end method

.method public setDragScrollProfile(Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    .prologue
    .line 2552
    if-eqz p1, :cond_0

    .line 2553
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mScrollProfile:Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    .line 2555
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1737
    invoke-virtual {p0, p1, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragScrollStarts(FF)V

    .line 1738
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1751
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1752
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1757
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1758
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1763
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->updateScrollStarts()V

    .line 1766
    :cond_0
    return-void

    .line 1754
    :cond_1
    iput p2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1760
    :cond_2
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcn/nubia/weather/ui/view/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/weather/ui/view/DragSortListView$DragSortListener;

    .prologue
    .line 2539
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDropListener(Lcn/nubia/weather/ui/view/DragSortListView$DropListener;)V

    .line 2540
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragListener(Lcn/nubia/weather/ui/view/DragSortListView$DragListener;)V

    .line 2541
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/view/DragSortListView;->setRemoveListener(Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;)V

    .line 2542
    return-void
.end method

.method public setDropListener(Lcn/nubia/weather/ui/view/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    .prologue
    .line 2489
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    .line 2490
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 558
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCurrFloatAlpha:F

    .line 559
    return-void
.end method

.method public setFloatViewManager(Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    .prologue
    .line 2451
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    .line 2452
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 572
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mMaxScrollSpeed:F

    .line 573
    return-void
.end method

.method public setRemoveListener(Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    .prologue
    .line 2503
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mRemoveListener:Lcn/nubia/weather/ui/view/DragSortListView$RemoveListener;

    .line 2504
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2185
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2194
    :cond_0
    :goto_0
    return v0

    .line 2189
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatViewManager:Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcn/nubia/weather/ui/view/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2191
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2194
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/ui/view/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2222
    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2281
    :cond_1
    :goto_0
    return v2

    .line 2227
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2228
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2231
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2232
    .local v0, "pos":I
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFirstExpPos:I

    .line 2233
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSecondExpPos:I

    .line 2234
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    .line 2235
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatPos:I

    .line 2238
    iput v6, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragState:I

    .line 2239
    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    .line 2240
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragFlags:I

    .line 2242
    iput-object p2, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2243
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->measureFloatView()V

    .line 2245
    iput p4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaX:I

    .line 2246
    iput p5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaY:I

    .line 2247
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragStartY:I

    .line 2250
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mX:I

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2251
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mY:I

    iget v5, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2254
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2256
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2257
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2260
    :cond_4
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2261
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragSortTracker:Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->startTracking()V

    .line 2266
    :cond_5
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2275
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->requestLayout()V

    .line 2277
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLiftAnimator:Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2278
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mLiftAnimator:Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2268
    :pswitch_0
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2271
    :pswitch_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUseRemoveVelocity:Z

    .line 1556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1566
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1567
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragScroller:Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1569
    if-eqz p1, :cond_1

    .line 1570
    iget v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcn/nubia/weather/ui/view/DragSortListView;->removeItem(IF)V

    .line 1579
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1580
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDragSortTracker:Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1586
    :cond_0
    :goto_1
    return v0

    .line 1572
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropAnimator:Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1573
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mDropAnimator:Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1575
    :cond_2
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1586
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView;->mUseRemoveVelocity:Z

    .line 1562
    invoke-virtual {p0, p1, p2}, Lcn/nubia/weather/ui/view/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
