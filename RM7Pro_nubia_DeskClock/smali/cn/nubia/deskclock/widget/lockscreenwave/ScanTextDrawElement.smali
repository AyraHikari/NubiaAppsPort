.class public Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;
.super Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;
.source "ScanTextDrawElement.java"


# static fields
.field public static final SCAN_ALPHA:Ljava/lang/String; = "Scan_Alpha"

.field public static final SCAN_LOCATION:Ljava/lang/String; = "Scan_Location"


# instance fields
.field private final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final LOCATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final TEXT_SIZE:F

.field private mAlpha:F

.field private mAnimatorAlpha:Landroid/animation/ObjectAnimator;

.field private mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

.field private final mColors:[I

.field private mColorsEx:[I

.field private mDensity:F

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mPositions:[F

.field private mScanLocation:F

.field private mTextHeight:F

.field private mTextWidth:F

.field private mTipInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .prologue
    const v3, 0x41855555

    const/4 v1, 0x5

    .line 64
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/DrawElement;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    .line 21
    iput v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->TEXT_SIZE:F

    .line 27
    new-array v0, v1, [I

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    .line 35
    new-instance v0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "Scan_Location"

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$1;-><init>(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->LOCATION:Landroid/util/Property;

    .line 49
    new-instance v0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "Scan_Alpha"

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;-><init>(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->ALPHA:Landroid/util/Property;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mDensity:F

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextWidth:F

    .line 67
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mDensity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextHeight:F

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->initAnimation(Landroid/content/Context;)V

    .line 71
    return-void

    .line 19
    :array_0
    .array-data 4
        0x4cffffff    # 1.3421772E8f
        0x4cffffff    # 1.3421772E8f
        0x73ffffff
        0x4cffffff    # 1.3421772E8f
        0x4cffffff    # 1.3421772E8f
    .end array-data
.end method

.method private initAnimation(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x2

    .line 74
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 76
    .local v1, "scanLocationInterpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 78
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->LOCATION:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 85
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setColorAlpha(IF)I
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    const/16 v2, 0xff

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 154
    .local v0, "colorAlpha":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v0, v1

    .line 155
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private setScanTextGradient()V
    .locals 13

    .prologue
    .line 159
    const v12, 0x3f2aaaab

    .line 160
    .local v12, "startValue":F
    const/4 v8, 0x0

    .line 161
    .local v8, "endValue":F
    const v10, 0x3e2aaaab

    .line 162
    .local v10, "offset1":F
    const v11, 0x3eaaaaab

    .line 166
    .local v11, "offset2":F
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 167
    const/4 v9, 0x0

    .line 174
    .local v9, "location":F
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v0, v3

    .line 175
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v3, 0x1

    const v5, 0x3f2aaaab

    const v6, -0x40d55555

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aput v5, v0, v3

    .line 176
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v3, 0x2

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const v6, 0x3e2aaaab

    add-float/2addr v5, v6

    aput v5, v0, v3

    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v3, 0x3

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const v6, 0x3eaaaaab

    add-float/2addr v5, v6

    aput v5, v0, v3

    .line 178
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    const/4 v3, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v3

    .line 180
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositionX:I

    int-to-float v1, v0

    .line 181
    .local v1, "x":F
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositionY:I

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextHeight:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v5

    sub-float v2, v0, v3

    .line 182
    .local v2, "y1":F
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositionY:I

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextHeight:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v5

    add-float v4, v0, v3

    .line 184
    .local v4, "y2":F
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    const/4 v3, 0x0

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 186
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    const/4 v3, 0x1

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 187
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    const/4 v3, 0x2

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 188
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    const/4 v3, 0x3

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 189
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    const/4 v3, 0x4

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 190
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColorsEx:[I

    iget-object v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 197
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    return-void

    .line 168
    .end local v1    # "x":F
    .end local v2    # "y1":F
    .end local v4    # "y2":F
    .end local v9    # "location":F
    :cond_0
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 169
    const/high16 v9, 0x3f800000    # 1.0f

    .restart local v9    # "location":F
    goto/16 :goto_0

    .line 171
    .end local v9    # "location":F
    :cond_1
    iget v9, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    .restart local v9    # "location":F
    goto/16 :goto_0

    .line 193
    .restart local v1    # "x":F
    .restart local v2    # "y1":F
    .restart local v4    # "y2":F
    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mColors:[I

    iget-object v6, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mLinearGradient:Landroid/graphics/LinearGradient;

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 204
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTipInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextWidth:F

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 209
    .local v0, "x":F
    iget v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextHeight:F

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 210
    .local v1, "y":F
    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTipInfo:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    return v0
.end method

.method public getScanLocation()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    return v0
.end method

.method public getTipInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 144
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 145
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAlpha:F

    .line 146
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;->invalidateEx()V

    .line 148
    :cond_0
    return-void
.end method

.method public setScanLocation(F)V
    .locals 1
    .param p1, "location"    # F

    .prologue
    .line 132
    iget v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 133
    iput p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mScanLocation:F

    .line 134
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;->invalidateEx()V

    .line 135
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setScanTextGradient()V

    .line 137
    :cond_0
    return-void
.end method

.method public setTipInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTipInfo:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTipInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mTextWidth:F

    .line 121
    return-void
.end method

.method public startAlphaAnimation()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->stopAlphaAnimation()V

    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setScanLocation(F)V

    .line 111
    return-void
.end method

.method public startScanAnimation()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->stopScanAnimation()V

    .line 98
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setScanLocation(F)V

    .line 100
    return-void
.end method

.method public stopAlphaAnimation()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setScanLocation(F)V

    .line 116
    return-void
.end method

.method public stopScanAnimation()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->mAnimatorScanLocation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setScanLocation(F)V

    .line 105
    return-void
.end method
