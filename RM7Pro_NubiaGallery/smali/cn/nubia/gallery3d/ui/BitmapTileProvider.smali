.class public Lcn/nubia/gallery3d/ui/BitmapTileProvider;
.super Ljava/lang/Object;
.source "BitmapTileProvider.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/TileImageView$TileSource;


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMipmaps:[Landroid/graphics/Bitmap;

.field private mRecycled:Z

.field private final mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    new-instance p1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .line 50
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_1
    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 44
    invoke-static {p1, v2, v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .line 60
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 2

    shr-int/2addr p2, p1

    shr-int/2addr p3, p1

    .line 78
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p4, p4}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 82
    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 85
    :goto_0
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    aget-object p1, p4, p1

    .line 86
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int p2, p2

    neg-int p3, p3

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p4, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public recycle()V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mRecycled:Z

    .line 96
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    invoke-static {v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/ScreenNail;->recycle()V

    :cond_2
    return-void
.end method
