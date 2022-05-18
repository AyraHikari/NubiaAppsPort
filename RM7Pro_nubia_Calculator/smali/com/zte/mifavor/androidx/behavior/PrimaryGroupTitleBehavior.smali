.class public Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;
.super Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;
.source "PrimaryGroupTitleBehavior.java"


# instance fields
.field private mIsSearchPage:Z

.field private mShowPrimaryTitleCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mIsSearchPage:Z

    .line 29
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mShowPrimaryTitleCollapsed:Z

    .line 30
    iput-boolean p5, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mIsSearchPage:Z

    return-void
.end method


# virtual methods
.method protected getTitleTotalTranslationRangeY()F
    .locals 2

    .line 35
    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mStatusBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 37
    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    sub-float/2addr v0, p0

    return v0
.end method

.method protected onCustomDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FIIFI)Z
    .locals 3
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    check-cast p2, Landroid/widget/TextView;

    .line 51
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mPrimaryTitleWidth:I

    .line 52
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    const/4 v0, 0x0

    if-ne p3, p7, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 54
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mPrimaryTitleWidth:I

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mCollapsedTitleWidthDecrement:I

    sub-int/2addr p1, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 57
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p7, 0x1d

    const/4 v1, 0x2

    if-lt p3, p7, :cond_1

    .line 58
    invoke-virtual {p2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 59
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 60
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    :cond_2
    :goto_0
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    const/16 v1, 0x17

    if-ne p3, p7, :cond_4

    .line 71
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v1, :cond_3

    .line 72
    sget p3, Lcom/zte/extres/R$style;->mfvc_appbar_primary_font:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    .line 74
    :cond_3
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mPrimaryTitleTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    if-nez p5, :cond_6

    .line 77
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v1, :cond_5

    .line 78
    sget p3, Lcom/zte/extres/R$style;->mfvc_appbar_sink_primary_font:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    .line 80
    :cond_5
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mPrimaryTitleSinkTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :cond_6
    :goto_1
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxPrimaryTitleFontSize:I

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    sub-int/2addr p3, p7

    int-to-float p3, p3

    mul-float/2addr p3, p4

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleFontSize:I

    int-to-float p7, p7

    add-float/2addr p3, p7

    .line 84
    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 89
    iget p7, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    if-eq p7, p8, :cond_7

    .line 90
    iput p8, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    move p7, v1

    goto :goto_2

    :cond_7
    move p7, v0

    .line 94
    :goto_2
    iget v2, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    if-eq v2, p1, :cond_8

    .line 95
    iput p1, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    move p1, v1

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    if-nez p7, :cond_9

    if-eqz p1, :cond_a

    .line 99
    :cond_9
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    :cond_a
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_b

    move p1, v1

    goto :goto_4

    :cond_b
    move p1, v0

    .line 104
    :goto_4
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mTitleTotalTranslationRangeX:F

    mul-float/2addr p3, p4

    if-nez p1, :cond_c

    neg-float p3, p3

    .line 105
    :cond_c
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 108
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    add-int/2addr p1, p5

    int-to-float p1, p1

    .line 109
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    if-ne p3, p7, :cond_d

    .line 111
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    goto :goto_5

    .line 114
    :cond_d
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mToolbarHeight:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mStatusBarHeight:I

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    add-int/2addr p8, p3

    int-to-float p3, p8

    sub-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 115
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    cmpl-float p3, p1, p3

    if-lez p3, :cond_e

    goto :goto_5

    .line 118
    :cond_e
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMinPrimaryTitleTranslationY:F

    :goto_5
    const p3, 0x3e4ccccd    # 0.2f

    if-nez p5, :cond_f

    .line 122
    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    if-le p6, p7, :cond_f

    .line 124
    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    sub-int/2addr p6, p7

    int-to-float p6, p6

    mul-float/2addr p6, p3

    add-float/2addr p1, p6

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_6

    .line 127
    :cond_f
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 130
    :goto_6
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mIsSearchPage:Z

    if-eqz p1, :cond_11

    cmpg-float p0, p4, p3

    if-gez p0, :cond_10

    const/4 p4, 0x0

    .line 135
    :cond_10
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_7

    .line 137
    :cond_11
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mShowPrimaryTitleCollapsed:Z

    if-nez p1, :cond_13

    .line 138
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/PrimaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    if-ne p1, p0, :cond_12

    const/4 p0, 0x4

    .line 140
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 143
    :cond_12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_13
    :goto_7
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v1
.end method
