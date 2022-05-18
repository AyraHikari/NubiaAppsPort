.class Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;


# instance fields
.field mBuffer:Landroid/graphics/Bitmap;

.field mTempCanvas:Landroid/graphics/Canvas;

.field mTempPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;
    .locals 1

    .line 111
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 113
    new-instance v0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;

    invoke-direct {v0, p0}, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;
    .locals 1

    .line 104
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;

    invoke-direct {v0, p0}, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .line 124
    iget-object v0, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 129
    :cond_0
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, p2

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 130
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget-object v1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 137
    iget-object p2, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v3, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object p1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    iget-object p1, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
