.class public Lcn/nubia/gallery3d/data/UriImage;
.super Lcn/nubia/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/UriImage$SaveImage;,
        Lcn/nubia/gallery3d/data/UriImage$BitmapJob;,
        Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-static {}, Lcn/nubia/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcn/nubia/gallery3d/data/UriImage;->mState:I

    .line 74
    iput-object p3, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 75
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 76
    iput-object p4, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcn/nubia/improve/drm/DrmUtil;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/improve/drm/DrmUtil;->isProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mIsProtected:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/UriImage;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/UriImage;)Landroid/net/Uri;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/data/UriImage;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/data/UriImage;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage;->prepareInputFile(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/data/UriImage;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mState:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/data/UriImage;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getMimeType(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/improve/drm/DrmUtil;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mIsProtected:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lcn/nubia/improve/drm/DrmUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getOrientation(Ljava/io/InputStream;)I
    .locals 2

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 440
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/io/InputStream;)I

    move-result p1

    return p1

    .line 442
    :cond_0
    invoke-static {p1}, Lcn/nubia/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method private insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 5

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 411
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 413
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    .line 414
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date_modified"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_added"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "_size"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private isSetSable()Z
    .locals 2

    .line 284
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSharable()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage;->openOrDownloadInner(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)I

    move-result p1

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iput p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 113
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private openOrDownloadInner(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)I
    .locals 7

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "UriImage"

    const/4 v5, -0x1

    if-nez v1, :cond_4

    const-string v1, "android.resource"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "file"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDownloadCache()Lcn/nubia/gallery3d/data/DownloadCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/gallery3d/data/DownloadCache;->download(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    move-result-object v1

    .line 148
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    if-nez v1, :cond_2

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 153
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, v1, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mRotation:I

    .line 156
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 158
    :cond_3
    iget-object p1, v1, Lcn/nubia/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    const-string v0, "download error"

    .line 162
    invoke-static {v4, v0, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    .line 127
    :cond_4
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mRotation:I

    .line 131
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v6, "r"

    .line 134
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 135
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    return v5

    :catch_1
    move-exception p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private prepareInputFile(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4

    .line 169
    new-instance v0, Lcn/nubia/gallery3d/data/UriImage$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/UriImage$1;-><init>(Lcn/nubia/gallery3d/data/UriImage;)V

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 177
    :goto_0
    monitor-enter p0

    .line 178
    :try_start_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 179
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 180
    iput v2, p0, Lcn/nubia/gallery3d/data/UriImage;->mState:I

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 183
    :try_start_1
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 185
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 188
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :catch_0
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 335
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 336
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 340
    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 3

    .line 311
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 312
    iget v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mWidth:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 314
    iget v2, p0, Lcn/nubia/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    .line 317
    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 319
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    .line 321
    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 322
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->extractExifInfo(Lcn/nubia/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 355
    iget v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 4

    .line 275
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/UriImage;->isSetSable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 277
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;-><init>(Lcn/nubia/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/data/UriImage$1;)V

    return-object v0
.end method

.method public requestRenameImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/data/UriImage$BitmapJob;-><init>(Lcn/nubia/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestRenameLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/data/UriImage$1;)V

    return-object v0
.end method

.method public saveUriImage(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/data/UriImage$SaveImage;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/data/UriImage$SaveImage;-><init>(Lcn/nubia/gallery3d/data/UriImage;Ljava/lang/String;)V

    new-instance p1, Lcn/nubia/gallery3d/data/UriImage$2;

    invoke-direct {p1, p0, p2}, Lcn/nubia/gallery3d/data/UriImage$2;-><init>(Lcn/nubia/gallery3d/data/UriImage;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    return-void
.end method
