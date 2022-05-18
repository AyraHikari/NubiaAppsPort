.class public Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;
.super Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;
.source "SecondaryGroupTitleBehavior.java"


# static fields
.field private static final TITLE_VISIBILITY_THRESHOLD:F = 0.5f


# instance fields
.field private mIsSearchPage:Z

.field private mShowSecondaryTitleCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/zte/mifavor/androidx/behavior/BaseSinkGroupTitleBehavior;-><init>(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mIsSearchPage:Z

    .line 28
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mShowSecondaryTitleCollapsed:Z

    .line 29
    iput-boolean p4, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mIsSearchPage:Z

    return-void
.end method


# virtual methods
.method protected getTitleTotalTranslationRangeY()F
    .locals 2

    .line 34
    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mAppBarHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mStatusBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxPrimaryTitleHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 36
    iget p0, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

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

    .line 48
    check-cast p2, Landroid/widget/TextView;

    .line 50
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mSecondaryTitleWidth:I

    .line 51
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    .line 52
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p7

    iget v0, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    const/4 v1, 0x0

    if-ne p7, v0, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 54
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mSecondaryTitleWidth:I

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mCollapsedTitleWidthDecrement:I

    sub-int/2addr p1, p3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 56
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mSecondaryTitleHeight:I

    goto :goto_0

    .line 58
    :cond_0
    sget p7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v2, 0x2

    if-lt p7, v0, :cond_1

    .line 59
    invoke-virtual {p2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 60
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    sget-object p7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 66
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 67
    sget-object p7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p7

    check-cast p7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 73
    iget v0, p7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, 0x1

    if-eq v0, p3, :cond_3

    .line 74
    iput p3, p7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    move p3, v2

    goto :goto_1

    :cond_3
    move p3, v1

    .line 78
    :goto_1
    iget v0, p7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    if-eq v0, p1, :cond_4

    .line 79
    iput p1, p7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-nez p3, :cond_5

    if-eqz p1, :cond_6

    .line 83
    :cond_5
    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_6
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v2, :cond_7

    move p1, v2

    goto :goto_3

    :cond_7
    move p1, v1

    .line 88
    :goto_3
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mTitleTotalTranslationRangeX:F

    mul-float/2addr p3, p4

    if-nez p1, :cond_8

    neg-float p3, p3

    .line 89
    :cond_8
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 92
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    add-int/2addr p1, p5

    int-to-float p1, p1

    .line 93
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p7, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mAppBarTotalScrollRange:I

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, p7, :cond_9

    .line 95
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    goto :goto_4

    .line 98
    :cond_9
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mToolbarHeight:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mStatusBarHeight:I

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxSecondaryTitleHeight:I

    sub-int/2addr p8, p3

    int-to-float p3, p8

    add-float/2addr p1, p3

    div-float/2addr p1, v0

    .line 99
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    cmpl-float p3, p1, p3

    if-lez p3, :cond_a

    goto :goto_4

    .line 102
    :cond_a
    iget p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMinSecondaryTitleTranslationY:F

    :goto_4
    if-nez p5, :cond_b

    .line 106
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    if-le p6, p3, :cond_b

    .line 108
    iget p3, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mMaxAppBarLayoutBottom:I

    sub-int/2addr p6, p3

    int-to-float p3, p6

    const p5, 0x3e4ccccd    # 0.2f

    mul-float/2addr p3, p5

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_5

    .line 111
    :cond_b
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 114
    :goto_5
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mIsSearchPage:Z

    if-nez p1, :cond_c

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/behavior/SecondaryGroupTitleBehavior;->mShowSecondaryTitleCollapsed:Z

    if-eqz p0, :cond_c

    .line 115
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p1, p4, p0

    if-gez p1, :cond_d

    const/4 p0, 0x4

    .line 118
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    sub-float/2addr p4, p0

    mul-float/2addr p4, v0

    .line 121
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 122
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_6
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return v2
.end method
