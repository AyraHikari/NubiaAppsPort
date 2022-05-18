.class public Lcn/nubia/gallery3d/data/LocalVideo;
.super Lcn/nubia/gallery3d/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RESOLUTION:I = 0xc

.field private static final INDEX_SIZE:I = 0xb

.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalVideo"


# instance fields
.field private durationInSec:I

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "/local/video/item"

    .line 53
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "date_added"

    const-string v6, "date_modified"

    const-string v7, "_data"

    const-string v8, "duration"

    const-string v9, "bucket_id"

    const-string v10, "_size"

    const-string v11, "bucket_display_name"

    .line 71
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 87
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    .line 88
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 89
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p2

    .line 90
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 92
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p2, v0, v1, p3}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 97
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 98
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 100
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find data for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 103
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 104
    throw p1

    .line 94
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get cursor for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    .line 81
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    .line 82
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 83
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getDurationInSec(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0xd

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 125
    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 108
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    const/4 v0, 0x1

    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    .line 110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/16 v0, 0x8

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/4 v0, 0x5

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0xa

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketId:I

    const/4 v0, 0x6

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->fileSize:J

    const/4 v0, 0x3

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/16 v0, 0xf

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketName:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavor(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mIsMarked:Z

    const/16 v0, 0xd

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->duration:I

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/LocalVideo;->getDurationInSec(Landroid/database/Cursor;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    .line 120
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/improve/drm/DrmUtil;->isProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mIsProtected:Z

    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x78

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 137
    iput v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->width:I

    .line 138
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LocalVideo"

    .line 140
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 5

    .line 260
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 261
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 262
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    .line 263
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    .line 262
    invoke-virtual {v1, v0, v3, v2}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 265
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->removeCloudTaskRecordByFilePath()V

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .line 275
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 4

    .line 291
    invoke-super {p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 292
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    if-ltz v1, :cond_0

    const/16 v1, 0x8

    .line 294
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 295
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getDurationInSec()I
    .locals 1

    .line 371
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 310
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->height:I

    if-gez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->getResolution()V

    .line 313
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPrivateAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x40b485

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x40a485

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 302
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->width:I

    if-gez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->getResolution()V

    .line 305
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->width:I

    return v0
.end method

.method protected idToCursor(I)Landroid/database/Cursor;
    .locals 3

    .line 363
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 364
    sget-object v1, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 365
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    .line 366
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    return-object p1
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v7, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalVideo;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateAddedInSec:J

    iget-object v6, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v7
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

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    return-void
.end method

.method public setReName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 322
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    if-eq v1, p1, :cond_1

    .line 323
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x2e

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 326
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 333
    iput-object v2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 340
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 341
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const-string v4, "_data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 343
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget v5, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    .line 345
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "_id=?"

    .line 344
    invoke-virtual {p1, v1, v2, v0, v4}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v3

    .line 348
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 349
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10027c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return v0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5

    .line 146
    new-instance v0, Lcn/nubia/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/UpdateHelper;-><init>()V

    .line 147
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    .line 148
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 150
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateTakenInMs:J

    .line 151
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateAddedInSec:J

    .line 152
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    .line 153
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 154
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->duration:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->duration:I

    .line 155
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->durationInSec:I

    .line 156
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketId:I

    .line 157
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->fileSize:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->fileSize:J

    .line 158
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketName:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->bucketName:Ljava/lang/String;

    .line 159
    iget-boolean v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mFakeUnMark:Z

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalVideo;->id:I

    invoke-static {v1, p1, v2}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavor(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/LocalVideo;->mIsMarked:Z

    :cond_0
    const/16 v1, 0xe

    .line 162
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcn/nubia/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result p1

    return p1
.end method
