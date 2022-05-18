.class public Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;
.super Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;
.source "WaveDrawElement.java"


# static fields
.field public static final WAVE_ALPHA:Ljava/lang/String; = "Wave_Alpha"

.field public static final WAVE_SIZE:Ljava/lang/String; = "Wave_Size"


# instance fields
.field private final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final CIRCLE_ALPHA_END:I

.field private final CIRCLE_ALPHA_MIN:I

.field private final CIRCLE_ALPHA_START:I

.field private final CIRCLE_RADIUS_DP_END:F

.field private final CIRCLE_RADIUS_DP_START:F

.field private final LINE_WIDTH_DP:F

.field private final SIZE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDensity:F

.field private mLifeTime:I

.field private mLineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSize:F

.field private mSweepGradient:Landroid/graphics/SweepGradient;

.field private final mSweepGradientColors:[I

.field private final mSweepGradientPositions:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .prologue
    const v3, 0x3faaaaab

    const/4 v1, 0x5

    .line 70
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V

    .line 18
    iput v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->CIRCLE_ALPHA_MIN:I

    .line 19
    const/16 v0, 0xff

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->CIRCLE_ALPHA_START:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->CIRCLE_ALPHA_END:I

    .line 22
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->CIRCLE_RADIUS_DP_START:F

    .line 23
    const v0, 0x4308aaab

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->CIRCLE_RADIUS_DP_END:F

    .line 24
    iput v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->LINE_WIDTH_DP:F

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradientColors:[I

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradientPositions:[F

    .line 41
    new-instance v0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "Wave_Size"

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;-><init>(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->SIZE:Landroid/util/Property;

    .line 55
    new-instance v0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "Wave_Alpha"

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$2;-><init>(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->ALPHA:Landroid/util/Property;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mDensity:F

    .line 72
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mDensity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLineWidth:F

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLifeTime:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->initAnimation(Landroid/content/Context;)V

    .line 76
    return-void

    .line 35
    :array_0
    .array-data 4
        0x7fc9b99b
        0x7fc9b99b
        -0x33090e19
        0x7fc9b99b
        0x7fc9b99b
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x0
        0x3f200000    # 0.625f
        0x3f2ccccd    # 0.675f
        0x3f39999a    # 0.725f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initAnimation(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x11c6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 79
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6b851f    # 0.23f

    const v5, 0x3cf5c28f    # 0.03f

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    .local v3, "scaleInterpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 83
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->SIZE:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x40c00000    # 6.0f

    iget v7, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mDensity:F

    mul-float/2addr v6, v7

    aput v6, v5, v9

    const v6, 0x4308aaab

    iget v7, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mDensity:F

    mul-float/2addr v6, v7

    aput v6, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 87
    .local v2, "animatorWaveScale":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 92
    .local v1, "animatorWaveAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 95
    iget-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v9

    aput-object v1, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    return-void

    .line 89
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->destroy()V

    .line 185
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->stopAnimation()V

    .line 186
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 169
    iget v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAlpha:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLineWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 176
    .local v0, "tmpAlpha":I
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSize:F

    iget-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAlpha:I

    return v0
.end method

.method public getLifeTime()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLifeTime:I

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSize:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 151
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 152
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAlpha:I

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;->invalidateEx()V

    .line 155
    :cond_0
    return-void
.end method

.method public setLifeTime(I)V
    .locals 0
    .param p1, "lifeTime"    # I

    .prologue
    .line 131
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLifeTime:I

    .line 132
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 123
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mLineWidth:F

    .line 124
    return-void
.end method

.method public setPositionXY(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;->setPositionXY(II)V

    .line 160
    new-instance v0, Landroid/graphics/SweepGradient;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradientColors:[I

    iget-object v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradientPositions:[F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    return-void
.end method

.method public setSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 140
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 141
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mSize:F

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;->invalidateEx()V

    .line 144
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->stopAnimation()V

    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 112
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->setAlpha(I)V

    .line 120
    return-void
.end method
