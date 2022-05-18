.class public Lcn/nubia/gallery3d/app/WallpaperCropActivity;
.super Landroid/app/Activity;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;,
        Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final LOGTAG:Ljava/lang/String; = "Launcher3.CropActivity"

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field protected static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field protected static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"


# instance fields
.field protected mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "png"

    .line 826
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method protected static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 4

    .line 230
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 231
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 232
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 234
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 235
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 238
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 239
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 240
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_1

    int-to-float p0, v1

    .line 249
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->wallpaperTravelToScreenWidthRatio(II)F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 252
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 255
    :goto_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "jpg"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 833
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "png"

    .line 834
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method protected static getMaxCropRect(IIIIZ)Landroid/graphics/RectF;
    .locals 5

    .line 805
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float p0, p0

    int-to-float p1, p1

    div-float v1, p0, p1

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v2, p2, p3

    cmpl-float v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 808
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 809
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    sub-float p1, p0, v2

    div-float/2addr p1, v3

    .line 810
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 811
    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    if-eqz p4, :cond_1

    .line 813
    iget p0, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 814
    iput v4, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 817
    :cond_0
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 818
    iput p0, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr p3, p2

    mul-float/2addr p3, p0

    sub-float p0, p1, p3

    div-float/2addr p0, v3

    .line 819
    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 820
    iget p0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-static {v0, v0, v1, p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public static getRotationFromExif(Landroid/content/res/Resources;I)I
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-static {v0, p0, p1, v0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public static getRotationFromExif(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v0, v1, v0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method private static getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I
    .locals 3

    .line 272
    new-instance v0, Lcn/nubia/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcn/nubia/gallery3d/exif/ExifInterface;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 277
    :try_start_0
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    .line 279
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 281
    :try_start_2
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 283
    :cond_1
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    :try_start_4
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 285
    :try_start_5
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    move-object v1, p1

    .line 287
    :goto_1
    :try_start_6
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-static {p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 294
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 295
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p1

    .line 294
    :cond_2
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 295
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p0

    move-object p0, p2

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v1, p1

    move-object p1, p0

    move-object p0, p2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_2
    :try_start_7
    const-string p2, "Launcher3.CropActivity"

    const-string p3, "Getting exif data failed"

    .line 292
    invoke-static {p2, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 294
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 295
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    const/4 p0, 0x0

    return p0

    :catchall_3
    move-exception p0

    .line 294
    :goto_4
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 295
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 296
    throw p0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .line 199
    const-class v0, Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 1

    .line 346
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 347
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x2d0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V
    .locals 1

    .line 791
    invoke-static {p0, p2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object p0

    .line 793
    new-instance p2, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;

    const-string v0, "suggestWallpaperDimension"

    invoke-direct {p2, v0, p1, p0, p3}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/graphics/Point;Landroid/app/WallpaperManager;)V

    .line 800
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->start()V

    return-void
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3e9d89d7

    mul-float/2addr p0, p1

    const p1, 0x3f80fc10

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected cropImageAndSetWallpaper(Landroid/content/res/Resources;IZ)V
    .locals 12

    .line 323
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v5

    .line 324
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 325
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v1

    .line 327
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v11, 0x0

    invoke-static {v2, v0, v3, v4, v11}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v4

    .line 329
    new-instance v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;

    invoke-direct {v10, p0, p3}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Z)V

    .line 340
    new-instance p3, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    new-array p1, v11, [Ljava/lang/Void;

    .line 342
    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected cropImageAndSetWallpaper(Landroid/net/Uri;Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p2

    .line 353
    iget-object v0, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v12

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 358
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 359
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 360
    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v12

    .line 362
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 363
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 362
    invoke-static {v3, v4}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v3

    .line 365
    iget-object v4, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v4}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getCrop()Landroid/graphics/RectF;

    move-result-object v4

    .line 366
    iget-object v5, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v5}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getImageRotation()I

    move-result v5

    .line 367
    iget-object v6, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v6}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    .line 369
    iget-object v7, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v7}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v7

    .line 370
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v9, v5

    .line 371
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v9, 0x2

    new-array v9, v9, [F

    .line 372
    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    aput v13, v9, v12

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    aput v7, v9, v1

    .line 373
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 374
    aget v7, v9, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v9, v12

    .line 375
    aget v7, v9, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v9, v1

    if-eqz v0, :cond_2

    .line 380
    aget v0, v9, v12

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v7

    goto :goto_2

    :cond_2
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 382
    :goto_2
    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    .line 383
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 390
    iget v7, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v0

    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 391
    iget v7, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v0

    iput v7, v4, Landroid/graphics/RectF;->left:F

    if-eqz v2, :cond_3

    .line 394
    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 396
    :cond_3
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 397
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    .line 398
    aget v1, v9, v1

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, v4, Landroid/graphics/RectF;->top:F

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 401
    iget v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 402
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 404
    :goto_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 405
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 407
    new-instance v9, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;

    move/from16 v2, p3

    invoke-direct {v9, p0, v0, v1, v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;IIZ)V

    .line 416
    iget-object v0, v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getCrop()Landroid/graphics/RectF;

    move-result-object v3

    .line 419
    new-instance v13, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v9}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    if-eqz v11, :cond_4

    .line 426
    invoke-virtual {v13, v11}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->setOnBitmapCropped(Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;)V

    :cond_4
    new-array v0, v12, [Ljava/lang/Void;

    .line 428
    invoke-virtual {v13, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public enableRotation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 4

    const v0, 0x7f0c0075

    .line 96
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setContentView(I)V

    const v0, 0x7f090075

    .line 98
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/improve/photos/views/CropViewWallpaper;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    .line 100
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Launcher3.CropActivity"

    const-string v1, "No URI passed in intent, exiting WallpaperCropActivity"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f090152

    .line 123
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 124
    new-instance v2, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v1, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;

    const/16 v2, 0x400

    invoke-direct {v1, p0, v0, v2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 138
    new-instance v0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setCropViewTileSource(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->init()V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->enableRotation()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public setCropViewTileSource(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
    .locals 10

    const v0, 0x7f0900e6

    .line 155
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    new-instance v9, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;Landroid/view/View;Landroid/content/Context;ZZLjava/lang/Runnable;)V

    .line 183
    new-instance p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;

    invoke-direct {p1, p0, v9, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V

    const-wide/16 p2, 0x3e8

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 190
    invoke-virtual {v9, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected setWallpaper(Ljava/lang/String;Z)V
    .locals 11

    .line 301
    invoke-static {p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getRotationFromExif(Ljava/lang/String;)I

    move-result v4

    .line 302
    new-instance v10, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 304
    invoke-virtual {v10}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object p1

    .line 305
    new-instance v0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;-><init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/graphics/Point;Z)V

    .line 314
    invoke-virtual {v10, v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->setOnEndRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 315
    invoke-virtual {v10, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->setNoCrop(Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 316
    invoke-virtual {v10, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateWallpaperDimensions(II)V
    .locals 4

    .line 771
    invoke-static {}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 772
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 773
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wallpaper.height"

    const-string v3, "wallpaper.width"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 775
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 776
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 778
    :cond_0
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 781
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 784
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 783
    invoke-static {p1, v0, p2, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V

    return-void
.end method
