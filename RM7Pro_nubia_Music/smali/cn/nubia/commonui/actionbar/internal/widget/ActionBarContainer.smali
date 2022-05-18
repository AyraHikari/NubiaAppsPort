.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/VersionUtils;->isAtLeastL()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/b;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/b;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;)V

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v0, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v3, Lcn/nubia/commonui/R$styleable;->ActionBar_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v3, Lcn/nubia/commonui/R$styleable;->ActionBar_backgroundStacked:I

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v3, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mHeight:I

    .line 72
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcn/nubia/commonui/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 73
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_split_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mHeight:I

    .line 77
    sget v3, Lcn/nubia/commonui/R$styleable;->ActionBar_backgroundSplit:I

    .line 78
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 84
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/a;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 82
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 178
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 197
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    sget v0, Lcn/nubia/commonui/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 90
    sget v0, Lcn/nubia/commonui/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 91
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 304
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 305
    if-eqz v4, :cond_2

    .line 306
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    move v3, v1

    .line 308
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 309
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    .line 311
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 313
    sub-int v6, v5, v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v5, v0

    invoke-virtual {v4, p2, v6, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 320
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    .line 321
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    .line 320
    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    :goto_1
    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->invalidate()V

    .line 352
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 306
    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 326
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 327
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 328
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 329
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 327
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move v0, v1

    .line 340
    :goto_3
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsStacked:Z

    .line 341
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 342
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 343
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    .line 344
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 342
    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 330
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 333
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 334
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 332
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 336
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 270
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 271
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_0

    .line 273
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mHeight:I

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 273
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 279
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 283
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v0

    move v1, v0

    .line 293
    :goto_1
    if-ne v2, v3, :cond_5

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 295
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 296
    invoke-direct {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 295
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 291
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 294
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 104
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 102
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->invalidate()V

    .line 110
    return-void

    :cond_3
    move v0, v1

    .line 107
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 139
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    .line 141
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    .line 140
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 146
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->invalidate()V

    .line 147
    return-void

    :cond_3
    move v0, v1

    .line 144
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 121
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 128
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->invalidate()V

    .line 129
    return-void

    :cond_3
    move v0, v1

    .line 126
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 230
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 231
    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 234
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 238
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1

    .prologue
    .line 208
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 209
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 211
    return-void

    .line 209
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 153
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 155
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 157
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 159
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 166
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 166
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
