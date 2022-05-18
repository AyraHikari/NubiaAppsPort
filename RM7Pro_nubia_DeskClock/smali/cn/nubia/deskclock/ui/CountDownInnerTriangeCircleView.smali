.class public Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;
.super Landroid/view/View;
.source "CountDownInnerTriangeCircleView.java"


# static fields
.field private static final BLUE_COLOR:I = -0xe95f2e

.field private static final COLORS:[I

.field private static final DEEP_BLUE_COLOR:I = -0xb19720

.field private static final DEFAULT_TRIANGLE_HEIGHT:[I

.field private static final GRENN_COLOR:I = -0xe72147

.field private static final GREY_GRENN_COLOR:I = -0xf83635

.field private static final LIGHT_BLUE_COLOR:I = -0xae6a1f

.field private static final LIGHT_GRENN_COLOR:I = -0xf83635

.field private static final LIGHT_PURPLE_COLOR:I = -0x21d265

.field private static final LIGHT_PURPLE_COLOR2:I = -0x29ce1d

.field private static final PURPLE_COLOR:I = -0x6bcd10

.field private static final RED_COLOR:I = -0x11c4b0


# instance fields
.field private mAlphaValue:F

.field private mColorCirleFraction:F

.field private mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

.field private mDialPlateBitmap:Landroid/graphics/Bitmap;

.field private mEnableDraw:Z

.field private mHasInit:Z

.field private mOuterRotateAngle:F

.field private mPaddingDistance:I

.field private mRotateAngle:F

.field private mRotateValue:F

.field private mScaleFraction:F

.field private mScaleValue:F

.field private mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x45

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->DEFAULT_TRIANGLE_HEIGHT:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->COLORS:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x8d
        0x7b
        0x6c
        0x5d
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x62
        0x78
        0x96
        0xb4
        0xd1
        0xb4
        0x96
        0x78
        0x62
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x52
        0x5d
        0x6c
        0x7b
    .end array-data

    .line 56
    :array_1
    .array-data 4
        -0xe72147
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xf83635
        -0xf83635
        -0xf83635
        -0xf83635
        -0xf83635
        -0xe72147
        -0xe72147
        -0xe72147
        -0xe72147
        -0xe72147
        -0xf83635
        -0xf83635
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xb19720
        -0xb19720
        -0xb19720
        -0xb19720
        -0x6bcd10
        -0x6bcd10
        -0x6bcd10
        -0x6bcd10
        -0x29ce1d
        -0x29ce1d
        -0x21d265
        -0x21d265
        -0x11c4b0
        -0xf83635
        -0xf83635
        -0xf83635
        -0x11c4b0
        -0x21d265
        -0x29ce1d
        -0x29ce1d
        -0x29ce1d
        -0x6bcd10
        -0xb19720
        -0xae6a1f
        -0xae6a1f
        -0xf83635
        -0xf83635
        -0xf83635
        -0xf83635
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
        -0xe95f2e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mPaddingDistance:I

    .line 34
    const v0, 0x40a6f4df

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mRotateAngle:F

    .line 65
    sget-object v0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->DEFAULT_TRIANGLE_HEIGHT:[I

    array-length v0, v0

    new-array v0, v0, [Lcn/nubia/deskclock/ui/Triangle;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    .line 66
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mColorCirleFraction:F

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleFraction:F

    .line 72
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mAlphaValue:F

    .line 73
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleValue:F

    .line 74
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mRotateValue:F

    .line 82
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)[Lcn/nubia/deskclock/ui/Triangle;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleFraction:F

    return p1
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x42780000    # 62.0f

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mRotateAngle:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    aget-object v2, v2, v0

    iget v2, v2, Lcn/nubia/deskclock/ui/Triangle;->INIT_HEIGHT:F

    sub-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleFraction:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/Triangle;->setHeight(F)V

    .line 130
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/ui/Triangle;->draw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, "resources":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mHasInit:Z

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-direct {v2, p1}, Lcn/nubia/deskclock/model/CountDownConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    .line 90
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getInnerCircleRaduio()F

    move-result v2

    sput v2, Lcn/nubia/deskclock/ui/Triangle;->sCanvasWidth:F

    .line 91
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getInnerCircleRaduio()F

    move-result v2

    sput v2, Lcn/nubia/deskclock/ui/Triangle;->sCanvasHeight:F

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mHasInit:Z

    .line 94
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 95
    const v2, 0x7f020080

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 98
    :cond_1
    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mPaddingDistance:I

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->DEFAULT_TRIANGLE_HEIGHT:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 100
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mTriangles:[Lcn/nubia/deskclock/ui/Triangle;

    new-instance v3, Lcn/nubia/deskclock/ui/Triangle;

    sget-object v4, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->DEFAULT_TRIANGLE_HEIGHT:[I

    aget v4, v4, v0

    int-to-float v4, v4

    sget-object v5, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->COLORS:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v6}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getInnerCircleRaduio()F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v7}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getInnerCircleRaduio()F

    move-result v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v8}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getInnerCircleRaduio()F

    move-result v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcn/nubia/deskclock/ui/Triangle;-><init>(FIFF)V

    aput-object v3, v2, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method


# virtual methods
.method public getResetTimeAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    .line 160
    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleFraction:F

    .line 161
    .local v1, "startFraction":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 162
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$2;-><init>(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    return-object v0
.end method

.method public getSetTimeAnimator(Lcn/nubia/deskclock/model/TimerHelper;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "timeHelper"    # Lcn/nubia/deskclock/model/TimerHelper;

    .prologue
    .line 137
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 138
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView$1;-><init>(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    invoke-virtual {p1}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    return-object v0

    .line 137
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "lastTime":J
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mHasInit:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mEnableDraw:Z

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->drawTriangle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 109
    sub-int v0, p4, p2

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mViewWidth:I

    .line 110
    sub-int v0, p5, p3

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mViewHeight:I

    .line 111
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 156
    :cond_0
    return-void
.end method

.method public setAlphaValue(F)V
    .locals 0
    .param p1, "alphaValue"    # F

    .prologue
    .line 188
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mAlphaValue:F

    .line 189
    return-void
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .param p1, "darw"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mEnableDraw:Z

    .line 177
    return-void
.end method

.method public setRotateValue(F)V
    .locals 0
    .param p1, "rotateValue"    # F

    .prologue
    .line 196
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mRotateValue:F

    .line 197
    return-void
.end method

.method public setScaleFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 184
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleFraction:F

    .line 185
    return-void
.end method

.method public setScaleValue(F)V
    .locals 0
    .param p1, "scaleValue"    # F

    .prologue
    .line 192
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->mScaleValue:F

    .line 193
    return-void
.end method
