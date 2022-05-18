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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    sget v0, Lcn/nubia/commonui/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    sget-object v1, Lcn/nubia/commonui/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v1, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
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
    .line 388
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 389
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    if-eqz v0, :cond_0

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 391
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 393
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 220
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 221
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 223
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcn/nubia/commonui/R$id;->action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 224
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcn/nubia/commonui/R$id;->action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 225
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 228
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 233
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 237
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 238
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 241
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 243
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 236
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 237
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 238
    goto :goto_2
.end method

.method private makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 529
    new-instance v6, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v6}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 530
    .local v6, "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 531
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v9, v8

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 532
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v9, v8

    int-to-float v7, v8

    .line 533
    .local v7, "translationX":F
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 534
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8, v10}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 535
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 536
    .local v2, "closeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 537
    invoke-virtual {v6, v2}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 540
    .end local v2    # "closeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v7    # "translationX":F
    :cond_0
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v8, :cond_1

    .line 541
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 542
    .local v3, "count":I
    if-lez v3, :cond_1

    .line 543
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ltz v4, :cond_1

    .line 544
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 545
    .local v1, "child":Landroid/view/View;
    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 546
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 547
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 548
    invoke-virtual {v6, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 543
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_1
    return-object v6
.end method

.method private makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 556
    new-instance v7, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v7}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 558
    .local v7, "set":Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 559
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8, v11}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 560
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 561
    .local v2, "closeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 562
    invoke-virtual {v2, v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 563
    invoke-virtual {v7, v2}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 566
    .end local v2    # "closeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_0
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 567
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-static {v8, v11}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 568
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 569
    .local v5, "nubiaCloseOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v5, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 570
    invoke-virtual {v5, v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 571
    invoke-virtual {v7, v5}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 574
    .end local v5    # "nubiaCloseOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 575
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-static {v8, v11}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 576
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 577
    .local v6, "nubiaSelectOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v6, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 578
    invoke-virtual {v6, v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 579
    invoke-virtual {v7, v6}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 582
    .end local v6    # "nubiaSelectOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v8, :cond_3

    .line 583
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 584
    .local v3, "count":I
    if-lez v3, :cond_3

    .line 585
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gez v4, :cond_3

    .line 586
    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v8, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, "child":Landroid/view/View;
    invoke-static {v1, v11}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 588
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 589
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 590
    invoke-virtual {v7, v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 585
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_3
    return-object v7
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

    .line 373
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 381
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 382
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 383
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeOutAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 384
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
    .line 439
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 444
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionMenuHight()I
    .locals 2

    .prologue
    .line 685
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
    .line 421
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 14
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x11

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 284
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v7, :cond_0

    .line 285
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 286
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    invoke-virtual {v3, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 288
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    new-instance v8, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;

    invoke-direct {v8, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 295
    .local v5, "menu":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v7, :cond_1

    .line 296
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v7}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 298
    :cond_1
    new-instance v7, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 299
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 301
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 305
    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v7, :cond_3

    .line 306
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v8}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 307
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v7, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 308
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v7, v13}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mHideCloseButton:Z

    if-nez v7, :cond_2

    .line 312
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 316
    :cond_2
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v7, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    :goto_0
    iput-boolean v11, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 370
    return-void

    .line 319
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 320
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 319
    invoke-virtual {v7, v8, v11}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 322
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 324
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 326
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v8}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 327
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v7, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 331
    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-nez v7, :cond_4

    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomCloseLayout:I

    if-eq v7, v9, :cond_4

    .line 332
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 333
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomCloseLayout:I

    invoke-virtual {v3, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    .line 334
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    new-instance v8, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$2;

    invoke-direct {v8, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-nez v7, :cond_5

    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelectLayout:I

    if-eq v7, v9, :cond_5

    .line 342
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 343
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelectLayout:I

    invoke-virtual {v3, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    .line 346
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_mode_close_button_default_width:I

    .line 347
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 349
    .local v2, "closeWidth":I
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v1, "closeLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v6, "menuLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v7, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v0, "SelectLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 432
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
    .line 681
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 397
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 398
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_0
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 403
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    .line 404
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    .line 406
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 407
    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 409
    return-void
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 651
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 643
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 646
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 647
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 639
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
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 663
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 664
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 665
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 600
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 601
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 602
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 603
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 605
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 608
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 609
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 610
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 611
    invoke-static {v2, v12, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 613
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 615
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->makeInAnimation()Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 616
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 621
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 622
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 625
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 626
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 629
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 631
    :goto_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 632
    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mLinearContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getActionMenuHight()I

    move-result v10

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 635
    :cond_3
    return-void

    .line 601
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 607
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 608
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 629
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 632
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 449
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 450
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 451
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 455
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 456
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 457
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 461
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 463
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 466
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 467
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 468
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 469
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 471
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 474
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 477
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 482
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 484
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 485
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 487
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 488
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 489
    sub-int v3, v3, v19

    .line 491
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 499
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 501
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    .line 502
    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 503
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 505
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    .line 506
    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 507
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 508
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 507
    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 511
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 512
    const/16 v16, 0x0

    .line 513
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 514
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 515
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 516
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 517
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 518
    move/from16 v16, v17

    .line 514
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 464
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 487
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 491
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 493
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 499
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 502
    goto :goto_5

    .line 503
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 506
    goto :goto_7

    .line 521
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 525
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 523
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setBottomItemIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "closeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "selectDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomSelect:Landroid/view/View;

    if-nez v2, :cond_1

    .line 268
    :cond_0
    const/4 v2, 0x0

    .line 279
    :goto_0
    return v2

    .line 270
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mNubiaBottomClose:Landroid/view/View;

    sget v3, Lcn/nubia/commonui/R$id;->nubia_bottom_action_mode_close_button:I

    .line 271
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, "closeTV":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v1

    .line 273
    .local v1, "selectTV":Landroid/widget/CheckedTextView;
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
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setBottomSelectListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

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
    .param p1, "height"    # I

    .prologue
    .line 182
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 183
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

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
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 150
    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 151
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 153
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 156
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 157
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 159
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 179
    :cond_2
    return-void

    .line 163
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 164
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 163
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 166
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 168
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 171
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_4
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

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
    .param p1, "title"    # Ljava/lang/CharSequence;

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
    .param p1, "titleOptional"    # Z

    .prologue
    .line 674
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->requestLayout()V

    .line 677
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 678
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
