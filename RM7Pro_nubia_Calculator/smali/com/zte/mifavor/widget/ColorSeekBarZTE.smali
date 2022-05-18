.class public Lcom/zte/mifavor/widget/ColorSeekBarZTE;
.super Landroid/widget/SeekBar;
.source "ColorSeekBarZTE.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dx:F

.field private isThumbOnDragging:Z

.field private isTouchToSeek:Z

.field private mColorsProgress:[I

.field private mDefinedMax:F

.field private mDefinedMin:F

.field private mDelta:F

.field private mIsEnable:Z

.field private mLeftPadding:I

.field private mLength:I

.field private mMax:F

.field private mMin:F

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPreProgress:I

.field private mProgress:F

.field private mRightPadding:I

.field private mSBLeft:F

.field private mSBRight:F

.field private mThumbCenterX:F

.field private mThumbInnerColor:I

.field private mThumbInnerRadius:I

.field private mThumbRadius:I

.field private mTopPadding:I

.field private mTrackBgColor:I

.field private mTrackLength:F

.field private mTrackSize:I

.field private mViewWidth:I

.field private mYTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    sget v0, Lcom/zte/extres/R$attr;->colorSeekBarZTEStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "ColorSeekBarZTE"

    .line 43
    iput-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    .line 48
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mIsEnable:Z

    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mViewWidth:I

    .line 74
    iput v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    .line 75
    iput v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mRightPadding:I

    .line 76
    iput v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTopPadding:I

    .line 78
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mYTop:F

    .line 211
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dx:F

    .line 90
    sget-object v3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 91
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_min:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    .line 92
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_max:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 93
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_progress:I

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 95
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_track_size:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackSize:I

    .line 96
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_thumb_radius:I

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackSize:I

    div-int/2addr v3, v0

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    .line 97
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_thumb_inner_radius:I

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    div-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbInnerRadius:I

    .line 99
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_touch_to_seek:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isTouchToSeek:Z

    .line 101
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_thumb_inner_color:I

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbInnerColor:I

    .line 102
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_track_bg_color:I

    const-string v3, "#FF000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackBgColor:I

    .line 104
    sget p3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_colors_left:I

    sget v3, Lcom/zte/extres/R$color;->mfv_common_pb_11_left:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 105
    sget v3, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_csbz_colors_right:I

    sget v4, Lcom/zte/extres/R$color;->mfv_common_pb_11_right:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 106
    new-array v0, v0, [I

    aput p3, v0, v2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mColorsProgress:[I

    .line 108
    sget p1, Lcom/zte/extres/R$styleable;->ColorSeekBarZTE_android_enabled:I

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->setEnabled(Z)V

    .line 109
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->initConfigByPriority()V

    const-string p1, "ColorSeekBarZTE"

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ColorSeekBarZTE out. mThumbRadius = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mTrackSize = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mThumbInnerRadius = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbInnerRadius:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildBitmap([III)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x2

    if-gtz p2, :cond_0

    const-string v1, "ColorSeekBarZTE"

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build Bitmap width error, width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result p2

    :cond_0
    if-gtz p3, :cond_1

    const-string v1, "ColorSeekBarZTE"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build Bitmap height error, height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result p3

    .line 401
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 402
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 403
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 404
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 405
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 406
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 407
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 408
    invoke-virtual {v1, v2, v2, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 410
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getOpacity()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 411
    :goto_0
    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 412
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 413
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "ColorSeekBarZTE"

    const-string p3, "build Bitmap error, e = "

    .line 416
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result p1

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result p0

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private calculateProgress()F
    .locals 2

    .line 314
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    add-float/2addr v0, p0

    return v0
.end method

.method private dp2px(I)I
    .locals 1

    int-to-float p0, p1

    .line 383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private formatFloat(F)F
    .locals 2

    float-to-double p0, p1

    .line 304
    :try_start_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 305
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ColorSeekBarZTE"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format Float error, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private initConfigByPriority()V
    .locals 4

    .line 122
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 124
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 126
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 127
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 128
    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iput v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 129
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    .line 131
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 132
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 134
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 135
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 138
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPreProgress:I

    .line 139
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    const-string v0, "ColorSeekBarZTE"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConfigByPriority out, mMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isThumbTouched(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 282
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 287
    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    add-float/2addr v2, v0

    .line 288
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    mul-float/2addr p1, v2

    cmpg-float p0, v3, p1

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isTrackTouched(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processProgress()F
    .locals 0

    .line 378
    iget p0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    return p0
.end method

.method private sp2dp(F)I
    .locals 1

    .line 387
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->processProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressFloat()F
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->processProgress()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->formatFloat(F)F

    move-result p0

    return p0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 174
    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 175
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    const-string v0, "ColorSeekBarZTE"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Draw , mProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mDefinedMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 180
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    const-string v0, "ColorSeekBarZTE"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Draw , mProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mDefinedMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 186
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 187
    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLength:I

    if-le v0, v1, :cond_2

    .line 188
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLength:I

    const-string v1, "ColorSeekBarZTE"

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on Draw error, width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mColorsProgress:[I

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->buildBitmap([III)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTopPadding:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    iget v4, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mYTop:F

    iget v5, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    iget v6, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mYTop:F

    iget-object v7, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbInnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 200
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 202
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mYTop:F

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mIsEnable:Z

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    .line 205
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->setAlpha(F)V

    goto :goto_0

    :cond_4
    const p1, 0x3e851eb8    # 0.26f

    .line 207
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 147
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mViewWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mRightPadding:I

    .line 150
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    .line 151
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingTop()I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTopPadding:I

    .line 154
    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    mul-int/lit8 p2, p2, 0x2

    const/16 v0, 0xb4

    .line 156
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->setMeasuredDimension(II)V

    .line 158
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    .line 159
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mViewWidth:I

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mRightPadding:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    .line 161
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    .line 163
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTopPadding:I

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mYTop:F

    .line 165
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbRadius:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLength:I

    const-string p1, "ColorSeekBarZTE"

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on Measure out, mViewWidth = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mViewWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRightPadding = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mRightPadding:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLeftPadding = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLeftPadding:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSBLeft = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mSBRight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTrackLength = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mTrackLength:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mLength = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mLength:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 243
    :pswitch_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbOnDragging:Z

    if-eqz v0, :cond_6

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dx:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 245
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 246
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 248
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 249
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 254
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getProgress()I

    move-result v0

    .line 255
    iget-object v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPreProgress:I

    if-eq v3, v0, :cond_6

    .line 256
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    .line 257
    iget-object v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 258
    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPreProgress:I

    goto/16 :goto_1

    .line 265
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 266
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v3, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 268
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->performClick()Z

    .line 218
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 220
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbOnDragging:Z

    .line 221
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbOnDragging:Z

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    goto :goto_0

    .line 223
    :cond_2
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isTouchToSeek:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isTrackTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbOnDragging:Z

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 226
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 227
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBLeft:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 229
    :cond_3
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    iget v3, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 230
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mSBRight:F

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    .line 233
    :cond_4
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 234
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPreProgress:I

    .line 235
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    .line 237
    :cond_5
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mThumbCenterX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->dx:F

    .line 238
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 275
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isThumbOnDragging:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->isTouchToSeek:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColors([I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 324
    array-length v1, p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mColorsProgress:[I

    .line 329
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ColorSeekBarZTE"

    const-string p1, "set color, the colors is error."

    .line 325
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefinedMax(F)V
    .locals 1

    .line 436
    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    .line 437
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 438
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMax:F

    :cond_0
    return-void
.end method

.method public setDefinedMin(F)V
    .locals 1

    .line 429
    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    .line 430
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 431
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDefinedMin:F

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 424
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 425
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mIsEnable:Z

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    const-string v0, "ColorSeekBarZTE"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Progress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 335
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 337
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 338
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    .line 340
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 341
    iget-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_2

    .line 342
    iget-object p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    return-void
.end method

.method public setRange(FF)V
    .locals 3

    const-string v0, "ColorSeekBarZTE"

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Range, min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 351
    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    .line 352
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 353
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 354
    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iput p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    .line 355
    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    .line 357
    :cond_0
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 358
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 360
    :cond_1
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 361
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    .line 364
    :cond_2
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mProgress:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mPreProgress:I

    .line 365
    iget p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMax:F

    iget p2, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mMin:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->mDelta:F

    .line 366
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ColorSeekBarZTE;->invalidate()V

    return-void
.end method
