.class Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColoredTiles"
.end annotation


# static fields
.field private static final COLORS:[I


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 328
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xffff01
        -0x100
        -0xff0100
        -0xff0001
        -0xff01
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    .line 339
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getPreview()Lcn/nubia/gallery3d/glrenderer/BasicTexture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 363
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->getTileSize()I

    move-result v0

    if-nez p4, :cond_0

    .line 365
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 368
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->COLORS:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 370
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x43000000    # 128.0f

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    shl-int/2addr v0, p1

    .line 375
    div-int/2addr p2, v0

    .line 376
    div-int/2addr p3, v0

    .line 377
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " @ "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    iget-object p3, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v5, p2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p4
.end method

.method public getTileSize()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method
