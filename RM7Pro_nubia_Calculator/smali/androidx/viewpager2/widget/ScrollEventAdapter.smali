.class final Landroidx/viewpager2/widget/ScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
    }
.end annotation


# static fields
.field private static final NO_POSITION:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_PROGRESS_FAKE_DRAG:I = 0x4

.field private static final STATE_IN_PROGRESS_IMMEDIATE_SCROLL:I = 0x3

.field private static final STATE_IN_PROGRESS_MANUAL_DRAG:I = 0x1

.field private static final STATE_IN_PROGRESS_SMOOTH_SCROLL:I = 0x2

.field private static final ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field private mAdapterState:I

.field private mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mDispatchSelected:Z

.field private mDragStartPosition:I

.field private mFakeDragging:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mScrollHappened:Z

.field private mScrollState:I

.field private mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    sget-object v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/LinearLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    invoke-direct {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 86
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    return-void
.end method

.method private dispatchScrolled(IFI)V
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    .line 409
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method private dispatchSelected(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method private dispatchStateChanged(I)V
    .locals 2

    .line 387
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-ne v0, p1, :cond_1

    return-void

    .line 395
    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 396
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_2

    .line 397
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method private getPosition()I
    .locals 0

    .line 414
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method private isInAnyDraggingState()Z
    .locals 2

    .line 363
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isLayoutRTL()Z
    .locals 1

    .line 323
    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetState()V
    .locals 2

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 91
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    .line 92
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 94
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 95
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    .line 96
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 97
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    return-void
.end method

.method private startDrag(Z)V
    .locals 2

    .line 261
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    .line 262
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 263
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 266
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 268
    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    goto :goto_1

    .line 269
    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-ne p1, v1, :cond_2

    .line 271
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getPosition()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 273
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    return-void
.end method

.method private updateScrollEventValues()V
    .locals 7

    .line 208
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 210
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 211
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 212
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    .line 223
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/viewpager2/widget/ScrollEventAdapter;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    .line 231
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isLayoutRTL()Z

    move-result v6

    if-nez v6, :cond_4

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v1, v3, v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    .line 237
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    :goto_2
    neg-int v1, v1

    .line 241
    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 242
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-gez v1, :cond_7

    .line 245
    new-instance v1, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mayHaveInterferingAnimations()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 246
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Page can only be offset by a positive amount, not by %d"

    .line 254
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-nez v3, :cond_8

    const/4 p0, 0x0

    goto :goto_3

    .line 257
    :cond_8
    iget p0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    int-to-float p0, p0

    int-to-float v1, v3

    div-float/2addr p0, v1

    :goto_3
    iput p0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    return-void
.end method


# virtual methods
.method getRelativeScrollPosition()F
    .locals 1

    .line 378
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 379
    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    int-to-float v0, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method getScrollState()I
    .locals 0

    .line 331
    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    return p0
.end method

.method isDragging()Z
    .locals 1

    .line 346
    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFakeDragging()Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    return p0
.end method

.method isIdle()Z
    .locals 0

    .line 338
    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyBeginFakeDrag()V
    .locals 1

    const/4 v0, 0x4

    .line 295
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    return-void
.end method

.method notifyEndFakeDrag()V
    .locals 3

    .line 303
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    .line 308
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 309
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez v1, :cond_2

    .line 311
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-eq v1, v2, :cond_1

    .line 312
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-direct {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    .line 314
    :cond_1
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 315
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 318
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    :goto_0
    return-void
.end method

.method notifyProgrammaticScroll(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 280
    :goto_0
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    .line 283
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 284
    :goto_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 285
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    if-eqz p2, :cond_2

    .line 287
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 109
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 117
    iget-boolean p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-eqz p2, :cond_1

    .line 118
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 120
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    :cond_1
    return-void

    .line 126
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 128
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 129
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-nez p1, :cond_3

    .line 134
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 135
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p1, :cond_4

    .line 146
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, p2, :cond_5

    .line 147
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_0

    :cond_4
    move v1, v0

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 153
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 154
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 166
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    .line 168
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 170
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    if-gtz p3, :cond_2

    if-nez p3, :cond_1

    if-gez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 171
    :goto_0
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isLayoutRTL()Z

    move-result p3

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p2, p1

    :goto_2
    if-eqz p2, :cond_3

    .line 175
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    add-int/2addr p2, p1

    goto :goto_3

    :cond_3
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    :goto_3
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 177
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p2, p3, :cond_5

    .line 178
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_4

    .line 180
    :cond_4
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    if-nez p2, :cond_5

    .line 183
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    .line 186
    :cond_5
    :goto_4
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p3, p3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    invoke-direct {p0, p2, p3, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    .line 190
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p2, p3, :cond_6

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_7

    :cond_6
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_7

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-eq p2, p1, :cond_7

    .line 198
    invoke-direct {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 199
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_7
    return-void
.end method

.method setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method
