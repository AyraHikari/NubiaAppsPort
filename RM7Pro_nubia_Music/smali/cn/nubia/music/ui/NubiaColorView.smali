.class public Lcn/nubia/music/ui/NubiaColorView;
.super Landroid/view/View;
.source "NubiaColorView.java"


# static fields
.field public static final COLOR_TYPE_BLUR:I = 0x3

.field public static final COLOR_TYPE_GRAIDENT:I = 0x0

.field public static final COLOR_TYPE_GRAIDENT_FIXED:I = 0x4

.field public static final COLOR_TYPE_GRAIDENT_WITH_SHADE:I = 0x1

.field public static final COLOR_TYPE_GRID:I = 0x5

.field public static final COLOR_TYPE_MONO:I = 0x2

.field public static final MSG_COLOR_CHANGE:I = 0x1


# instance fields
.field public bDetectThemeColor:Z

.field private bFirstDraw:Z

.field public iColor1:I

.field public iColor2:I

.field private iColorTheme:I

.field private iColorType:I

.field private iLastColorTheme:I

.field public lTickEntry:J

.field public mBlurAlpha:I

.field private mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mGridDrawableId:J

.field private mNewBlurBitmap:Landroid/graphics/Bitmap;

.field private mOldBlurBitmap:Landroid/graphics/Bitmap;

.field public mShadeAlpha:I

.field public mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 38
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 39
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mShadeAlpha:I

    .line 41
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    .line 42
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    .line 43
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 44
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bFirstDraw:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    .line 126
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    .line 120
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 121
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 122
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 38
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 39
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mShadeAlpha:I

    .line 41
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    .line 42
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    .line 43
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 44
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bFirstDraw:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    .line 126
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    .line 101
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/ui/NubiaColorView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 108
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 109
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 38
    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 39
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mShadeAlpha:I

    .line 41
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    .line 42
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    .line 43
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 44
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bFirstDraw:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    .line 126
    iput v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    .line 87
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/ui/NubiaColorView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 94
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 95
    iput-boolean v2, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    .line 97
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-wide v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridDrawableId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 419
    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 421
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    .line 422
    iget-wide v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridDrawableId:J

    long-to-int v0, v0

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 424
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "colorview draw"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 428
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    .line 431
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    sget-object v0, Lcn/nubia/music/preset/R$styleable;->NubiaColorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    .line 359
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void
.end method


# virtual methods
.method public drawActionBarColorBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    const-string v0, "pfm0116"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawColorBackground----------color index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    const/16 v0, 0xff

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    return-void
.end method

.method public drawBlurBackound(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xff

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() mNewBlurBitmap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() mOldBlurBitmap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() mNewBlurBitmap.isRecycled()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() mOldBlurBitmap.isRecycled()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 245
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 247
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    if-ge v0, v12, :cond_3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBlurBackound() 11 mBlurAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 252
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 254
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v13, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 259
    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v13, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 262
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    .line 354
    :cond_2
    :goto_0
    return-void

    .line 264
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 265
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() 22 mBlurAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 268
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 269
    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v13, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 272
    :cond_4
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    if-ge v0, v12, :cond_5

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() 33 mBlurAlpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 274
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 275
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-direct {v9, v10, v10, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    rsub-int v0, v0, 0xff

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v5, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v5

    aget v5, v2, v10

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v6, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v6

    aget v6, v2, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 287
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v13, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 292
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    .line 294
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBlurBackound() 44 mBlurAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    iget-object v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v13, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 302
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_9

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 304
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    if-ge v0, v12, :cond_7

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBlurBackound() 55 mBlurAlpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 306
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 307
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-direct {v0, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 309
    const/high16 v2, -0x1000000

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 312
    iget-object v2, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v13, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v5, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v5

    aget v5, v2, v10

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v6, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v6

    aget v6, v2, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 320
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 323
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    .line 325
    :cond_7
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBlurBackound() 66 mBlurAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    iget-object v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v13, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 330
    :cond_8
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 331
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 332
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v5, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v5

    aget v5, v2, v10

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v6, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v6

    aget v6, v2, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 339
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 344
    :cond_9
    iput v10, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBlurBackound() 77 mBlurAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1, v10}, Lcn/nubia/music/ui/NubiaColorView;->drawGraidentBackground(Landroid/graphics/Canvas;Z)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/music/ui/NubiaColorView;->lTickEntry:J

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 348
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    .line 349
    iput-object v13, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public drawColorBackgroundFixed(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 220
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 221
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v5, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    aget-object v2, v2, v5

    aget v5, v2, v11

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v6, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    aget-object v2, v2, v6

    aget v6, v2, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 226
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    int-to-float v6, v0

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v1

    move v7, v11

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 230
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 231
    const/16 v0, 0xff

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    return-void
.end method

.method public drawGraidentBackground(Landroid/graphics/Canvas;Z)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 191
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 192
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v5, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v5

    aget v5, v2, v11

    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v6, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v2, v2, v6

    aget v6, v2, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 197
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    if-eqz p2, :cond_0

    .line 200
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    int-to-float v6, v0

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v1

    move v7, v11

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 203
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 204
    const/16 v0, 0xff

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    :cond_0
    return-void
.end method

.method public drawGraidentBackground2(Landroid/graphics/Canvas;Z)V
    .locals 11

    .prologue
    .line 141
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bFirstDraw:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    .line 143
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    .line 144
    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bFirstDraw:Z

    .line 148
    :cond_1
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v6, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v7, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor1:I

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 154
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v7, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    iget v8, p0, Lcn/nubia/music/ui/NubiaColorView;->iColor2:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 157
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 160
    iget v3, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    const/16 v4, 0xff

    if-ge v3, v4, :cond_4

    .line 161
    const v3, -0x555556

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object v3, p1

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 165
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    rsub-int v0, v0, 0xff

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    move-object v3, p1

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    move-object v3, p1

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    .line 172
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    .line 183
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 184
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 185
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mShadeAlpha:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    :cond_3
    return-void

    .line 174
    :cond_4
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    const/16 v0, 0xff

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    move-object v3, p1

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bDetectThemeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Lcn/nubia/music/ui/NubiaColorView;->bDetectThemeColor:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iLastColorTheme:I

    sget v1, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    if-eq v0, v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcn/nubia/music/ui/NubiaColorView;->startChange()V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    const-string v0, "onDraw() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 368
    iget v0, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    packed-switch v0, :pswitch_data_0

    .line 395
    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/NubiaColorView;->drawActionBarColorBackground(Landroid/graphics/Canvas;)V

    .line 399
    :goto_0
    return-void

    .line 389
    :pswitch_0
    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/NubiaColorView;->drawActionBarColorBackground(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/NubiaColorView;->drawGridBackground(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public setColorIndex(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorTheme:I

    .line 83
    return-void
.end method

.method public setEffectType(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcn/nubia/music/ui/NubiaColorView;->iColorType:I

    .line 60
    return-void
.end method

.method public setGridDrawableId(J)V
    .locals 1

    .prologue
    .line 402
    iput-wide p1, p0, Lcn/nubia/music/ui/NubiaColorView;->mGridDrawableId:J

    .line 403
    return-void
.end method

.method public setMixBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMixBitmap bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMixBitmap mNewBlurBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMixBitmap mNewBlurBitmap.isRecycled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMixBitmap mOldBlurBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/NubiaColorView;->mOldBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mNewBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public startBlur()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mBlurAlpha:I

    .line 135
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    .line 136
    return-void
.end method

.method public startChange()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/NubiaColorView;->mStep:I

    .line 130
    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/ui/NubiaColorView;->postInvalidateDelayed(J)V

    .line 131
    return-void
.end method
