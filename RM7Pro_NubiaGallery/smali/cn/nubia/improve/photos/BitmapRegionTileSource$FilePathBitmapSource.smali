.class public Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;
.super Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePathBitmapSource"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 229
    invoke-direct {p0, p2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 230
    iput-object p1, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcn/nubia/improve/photos/SimpleBitmapRegionDecoder;
    .locals 2

    .line 235
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/lang/String;Z)Lcn/nubia/improve/photos/SimpleBitmapRegionDecoderWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;->newInstance(Ljava/lang/String;)Lcn/nubia/improve/photos/DumbBitmapRegionDecoder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readExif(Lcn/nubia/gallery3d/exif/ExifInterface;)Z
    .locals 2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "BitmapRegionTileSource"

    const-string v1, "getting decoder failed"

    .line 251
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method
