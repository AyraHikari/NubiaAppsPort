.class public Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
.super Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

.field private mCustomView:Landroid/view/View;

.field private mHideCloseButton:Z

.field private mLinearContainer:Landroid/widget/LinearLayout;

.field private mNubiaBottomClose:Landroid/view/View;

.field private mNubiaBottomCloseLayout:I

.field private mNubiaBottomSelect:Landroid/view/View;

.field private mNubiaBottomSelectLayout:I

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 98
    sget v0, Lcn/nubia/commonui/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    sget-object v0, Lcn/nubia/commonui/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v0, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 106
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 110
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 113
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 116
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_backgroundSplit:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 119
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Lcn/nubia/commonui/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 124
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_nubiaBottomCloseItem:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomCloseLayout:I

    .line 128
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_nubiaBottomSelectItem:I

    invoke-virtual {v0, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelectLayout:I

    .line 132
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    .line 133
    sget v1, Lcn/nubia/commonui/R$styleable;->ActionMode_hideCloseItem:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mHideCloseButton:Z

    .line 136
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 391
    if-eqz v0, :cond_0

    .line 392
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 393
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 395
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 221
    sget v3, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcn/nubia/commonui/R$id;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 225
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 228
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 237
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 238
    :goto_1
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 243
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 236
    goto :goto_0

    :cond_6
    move v1, v2

    .line 237
    goto :goto_1

    :cond_7
    move v3, v4

    .line 238
    goto :goto_2
.end method

.method private makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 531
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 532
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v1, v0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 537
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 538
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 539
    invoke-virtual {v2, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 542
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 544
    if-lez v0, :cond_1

    .line 545
    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 546
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 547
    invoke-static {v3, v6}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 548
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 549
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 550
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 545
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_1
    return-object v2
.end method

.method private makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 558
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 560
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 562
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 563
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 564
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 565
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 568
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 570
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 571
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 572
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 573
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 576
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 577
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 578
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 579
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 580
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 581
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 584
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v1, :cond_3

    .line 585
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 586
    if-lez v1, :cond_3

    .line 597
    :cond_3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 375
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 384
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 385
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 386
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionMenuHight()I
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSelectCheckedTextView()Landroid/widget/CheckedTextView;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_bottom_action_mode_select_button:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectZoneView()Landroid/view/View;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 284
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 286
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 295
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 298
    :cond_1
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 299
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v1, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 301
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 305
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v2, :cond_3

    .line 306
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 308
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mHideCloseButton:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :goto_0
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 372
    return-void

    .line 319
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 320
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 319
    invoke-virtual {v2, v3, v6}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 322
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 324
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 326
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 327
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 328
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-nez v0, :cond_4

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomCloseLayout:I

    if-eq v0, v5, :cond_4

    .line 334
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomCloseLayout:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-nez v0, :cond_5

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelectLayout:I

    if-eq v0, v5, :cond_5

    .line 344
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 345
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelectLayout:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_action_mode_close_button_default_width:I

    .line 349
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 351
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 399
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 402
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    :cond_0
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 405
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    .line 406
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    .line 408
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 409
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 411
    return-void
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 645
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 648
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 649
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 144
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 146
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 662
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 665
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 666
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 667
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 602
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 603
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    .line 604
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 605
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v4, v0, v2

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 608
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 609
    if-eqz v5, :cond_5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 610
    :goto_1
    if-eqz v5, :cond_6

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    .line 611
    :goto_2
    invoke-static {v1, v2, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 612
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 613
    invoke-static {v0, v6, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v1

    .line 615
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 616
    iput v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 617
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 618
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 619
    iput-boolean v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    :cond_0
    move v2, v1

    .line 623
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 624
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 627
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 628
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 631
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 633
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 634
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getActionMenuHight()I

    move-result v4

    if-nez v5, :cond_8

    move v5, v7

    :goto_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    .line 637
    :cond_3
    return-void

    .line 603
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 609
    :cond_5
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 610
    :cond_6
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    goto :goto_2

    .line 631
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    :cond_8
    move v5, v8

    .line 634
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    .line 451
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 452
    if-eq v0, v4, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 458
    if-nez v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 465
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_8

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    move v1, v0

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 469
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 470
    sub-int v6, v1, v8

    .line 471
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 473
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 474
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v9, v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v9

    .line 475
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 476
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    sub-int v0, v9, v0

    .line 479
    :cond_2
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v9}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    .line 480
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v9, v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    .line 484
    :cond_3
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v9, :cond_5

    .line 485
    iget-boolean v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v9, :cond_b

    .line 486
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 487
    iget-object v10, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 488
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    .line 489
    if-gt v9, v0, :cond_9

    const/4 v2, 0x1

    .line 490
    :goto_1
    if-eqz v2, :cond_4

    .line 491
    sub-int/2addr v0, v9

    .line 493
    :cond_4
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    :cond_5
    :goto_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 500
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 501
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v11, :cond_c

    move v2, v4

    .line 503
    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_6

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 505
    :cond_6
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_d

    .line 507
    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_e

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 508
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 509
    :goto_6
    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 510
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 509
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 513
    :cond_7
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v0, :cond_10

    .line 515
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    move v1, v3

    .line 516
    :goto_7
    if-ge v3, v2, :cond_f

    .line 517
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 519
    if-le v0, v1, :cond_11

    .line 516
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    .line 466
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 489
    goto :goto_1

    .line 493
    :cond_a
    const/16 v2, 0x8

    goto :goto_2

    .line 495
    :cond_b
    iget-object v9, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9, v0, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    goto :goto_3

    :cond_c
    move v2, v5

    .line 501
    goto :goto_4

    :cond_d
    move v4, v5

    .line 505
    goto :goto_5

    :cond_e
    move v5, v6

    .line 508
    goto :goto_6

    .line 523
    :cond_f
    invoke-virtual {p0, v7, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 527
    :goto_9
    return-void

    .line 525
    :cond_10
    invoke-virtual {p0, v7, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setBottomItemIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_bottom_action_mode_close_button:I

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v1

    .line 273
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 277
    invoke-virtual {v1, p2}, Landroid/widget/CheckedTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBottomSelectListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 183
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 189
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 194
    :cond_1
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->requestLayout()V

    .line 198
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 150
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_2

    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 153
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    if-nez p1, :cond_3

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 179
    :cond_2
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 164
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    .line 163
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 166
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 168
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 171
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 173
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 207
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initTitle()V

    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 202
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initTitle()V

    .line 203
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->requestLayout()V

    .line 679
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 680
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
