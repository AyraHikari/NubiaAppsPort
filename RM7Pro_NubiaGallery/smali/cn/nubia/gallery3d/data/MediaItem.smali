.class public abstract Lcn/nubia/gallery3d/data/MediaItem;
.super Lcn/nubia/gallery3d/data/MediaObject;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;
    }
.end annotation


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_BMP:Ljava/lang/String; = "image/bmp"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final TAG:Ljava/lang/String; = "MediaItem"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_BIGTHUMBNAIL:I = 0x3

.field public static final TYPE_BMPTHUMBNAIL:I = 0x8

.field public static final TYPE_FACE_THUMBNAIL:I = 0x9

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_PANORAMA:I = 0x4

.field public static final TYPE_THUMBNAIL:I = 0x1

.field public static final TYPE_VIDEO_MICROTHUMBNAIL:I = 0x6

.field public static final TYPE_VIDEO_THUMBNAIL:I = 0x5

.field private static sBigthumbnailTargetSize:I = 0x1e0

.field private static sBmpThumbnailTargetSize:I = 0x280

.field private static sCloudMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool; = null

.field private static sFaceThumbnailTargetSize:I = 0x280

.field private static sMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool; = null

.field private static sMicrothumbnailTargetSize:I = 0xc8

.field private static sPanoramaThumbnailTargetSize:I = 0x280

.field private static sThumbnailTargetSize:I = 0x280


# instance fields
.field private isNeedColorSpace:Z

.field private isSetColorSpace:Z

.field protected mIsProtected:Z

.field public processing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcn/nubia/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    .line 64
    new-instance v0, Lcn/nubia/gallery3d/data/BytesBufferPool;

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sCloudMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;J)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/MediaObject;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->mIsProtected:Z

    .line 236
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->isNeedColorSpace:Z

    .line 237
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->isSetColorSpace:Z

    return-void
.end method

.method public static getBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;
    .locals 3

    .line 159
    sget-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcn/nubia/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    .line 163
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getCloudBytesBufferPool()Lcn/nubia/gallery3d/data/BytesBufferPool;
    .locals 3

    .line 167
    sget-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sCloudMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcn/nubia/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sCloudMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    .line 171
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/MediaItem;->sCloudMicroThumbBufferPool:Lcn/nubia/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 153
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "should only request thumb/microthumb from cache"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :pswitch_1
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sFaceThumbnailTargetSize:I

    return p0

    .line 149
    :pswitch_2
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sBmpThumbnailTargetSize:I

    return p0

    .line 139
    :pswitch_3
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    return p0

    .line 137
    :pswitch_4
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    return p0

    .line 147
    :pswitch_5
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sPanoramaThumbnailTargetSize:I

    return p0

    .line 145
    :pswitch_6
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sBigthumbnailTargetSize:I

    return p0

    .line 143
    :pswitch_7
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    return p0

    .line 141
    :pswitch_8
    sget p0, Lcn/nubia/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static setBmpThumbnailSize(I)V
    .locals 0

    .line 180
    sput p0, Lcn/nubia/gallery3d/data/MediaItem;->sBmpThumbnailTargetSize:I

    return-void
.end method

.method public static setThumbnailSizes(II)V
    .locals 0

    .line 175
    sput p0, Lcn/nubia/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcn/nubia/gallery3d/data/Face;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getItemData(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLatLong([D)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 95
    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 96
    aput-wide v1, p1, v0

    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessing()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaItem;->processing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;
    .locals 5

    .line 218
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    .line 222
    :try_start_0
    iget-boolean v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 223
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    .line 225
    :cond_1
    invoke-virtual {p0, v3}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, v4}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    const/4 v1, 0x5

    .line 227
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    const/4 v1, 0x6

    .line 228
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    const/16 v1, 0x9

    .line 229
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/data/RecycledData;->duration:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "MediaItem"

    const-string v2, "NumberFormatException"

    .line 231
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public isASyncLoadImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMarked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedColorSpace()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaItem;->isNeedColorSpace:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaItem;->mIsProtected:Z

    return v0
.end method

.method public isSetColorSpace()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/MediaItem;->isSetColorSpace:Z

    return v0
.end method

.method public abstract requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;",
            ")",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public requestRenameImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestRenameLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public saveUriImage(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNeedColorSpace(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->isNeedColorSpace:Z

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->isSetColorSpace:Z

    return-void
.end method

.method public setProcessing(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MediaItem;->processing:Ljava/lang/String;

    return-void
.end method

.method public setReName(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateFilePath(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
