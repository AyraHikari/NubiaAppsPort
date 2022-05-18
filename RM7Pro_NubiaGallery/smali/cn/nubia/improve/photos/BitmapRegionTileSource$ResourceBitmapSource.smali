.class public Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;
.super Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceBitmapSource"
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 0

    .line 323
    invoke-direct {p0, p3}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 324
    iput-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    .line 325
    iput p2, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 2

    .line 328
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;
    .locals 2

    .line 333
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, v1}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/io/InputStream;Z)Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;

    move-result-object v1

    .line 336
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v1, :cond_0

    .line 338
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;

    move-result-object v1

    .line 340
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    return-object v1
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 346
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readExif(Lcn/nubia/gallery3d/exif/ExifInterface;)Z
    .locals 2

    .line 351
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 352
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 353
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "BitmapRegionTileSource"

    const-string v1, "Error reading resource"

    .line 356
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method
