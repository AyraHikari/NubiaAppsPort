.class public Lcom/android/calculator2/DragLayout;
.super Landroid/view/ViewGroup;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/DragLayout$DragHelperCallback;,
        Lcom/android/calculator2/DragLayout$DragCallback;,
        Lcom/android/calculator2/DragLayout$CloseCallback;
    }
.end annotation


# static fields
.field private static final AUTO_OPEN_SPEED_LIMIT:D = 600.0

.field private static final KEY_IS_OPEN:Ljava/lang/String; = "IS_OPEN"

.field private static final KEY_SUPER_STATE:Ljava/lang/String; = "SUPER_STATE"


# instance fields
.field private mCloseCallback:Lcom/android/calculator2/DragLayout$CloseCallback;

.field private final mDragCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calculator2/DragLayout$DragCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mHistoryFrame:Landroid/widget/FrameLayout;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mIsOpen:Z

.field private final mLastMotionPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/DragLayout;->mHitRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/DragLayout;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/DragLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/calculator2/DragLayout;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/calculator2/DragLayout;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/calculator2/DragLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/calculator2/DragLayout;->mVerticalRange:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/calculator2/DragLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/calculator2/DragLayout;->setClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calculator2/DragLayout;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/calculator2/DragLayout;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/calculator2/DragLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/calculator2/DragLayout;->onStartDragging()V

    return-void
.end method

.method private onStartDragging()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/DragLayout$DragCallback;

    .line 193
    invoke-interface {v1}, Lcom/android/calculator2/DragLayout$DragCallback;->onStartDraggingOpen()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 4

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 146
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 148
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 129
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 131
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 132
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mLastMotionPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private setClosed()V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    .line 217
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mCloseCallback:Lcom/android/calculator2/DragLayout$CloseCallback;

    if-eqz v0, :cond_0

    .line 220
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mCloseCallback:Lcom/android/calculator2/DragLayout$CloseCallback;

    invoke-interface {p0}, Lcom/android/calculator2/DragLayout$CloseCallback;->onClose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createAnimator(Z)Landroid/animation/Animator;
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    const/4 v1, 0x2

    if-ne v0, p1, :cond_0

    .line 227
    new-array p0, v1, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    .line 231
    iget-object p1, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    new-array p1, v1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/android/calculator2/DragLayout$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/DragLayout$1;-><init>(Lcom/android/calculator2/DragLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isMoving()Z
    .locals 2

    .line 205
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    return p0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/calculator2/DragLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 201
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    new-instance v0, Lcom/android/calculator2/DragLayout$DragHelperCallback;

    invoke-direct {v0, p0}, Lcom/android/calculator2/DragLayout$DragHelperCallback;-><init>(Lcom/android/calculator2/DragLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const v0, 0x7f0a00e4

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/calculator2/DragLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    .line 67
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/calculator2/DragLayout;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 164
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/calculator2/DragLayout$DragCallback;

    .line 80
    invoke-interface {p4}, Lcom/android/calculator2/DragLayout$DragCallback;->getDisplayHeight()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/DragLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/android/calculator2/DragLayout;->mVerticalRange:I

    .line 84
    invoke-virtual {p0}, Lcom/android/calculator2/DragLayout;->getChildCount()I

    move-result p1

    move p3, p2

    :goto_1
    if-ge p3, p1, :cond_4

    .line 86
    invoke-virtual {p0, p3}, Lcom/android/calculator2/DragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 89
    iget-object p5, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    if-ne p4, p5, :cond_3

    .line 90
    iget-object p5, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p5}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object p5

    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    if-ne p5, v0, :cond_1

    iget-object p5, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 91
    invoke-virtual {p5}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p5

    if-eqz p5, :cond_1

    .line 92
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    goto :goto_3

    .line 94
    :cond_1
    iget-boolean p5, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    iget p5, p0, Lcom/android/calculator2/DragLayout;->mVerticalRange:I

    neg-int p5, p5

    goto :goto_3

    :cond_3
    :goto_2
    move p5, p2

    .line 97
    :goto_3
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p4, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/DragLayout;->measureChildren(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 111
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "IS_OPEN"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    .line 114
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mHistoryFrame:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/DragLayout$DragCallback;

    .line 116
    iget-boolean v2, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    invoke-interface {v1, v2}, Lcom/android/calculator2/DragLayout$DragCallback;->onInstanceStateRestored(Z)V

    goto :goto_1

    :cond_1
    const-string v0, "SUPER_STATE"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 121
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SUPER_STATE"

    .line 104
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "IS_OPEN"

    .line 105
    iget-boolean p0, p0, Lcom/android/calculator2/DragLayout;->mIsOpen:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 171
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 172
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getActivePointerId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 173
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getActivePointerId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calculator2/DragLayout;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 180
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public removeDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/calculator2/DragLayout;->mDragCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCloseCallback(Lcom/android/calculator2/DragLayout$CloseCallback;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/calculator2/DragLayout;->mCloseCallback:Lcom/android/calculator2/DragLayout$CloseCallback;

    return-void
.end method
