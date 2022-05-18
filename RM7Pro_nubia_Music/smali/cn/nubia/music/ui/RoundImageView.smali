.class public Lcn/nubia/music/ui/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# static fields
.field private static final OUTLINE_WIDTH:I = 0x3


# instance fields
.field private bRoundEffectEnabled:Z

.field private mBitmapArgb:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

.field private mCan:Landroid/graphics/Canvas;

.field private mDrawOutline:Z

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mDstRect:Landroid/graphics/Rect;

.field private mGreyDisplay:Z

.field private mGreyFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mOutCanvas:Landroid/graphics/Canvas;

.field private mOutPaint:Landroid/graphics/Paint;

.field private mScaledBitmapArgb:Landroid/graphics/Bitmap;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-boolean v1, p0, Lcn/nubia/music/ui/RoundImageView;->bRoundEffectEnabled:Z

    .line 23
    iput-boolean v2, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawOutline:Z

    .line 24
    iput-boolean v2, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyDisplay:Z

    .line 110
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    .line 111
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawPaint:Landroid/graphics/Paint;

    .line 112
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 114
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 115
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    .line 117
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    .line 118
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    .line 223
    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mValues:Landroid/content/ContentValues;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/preset/R$styleable;->RoundImageView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 42
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawOutline:Z

    .line 43
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyDisplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-direct {p0}, Lcn/nubia/music/ui/RoundImageView;->initGreyFilter()V

    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private drawRoundImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 178
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_4

    .line 183
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    .line 188
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    .line 195
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    iget-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyDisplay:Z

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    iget-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawOutline:Z

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    :cond_3
    return-void

    .line 185
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private getCicleBitmap2(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v8, -0x1000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 61
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 73
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 75
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 74
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapArgb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initGreyFilter()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 53
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 54
    return-void
.end method


# virtual methods
.method public getCicleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/ui/RoundImageView;->getCicleBitmap2(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContentValueInfo()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mValues:Landroid/content/ContentValues;

    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v5, -0x1000000

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView;->getWidth()I

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView;->getHeight()I

    move-result v2

    .line 133
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mScaledBitmapArgb:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 134
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mScaledBitmapArgb:Landroid/graphics/Bitmap;

    .line 137
    :cond_2
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    if-nez v3, :cond_3

    .line 138
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcn/nubia/music/ui/RoundImageView;->mScaledBitmapArgb:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    .line 141
    :cond_3
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_4

    .line 142
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawPaint:Landroid/graphics/Paint;

    .line 144
    :cond_4
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 147
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mSrcRect:Landroid/graphics/Rect;

    if-nez v3, :cond_6

    .line 148
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 152
    :goto_1
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    if-nez v3, :cond_7

    .line 153
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    .line 157
    :goto_2
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mCan:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcn/nubia/music/ui/RoundImageView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 168
    :cond_5
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 170
    iget-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->bRoundEffectEnabled:Z

    if-eqz v0, :cond_8

    .line 171
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mScaledBitmapArgb:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/nubia/music/ui/RoundImageView;->drawRoundImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 155
    :cond_7
    iget-object v3, p0, Lcn/nubia/music/ui/RoundImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 173
    :cond_8
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mScaledBitmapArgb:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setContentValueInfo(Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iput-object p1, p0, Lcn/nubia/music/ui/RoundImageView;->mValues:Landroid/content/ContentValues;

    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentAlbumCallback(Lcn/nubia/music/app/listener/ICurrentAlbumCallback;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcn/nubia/music/ui/RoundImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    .line 227
    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 1

    .prologue
    .line 262
    iput-boolean p1, p0, Lcn/nubia/music/ui/RoundImageView;->mDrawOutline:Z

    .line 263
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView;->invalidate()V

    goto :goto_0
.end method

.method public setGreyDisplay(Z)V
    .locals 2

    .prologue
    .line 250
    iput-boolean p1, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyDisplay:Z

    .line 251
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyDisplay:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/music/ui/RoundImageView;->mGreyFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 258
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/music/ui/RoundImageView;->invalidate()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mOutPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    invoke-interface {v0, p1}, Lcn/nubia/music/app/listener/ICurrentAlbumCallback;->onCurrentAlbumUpdate(Landroid/graphics/Bitmap;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageDrawable(bitmap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 92
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "RoundImageView is not null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/ui/RoundImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/app/listener/ICurrentAlbumCallback;->onCurrentAlbumUpdate(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "RoundImageView is null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    return-void
.end method

.method public setRoundEffect(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/nubia/music/ui/RoundImageView;->bRoundEffectEnabled:Z

    .line 58
    return-void
.end method
