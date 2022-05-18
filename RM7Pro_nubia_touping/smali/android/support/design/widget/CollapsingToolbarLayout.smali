.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    iput v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 150
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 152
    new-instance v1, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 153
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    sget-object v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout:[I

    sget v2, Landroid/support/design/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    .line 160
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 162
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    .line 163
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 166
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 167
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 169
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 173
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 177
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 181
    :cond_2
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 186
    :cond_3
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 188
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 193
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 197
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 199
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 202
    :cond_4
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 204
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 208
    :cond_5
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 211
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 215
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 218
    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 220
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 224
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 232
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 608
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 609
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 610
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 611
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-le p1, v0, :cond_1

    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 626
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 627
    return-void

    .line 611
    :cond_1
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v4, :cond_0

    .line 368
    :goto_0
    return-void

    .line 341
    :cond_0
    iput-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 342
    iput-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 344
    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 346
    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 347
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 348
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 352
    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v4, :cond_3

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 359
    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 363
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iput-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 366
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 367
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    goto :goto_0

    .line 356
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 381
    move-object v0, p1

    .line 382
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 383
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 384
    check-cast v0, Landroid/view/View;

    .line 382
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 503
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 504
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 505
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 507
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 511
    sget v1, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ViewOffsetHelper;

    .line 512
    .local v0, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 513
    new-instance v0, Landroid/support/design/widget/ViewOffsetHelper;

    .end local v0    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    invoke-direct {v0, p0}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 514
    .restart local v0    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    sget v1, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 516
    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne v2, p0, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private updateDummyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 391
    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 394
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 395
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 400
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 402
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 403
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 406
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1116
    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 290
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 291
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_0

    .line 292
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_2

    .line 303
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 304
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_2

    .line 305
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 308
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    .end local v0    # "topInset":I
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 303
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "invalidated":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 321
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    const/4 v0, 0x1

    .line 324
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 739
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    .line 740
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 742
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 743
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 746
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 747
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 750
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 751
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 754
    :cond_2
    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 757
    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1121
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1126
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1131
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .prologue
    .line 1036
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1259
    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v1

    .line 1260
    .local v1, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1261
    .local v0, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    .line 1262
    invoke-virtual {v1}, Landroid/support/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1263
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .prologue
    .line 1111
    iget-wide v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .prologue
    .line 1077
    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v2, :cond_0

    .line 1079
    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 1093
    :goto_0
    return v2

    .line 1083
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 1085
    .local v0, "insetTop":I
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 1086
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1088
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1083
    .end local v0    # "insetTop":I
    .end local v1    # "minHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1093
    .restart local v0    # "insetTop":I
    .restart local v1    # "minHeight":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 239
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 240
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 242
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 244
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 247
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 250
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 252
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 258
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 262
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 263
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 426
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 428
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_1

    .line 430
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 431
    .local v2, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 432
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 437
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "insetTop":I
    .end local v5    # "z":I
    :cond_1
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 447
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 448
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 450
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v6, :cond_2

    .line 451
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v3, 0x1

    .line 455
    .local v3, "isRtl":Z
    :goto_2
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    :goto_3
    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    .line 457
    .local v4, "maxOffset":I
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v6, v7}, Landroid/support/v4/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 458
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 460
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    .line 461
    :goto_4
    add-int/2addr v8, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 462
    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_7

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 464
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    .line 465
    :goto_5
    add-int/2addr v6, v10

    iget-object v10, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    iget-object v11, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 466
    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 458
    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 469
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_8

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    :goto_6
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v9, v7

    sub-int v10, p4, p2

    if-eqz v3, :cond_9

    iget v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_7
    sub-int v7, v10, v7

    sub-int v10, p5, p3

    iget v11, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v6, v9, v7, v10}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 475
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 481
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .restart local v5    # "z":I
    :goto_8
    if-ge v1, v5, :cond_a

    .line 482
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 448
    .end local v1    # "i":I
    .end local v5    # "z":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 451
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 455
    .restart local v3    # "isRtl":Z
    :cond_5
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    goto/16 :goto_3

    .line 460
    .restart local v4    # "maxOffset":I
    :cond_6
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 461
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_4

    .line 464
    :cond_7
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 465
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    goto :goto_5

    .line 469
    :cond_8
    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    goto :goto_6

    :cond_9
    iget v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_7

    .line 486
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    .restart local v1    # "i":I
    .restart local v5    # "z":I
    :cond_a
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v6, :cond_d

    .line 487
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 489
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v7}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :cond_b
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne v6, p0, :cond_e

    .line 492
    :cond_c
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 498
    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 499
    return-void

    .line 494
    :cond_e
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 411
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 414
    .local v0, "mode":I
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 415
    .local v1, "topInset":I
    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    .line 418
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 422
    :cond_0
    return-void

    .line 414
    .end local v1    # "topInset":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 330
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    move-object v0, p1

    .line 274
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 276
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 281
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 850
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 851
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 821
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 822
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 830
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 831
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 840
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 917
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 654
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 655
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 658
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 661
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 662
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 664
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 666
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 677
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 678
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 691
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 878
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 879
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 899
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 959
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 960
    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 961
    iput p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 962
    iput p4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 963
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 964
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1047
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 1048
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1049
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1026
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 1027
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1028
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 984
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 985
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 986
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1005
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 1006
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1007
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 869
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 870
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 888
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 933
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 934
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 630
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v1, :cond_1

    .line 631
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 632
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 635
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 636
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 638
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1104
    iput-wide p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 1105
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1063
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1064
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 1066
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1068
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 582
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 583
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 3
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 596
    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eq v2, p1, :cond_0

    .line 597
    if-eqz p2, :cond_2

    .line 598
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 602
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 604
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 598
    goto :goto_0

    .line 600
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 716
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 717
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 718
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 720
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 721
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 725
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 726
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 725
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 727
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 728
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 729
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 731
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 733
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 727
    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 788
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 789
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 800
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 801
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 554
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 555
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 556
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 558
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 766
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 768
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 769
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 770
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 772
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 773
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 775
    :cond_1
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v1

    .line 768
    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1254
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1256
    :cond_1
    return-void

    .line 1254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
