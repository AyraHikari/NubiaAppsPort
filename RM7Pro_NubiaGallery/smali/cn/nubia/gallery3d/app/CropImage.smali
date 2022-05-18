.class public Lcn/nubia/gallery3d/app/CropImage;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcn/nubia/gallery3d/app/CropImage$LoadDataTask;,
        Lcn/nubia/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final ACTION_SMART_WALLPAPER_SAVE:Ljava/lang/String; = "android.intent.action.SMART_TAG_SAVE_WALLPAPER"

.field private static final ACTION_WALLPAPER:Ljava/lang/String; = "android.intent.action.SMART_TAG_SAVE_WALLPAPER"

.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static DIRECTNAME:Ljava/lang/String; = null

.field public static final DOWNLOAD_BUCKET:Ljava/io/File;

.field private static final EXIF_TAGS:[Ljava/lang/String;

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IS_LAUNCHER_START:Ljava/lang/String; = "is_launcher_start"

.field public static final IS_SAVE_DATA:Ljava/lang/String; = "issavedata"

.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final LOCKSCREEN_WALLPAPER_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGE"

.field private static final MAX_BACKUP_IMAGE_SIZE:I = 0x140

.field private static final MAX_FILE_INDEX:I = 0x3e8

.field private static final MAX_PIXEL_COUNT:I = 0x4c4b40

.field private static final MSG_BITMAP:I = 0x2

.field private static final MSG_LARGE_BITMAP:I = 0x1

.field private static final MSG_SAVE_COMPLETE:I = 0x3

.field private static final MSG_SHOW_SAVE_ERROR:I = 0x4

.field private static final SET_BOTH:I = 0x3

.field private static final SET_LOCK_SCREEN:I = 0x1

.field private static final SET_WALLPAPER:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_SAVING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final TILE_SIZE:I = 0x200

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field public static final WALLPAPER_TASK_INFO:Ljava/lang/String; = "wallpapertaskinfo"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field public static extra:Landroid/os/Bundle;


# instance fields
.field private isSetLockscreen:Z

.field private isSetWallpaper:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcn/nubia/gallery3d/ui/BitmapTileProvider;

.field private mCropView:Lcn/nubia/gallery3d/ui/CropView;

.field private mDoFaceDetection:Z

.field protected mIsShowCTADialog:Z

.field protected mIsSupportCTADialog:Z

.field private mLoadBitmapTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private mNoCrop:Z

.field private mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

.field private mUseRegionDecoder:Z

.field private messageId:I

.field private setButton:Landroid/widget/Button;

.field private wallpaperImage:Ljava/io/File;

.field private wallpaperTemporary:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 151
    new-instance v0, Ljava/io/File;

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    const-string v0, "/data/data/cn.nubia.gallery3d/files/"

    .line 183
    sput-object v0, Lcn/nubia/gallery3d/app/CropImage;->DIRECTNAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 189
    sput-object v0, Lcn/nubia/gallery3d/app/CropImage;->extra:Landroid/os/Bundle;

    const-string v1, "DateTime"

    const-string v2, "Make"

    const-string v3, "Model"

    const-string v4, "Flash"

    const-string v5, "GPSLatitude"

    const-string v6, "GPSLongitude"

    const-string v7, "GPSLatitudeRef"

    const-string v8, "GPSLongitudeRef"

    const-string v9, "GPSAltitude"

    const-string v10, "GPSAltitudeRef"

    const-string v11, "GPSTimeStamp"

    const-string v12, "GPSDateStamp"

    const-string v13, "WhiteBalance"

    const-string v14, "FocalLength"

    const-string v15, "GPSProcessingMethod"

    .line 1224
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mNoCrop:Z

    .line 156
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 170
    new-instance v2, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v2}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    .line 173
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->setButton:Landroid/widget/Button;

    const v2, 0x7f1001da

    .line 191
    iput v2, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    .line 1368
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1369
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsSupportCTADialog:Z

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    return p1
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->setAsWallpaper(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->saveToMediaProvider(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadBitmapTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1402(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->dismissPermissionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/CropImage;)I
    .locals 0

    .line 103
    iget p0, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 0

    .line 103
    iget-object p0, p0, Lcn/nubia/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToUri(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->doneSmartTagSaveWallpaper(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "png"

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p1
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const-string v0, "FNumber"

    const-string v1, "CropImage"

    .line 1243
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1244
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "ImageWidth"

    .line 1246
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ImageLength"

    .line 1247
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 p2, 0x0

    .line 1248
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    sget-object p1, Lcn/nubia/gallery3d/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    array-length p3, p1

    :goto_0
    if-ge p2, p3, :cond_1

    aget-object v4, p1, p2

    .line 1251
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1253
    invoke-virtual {v3, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1258
    :cond_1
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 1261
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 1262
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 1263
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/10"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1262
    invoke-virtual {v3, v0, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1265
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot parse aperture: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1293
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot copy exif: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static determineCompressFormat(Lcn/nubia/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1

    .line 499
    instance-of v0, p0, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    .line 500
    check-cast p0, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "png"

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "PNG"

    goto :goto_0

    :cond_1
    const-string p0, "JPEG"

    :goto_0
    return-object p0
.end method

.method private dismissPermissionDialog()V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private doneSmartTagSaveWallpaper(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "tagid"

    const-string v1, "wallpapertaskinfo"

    .line 445
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToData(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 448
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMART_TAG_SAVE_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "wallpapertype"

    const/4 v3, 0x2

    .line 450
    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "wallpapername"

    .line 451
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/app/CropImage;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 455
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.ztemt.nfctag.EDIT_TAG"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 458
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/app/CropImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CropImage"

    const-string p2, "Can not set wallpaper!"

    .line 462
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 10

    mul-int/lit16 v0, p5, 0x200

    .line 924
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 925
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 926
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 927
    iput p5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 928
    iget v3, p4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p5, p5

    .line 929
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 930
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p5, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p5, p4

    .line 929
    invoke-virtual {p1, v3, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 931
    new-instance p4, Landroid/graphics/Paint;

    const/4 p5, 0x2

    invoke-direct {p4, p5}, Landroid/graphics/Paint;-><init>(I)V

    .line 932
    iget p5, p3, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    move v4, v3

    .line 933
    :goto_0
    iget v5, p3, Landroid/graphics/Rect;->right:I

    if-ge p5, v5, :cond_2

    .line 934
    iget v5, p3, Landroid/graphics/Rect;->top:I

    move v6, v3

    .line 935
    :goto_1
    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v7, :cond_1

    add-int v7, p5, v0

    add-int v8, v5, v0

    .line 936
    invoke-virtual {v1, p5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 937
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 941
    monitor-enter p2

    .line 942
    :try_start_0
    invoke-virtual {p2, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 943
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v7, v4

    int-to-float v9, v6

    .line 944
    invoke-virtual {p1, v5, v7, v9, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 945
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 943
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    add-int/lit16 v6, v6, 0x200

    move v5, v8

    goto :goto_1

    :cond_1
    add-int/2addr p5, v0

    add-int/lit16 v4, v4, 0x200

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11

    .line 785
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 787
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 790
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz v0, :cond_1

    const-string v5, "outputX"

    .line 792
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "outputY"

    .line 793
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_1
    mul-int v5, v3, v4

    const v6, 0x4c4b40

    if-le v5, v6, :cond_2

    const v5, 0x4a989680    # 5000000.0f

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-double v5, v5

    .line 797
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const-string v6, "CropImage"

    .line 798
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scale down the cropped image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr v3, v5

    .line 799
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v5, v4

    .line 800
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 807
    :cond_2
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    const-string v6, "scale"

    .line 808
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v7, v5

    goto :goto_4

    :cond_4
    :goto_1
    int-to-float v6, v3

    .line 809
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v4

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    if-eqz v0, :cond_6

    const-string v8, "scaleUpIfNeeded"

    .line 811
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v6

    goto :goto_4

    :cond_6
    :goto_3
    cmpl-float v0, v6, v5

    if-lez v0, :cond_7

    move v6, v5

    :cond_7
    cmpl-float v0, v7, v5

    if-lez v0, :cond_5

    move v7, v5

    goto :goto_2

    .line 819
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 820
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v6, v3, v0

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 821
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v10, v4, v2

    int-to-float v10, v10

    div-float/2addr v10, v8

    .line 822
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 823
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 824
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 821
    invoke-virtual {v9, v6, v10, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 825
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 827
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 829
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 830
    invoke-virtual {v2, v0, p1, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1

    .line 833
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v0, :cond_a

    .line 834
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    .line 835
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    iget-object v6, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    .line 836
    invoke-virtual {v6}, Lcn/nubia/gallery3d/ui/CropView;->getImageHeight()I

    move-result v6

    rsub-int v8, v0, 0x168

    .line 835
    invoke-static {p1, v2, v6, v8}, Lcn/nubia/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 837
    invoke-static {v9, v3, v4, v8}, Lcn/nubia/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 839
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 841
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 840
    invoke-static {v5}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v10

    .line 842
    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 848
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 849
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 850
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_9

    if-nez v0, :cond_9

    .line 853
    iget-object v5, p0, Lcn/nubia/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v5

    .line 854
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mNoCrop:Z

    .line 855
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v5

    return-object p1

    :catchall_0
    move-exception p1

    .line 856
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 858
    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 860
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 861
    invoke-static {v6, v3, v4, v0}, Lcn/nubia/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 862
    iget-object v7, p0, Lcn/nubia/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcn/nubia/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v1

    .line 865
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    .line 866
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    .line 867
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->getImageHeight()I

    move-result v2

    rsub-int v5, v0, 0x168

    .line 866
    invoke-static {p1, v1, v2, v5}, Lcn/nubia/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 868
    invoke-static {v9, v3, v4, v5}, Lcn/nubia/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 869
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 870
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 871
    invoke-static {v2, v3, v4, v0}, Lcn/nubia/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 872
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v0, p1, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 3

    .line 740
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "outputFormat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 742
    invoke-static {v0}, Lcn/nubia/gallery3d/app/CropImage;->determineCompressFormat(Lcn/nubia/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "jpg"

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getMediaItemFromIntentData()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 1189
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1190
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 1191
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get path for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", or no data given"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropImage"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1196
    :cond_0
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    return-object v0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .line 736
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    goto :goto_0

    :cond_0
    const-string v0, "image/jpeg"

    :goto_0
    return-object v0
.end method

.method private initializeData()V
    .locals 7

    .line 1038
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v3, "noFaceDetection"

    .line 1041
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/CropImage;->mDoFaceDetection:Z

    :cond_0
    const-string v3, "data"

    .line 1045
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1048
    new-instance v0, Lcn/nubia/gallery3d/ui/BitmapTileProvider;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4}, Lcn/nubia/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmapTileProvider:Lcn/nubia/gallery3d/ui/BitmapTileProvider;

    .line 1050
    iget-object v3, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/gallery3d/ui/CropView;->setDataModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;I)V

    .line 1051
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    .line 1056
    :goto_0
    iput v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    return-void

    .line 1061
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v0, :cond_3

    return-void

    .line 1065
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 1067
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$LoadDataTask;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/data/MediaItem;)V

    new-instance v2, Lcn/nubia/gallery3d/app/CropImage$8;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CropImage$8;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    goto :goto_1

    .line 1081
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/data/MediaItem;)V

    new-instance v2, Lcn/nubia/gallery3d/app/CropImage$9;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/CropImage$9;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadBitmapTask:Lcn/nubia/gallery3d/util/Future;

    :goto_1
    return-void
.end method

.method private isSetWallpaper()Z
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "set-as-wallpaper"

    .line 337
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f1000bc

    .line 998
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 999
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    return-void

    .line 1002
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    const/4 v0, 0x1

    .line 1003
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    .line 1005
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1006
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1007
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    new-instance v1, Lcn/nubia/gallery3d/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcn/nubia/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1008
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    .line 1007
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/CropView;->setDataModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;I)V

    .line 1009
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1012
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    :goto_0
    return-void
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 955
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 957
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    .line 959
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 960
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 961
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    const v4, 0x75300

    .line 962
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 964
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 966
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 967
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    new-instance v0, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/data/MediaItem;)V

    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$7;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CropImage$7;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadBitmapTask:Lcn/nubia/gallery3d/util/Future;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 983
    new-instance v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 984
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;II)V

    .line 985
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 986
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/ui/CropView;->setDataModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;I)V

    .line 989
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz p1, :cond_3

    .line 990
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 992
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    :goto_0
    return-void
.end method

.method private onSaveClicked()V
    .locals 5

    .line 752
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mSaveTask:Lcn/nubia/gallery3d/util/Future;

    if-nez v0, :cond_6

    .line 753
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 756
    iput v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    if-eqz v0, :cond_5

    const-string v2, "is_launcher_start"

    .line 757
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "set-as-wallpaper"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper:Z

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    if-nez v2, :cond_2

    const v0, 0x7f10028d

    .line 759
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    goto :goto_0

    .line 760
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    const v0, 0x7f100296

    .line 761
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const v0, 0x7f100297

    .line 763
    iput v0, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 765
    iget v2, p0, Lcn/nubia/gallery3d/app/CropImage;->messageId:I

    .line 766
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 765
    invoke-static {p0, v0, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 768
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;-><init>(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$6;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CropImage$6;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mSaveTask:Lcn/nubia/gallery3d/util/Future;

    :cond_6
    return-void
.end method

.method private regenerateInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mNoCrop:Z

    if-eqz v0, :cond_0

    .line 569
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "CropImage"

    const-string v0, "cannot read file"

    .line 571
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 574
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 880
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, p3

    .line 881
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 882
    div-int/lit8 p3, p3, 0x5a

    and-int/lit8 p3, p3, 0x1

    if-nez p3, :cond_0

    neg-int p1, p1

    .line 883
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    neg-int p2, p2

    .line 885
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3

    if-eqz p3, :cond_4

    const/16 v0, 0x168

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 894
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0x5a

    if-eq p3, v2, :cond_3

    const/16 v2, 0xb4

    if-eq p3, v2, :cond_2

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_1

    .line 911
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 912
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 913
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 914
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 917
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 904
    :cond_2
    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 905
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 906
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 907
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 897
    :cond_3
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 898
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 899
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 900
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method private saveBitmapToData(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 7

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/app/CropImage;->DIRECTNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "smartwallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/16 v4, 0x3e8

    const-string v5, "CropImage"

    if-ge v1, v4, :cond_1

    .line 471
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to create new file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 477
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 476
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 482
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v1, v0}, Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 487
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to save image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 490
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 489
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 493
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveBitmapToOutputStream(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 2

    .line 703
    new-instance v0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcn/nubia/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 704
    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$5;

    invoke-direct {v1, p0, v0}, Lcn/nubia/gallery3d/app/CropImage$5;-><init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    const/16 v0, 0x5a

    const/4 v1, 0x0

    .line 710
    :try_start_0
    invoke-virtual {p2, p3, v0, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 711
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p2, p2, 0x1

    .line 713
    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 714
    invoke-static {p4}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p2

    :catchall_0
    move-exception p2

    .line 713
    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 714
    invoke-static {p4}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 715
    throw p2
.end method

.method private saveBitmapToUri(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 2

    .line 721
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 722
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3

    .line 720
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "CropImage"

    const-string p3, "cannot write output"

    .line 724
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    return p1
.end method

.method private saveGenericImage(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5

    .line 672
    sget-object v0, Lcn/nubia/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "cannot create download folder"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 676
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 677
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 678
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-direct {p0, p1, p2, v0, v3}, Lcn/nubia/gallery3d/app/CropImage;->saveMedia(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 683
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    .line 684
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x3e8

    .line 687
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date_modified"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "_size"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private saveLocalImage(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 8

    .line 635
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    check-cast v0, Lcn/nubia/gallery3d/data/LocalImage;

    .line 637
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 641
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    .line 642
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 643
    :cond_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcn/nubia/gallery3d/app/CropImage;->saveMedia(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 646
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 646
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;II)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 650
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 651
    iget-object v4, v0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_display_name"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-wide v6, v0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "datetaken"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 654
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "date_modified"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "_size"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "width"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    iget-wide p1, v0, Lcn/nubia/gallery3d/data/LocalImage;->latitude:D

    iget-wide v1, v0, Lcn/nubia/gallery3d/data/LocalImage;->longitude:D

    invoke-static {p1, p2, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 664
    iget-wide p1, v0, Lcn/nubia/gallery3d/data/LocalImage;->latitude:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 665
    iget-wide p1, v0, Lcn/nubia/gallery3d/data/LocalImage;->longitude:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 667
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private saveMedia(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 584
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    const/16 v5, 0x3e8

    const-string v6, "CropImage"

    if-ge v3, v5, :cond_1

    .line 586
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to create new file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 592
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 591
    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 596
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    .line 600
    invoke-virtual {v4, v1, p3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 601
    invoke-virtual {v4, v1, p3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 604
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :try_start_2
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p4

    .line 606
    invoke-direct {p0, p1, p2, p4, p3}, Lcn/nubia/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 618
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 619
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-object v2

    :cond_2
    return-object v4

    :catchall_0
    move-exception p1

    .line 609
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 610
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to save image: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 613
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 612
    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-object v2

    .line 597
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot create file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private savePic(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lockwallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lockwallpaper.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1309
    invoke-virtual {v0, v3, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1310
    invoke-virtual {v0, v3, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1313
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1315
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1316
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1317
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1319
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1320
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1325
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1323
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveToMediaProvider(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1

    .line 627
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->saveLocalImage(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 630
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->saveGenericImage(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private setActionBarDoneButton(Z)V
    .locals 5

    .line 1333
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getAppActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1335
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090057

    .line 1336
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1337
    new-instance v3, Lcn/nubia/gallery3d/app/CropImage$10;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/CropImage$10;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090064

    .line 1345
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1346
    new-instance v3, Lcn/nubia/gallery3d/app/CropImage$11;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/app/CropImage$11;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_2

    const/16 v2, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1356
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 1357
    new-instance p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p1, v3, v4, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1360
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->needToAdjustUI()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 1361
    invoke-virtual {p1, v3, v2, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;->setMargins(IIII)V

    .line 1363
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setAsWallpaper(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 511
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 515
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x5f

    .line 516
    :try_start_1
    invoke-virtual {p2, p1, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    .line 519
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    if-eqz p1, :cond_1

    .line 520
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/CropImage;->regenerateInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 521
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->setLockWallPaper(Ljava/io/InputStream;)V

    .line 523
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper:Z

    if-eqz p1, :cond_2

    .line 524
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/CropImage;->regenerateInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 525
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    if-eqz p1, :cond_2

    .line 527
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 535
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 531
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 535
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 538
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 540
    :cond_3
    :goto_3
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mNoCrop:Z

    const/4 p1, 0x1

    return p1

    :goto_4
    if-eqz v1, :cond_4

    .line 535
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 538
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 540
    :cond_4
    :goto_5
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mNoCrop:Z

    .line 541
    throw p1
.end method

.method private setCropParameters()V
    .locals 6

    .line 1017
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "aspectX"

    const/4 v2, 0x0

    .line 1020
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "aspectY"

    .line 1021
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 1023
    iget-object v4, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/ui/CropView;->setAspectRatio(F)V

    :cond_1
    const-string v1, "spotlightX"

    const/4 v3, 0x0

    .line 1026
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v4, "spotlightY"

    .line 1027
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_2

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2

    .line 1029
    iget-object v3, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v3, v1, v4}, Lcn/nubia/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    :cond_2
    const-string v1, "set-as-wallpaper"

    .line 1032
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/CropView;->setWallpaperFlag(Z)V

    :cond_3
    return-void
.end method

.method private setLockWallPaper(Ljava/io/InputStream;)V
    .locals 7

    .line 547
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setLockScreenStream"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 549
    const-class v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 550
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 556
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 552
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 556
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 560
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :goto_1
    if-eqz p1, :cond_1

    .line 556
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 560
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :cond_1
    :goto_2
    throw v0
.end method

.method private showSetAsDialog()V
    .locals 7

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 296
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/app/CropImage$3;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/CropImage$3;-><init>(Lcn/nubia/gallery3d/app/CropImage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f10004e

    .line 323
    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$4;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CropImage$4;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createCTA(II)V
    .locals 3

    .line 1373
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsSupportCTADialog:Z

    if-nez p1, :cond_0

    return-void

    .line 1376
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1377
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1378
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getPermissionDialog()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1383
    :cond_2
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const p2, 0x7f1100b4

    invoke-direct {p1, p0, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 1387
    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 1388
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1389
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 1390
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f0c004f

    .line 1392
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(I)V

    const v0, 0x7f090073

    .line 1393
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090065

    .line 1394
    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090115

    .line 1395
    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 1399
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1400
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    if-eqz v1, :cond_3

    .line 1402
    new-instance p2, Lcn/nubia/gallery3d/app/CropImage$12;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/app/CropImage$12;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 1410
    new-instance p2, Lcn/nubia/gallery3d/app/CropImage$13;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/app/CropImage$13;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    .line 379
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper:Z

    .line 380
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 195
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 199
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 201
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c002e

    .line 202
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/CropImage;->setContentView(I)V

    const v1, 0x7f090152

    .line 203
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->setButton:Landroid/widget/Button;

    .line 204
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 206
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 208
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->setButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->setButton:Landroid/widget/Button;

    new-instance v1, Lcn/nubia/gallery3d/app/CropImage$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/CropImage$1;-><init>(Lcn/nubia/gallery3d/app/CropImage;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0c002d

    .line 218
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/CropImage;->setContentView(I)V

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/CropImage;->setActionBarDoneButton(Z)V

    .line 221
    :goto_1
    new-instance p1, Lcn/nubia/gallery3d/ui/CropView;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/CropView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    .line 222
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/ui/GLRoot;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 224
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sput-object p1, Lcn/nubia/gallery3d/app/CropImage;->extra:Landroid/os/Bundle;

    .line 225
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "wallpapertaskinfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getAppActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 228
    sget-object v2, Lcn/nubia/gallery3d/app/CropImage;->extra:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string v3, "issavedata"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    const p1, 0x7f100293

    .line 230
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 231
    :cond_2
    sget-object p1, Lcn/nubia/gallery3d/app/CropImage;->extra:Landroid/os/Bundle;

    const v2, 0x7f1001f7

    if-eqz p1, :cond_3

    const-string v3, "is_launcher_start"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 233
    :cond_3
    sget-object p1, Lcn/nubia/gallery3d/app/CropImage;->extra:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v3, "set-as-wallpaper"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 236
    :cond_4
    :goto_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 239
    :cond_5
    new-instance p1, Lcn/nubia/gallery3d/app/CropImage$2;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcn/nubia/gallery3d/app/CropImage$2;-><init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 279
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->setCropParameters()V

    .line 281
    invoke-virtual {p0, v0, v0}, Lcn/nubia/gallery3d/app/CropImage;->createCTA(II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1184
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1185
    iput-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mSaveTask:Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f090064

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090139

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetLockscreen:Z

    .line 368
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/CropImage;->isSetWallpaper:Z

    .line 369
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/app/CropImage;->setResult(I)V

    .line 363
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    :goto_0
    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 1139
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1140
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mTileAdapter:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 1143
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 1144
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1147
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    .line 1148
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mLoadBitmapTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 1153
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1155
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1156
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    .line 1157
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mSaveTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 1162
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1165
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1167
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 1168
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1170
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1171
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1173
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    if-eqz v1, :cond_4

    .line 1178
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 1175
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1176
    throw v1
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsSupportCTADialog:Z

    .line 1100
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->showPermissionDialog:Z

    .line 1101
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 1102
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsSupportCTADialog:Z

    .line 1103
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getPermissionDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsShowCTADialog:Z

    .line 1104
    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsSupportCTADialog:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 1110
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1115
    :cond_1
    :goto_0
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1118
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->initializeData()V

    .line 1120
    :goto_1
    iget v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcn/nubia/gallery3d/app/CropImage;->onSaveClicked()V

    .line 1123
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/CropImage;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1124
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage;->mCropView:Lcn/nubia/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1131
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mIsShowCTADialog:Z

    if-nez v0, :cond_4

    .line 1132
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    :cond_4
    const/4 v0, 0x1

    .line 1134
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/CropImage;->showPermissionDialog:Z

    return-void

    :catchall_0
    move-exception v1

    .line 1128
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1129
    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 342
    iget v0, p0, Lcn/nubia/gallery3d/app/CropImage;->mState:I

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
