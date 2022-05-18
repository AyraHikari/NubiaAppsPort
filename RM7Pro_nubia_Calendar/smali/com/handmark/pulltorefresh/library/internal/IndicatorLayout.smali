.class public Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 51
    .local v7, "arrowD":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 54
    .local v12, "padding":I
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 58
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    sget v8, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_top:I

    .line 73
    .local v8, "inAnimResId":I
    sget v11, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_top:I

    .line 74
    .local v11, "outAnimResId":I
    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_top:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 78
    :goto_0
    invoke-static {p1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    .line 79
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 85
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 87
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 91
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 97
    return-void

    .line 60
    .end local v8    # "inAnimResId":I
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "outAnimResId":I
    :pswitch_0
    sget v8, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_bottom:I

    .line 61
    .restart local v8    # "inAnimResId":I
    sget v11, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_bottom:I

    .line 62
    .restart local v11    # "outAnimResId":I
    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_bottom:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    .local v10, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 68
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method

.method public final isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 101
    .local v0, "currentAnim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 102
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 121
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->clearAnimation()V

    .line 127
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method
