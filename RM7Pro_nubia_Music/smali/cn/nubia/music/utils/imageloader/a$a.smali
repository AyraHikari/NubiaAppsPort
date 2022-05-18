.class Lcn/nubia/music/utils/imageloader/a$a;
.super Landroid/graphics/drawable/Drawable;
.source "GlideImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/utils/imageloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected final a:Landroid/graphics/Bitmap;

.field protected b:F

.field protected final c:Landroid/graphics/RectF;

.field protected final d:Landroid/graphics/RectF;

.field protected final e:Landroid/graphics/BitmapShader;

.field protected final f:Landroid/graphics/Paint;

.field final synthetic g:Lcn/nubia/music/utils/imageloader/a;


# direct methods
.method public constructor <init>(Lcn/nubia/music/utils/imageloader/a;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 372
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/a$a;->g:Lcn/nubia/music/utils/imageloader/a;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 367
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->c:Landroid/graphics/RectF;

    .line 373
    iput-object p2, p0, Lcn/nubia/music/utils/imageloader/a$a;->a:Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->b:F

    .line 375
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->e:Landroid/graphics/BitmapShader;

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->d:Landroid/graphics/RectF;

    .line 377
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    .line 378
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/music/utils/imageloader/a$a;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 380
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 381
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 382
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 396
    const-string v0, "GlideImageFetcher"

    const-string v1, "displayAvatar setResource draw"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->b:F

    iget v1, p0, Lcn/nubia/music/utils/imageloader/a$a;->b:F

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$a;->b:F

    iget-object v3, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 398
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 387
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->b:F

    .line 389
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    iget-object v1, p0, Lcn/nubia/music/utils/imageloader/a$a;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/music/utils/imageloader/a$a;->c:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 391
    iget-object v1, p0, Lcn/nubia/music/utils/imageloader/a$a;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 392
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 408
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 413
    return-void
.end method
