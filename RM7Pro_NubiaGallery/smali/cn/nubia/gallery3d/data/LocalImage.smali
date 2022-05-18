.class public Lcn/nubia/gallery3d/data/LocalImage;
.super Lcn/nubia/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$FaceImageRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequestWithoutExif;,
        Lcn/nubia/gallery3d/data/LocalImage$LocalDrmImageRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$LocalVideoRequest;,
        Lcn/nubia/gallery3d/data/LocalImage$MimeType;
    }
.end annotation


# static fields
.field private static final EXIF_APER_DONE:Ljava/lang/String; = "done"

.field private static final EXIF_APER_UNDO:Ljava/lang/String; = "undo"

.field private static final EXIF_TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field private static final EXIF_TYPE_APER:Ljava/lang/String; = "aper"

.field private static final EXIF_TYPE_BPER:Ljava/lang/String; = "bper"

.field private static final EXIF_TYPE_DYNAMICPHOTO:Ljava/lang/String; = "livep"

.field private static final EXIF_TYPE_IMAGE3D:Ljava/lang/String; = "image3d"

.field public static final ITEM_PANO_PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field public static final STATE_COMPLETE:I = 0x2

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocalImage"


# instance fields
.field private dataLoadingState:I

.field private mMediaType:I

.field private mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

.field protected rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/image/item"

    .line 69
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/image/item/panorama"

    .line 70
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PANO_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 98
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    const/4 p2, 0x2

    .line 81
    iput p2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMediaType:I

    .line 84
    sget-object p2, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->DEFAULT:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcn/nubia/gallery3d/data/LocalImage;->dataLoadingState:I

    .line 99
    iget-object p2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p2

    .line 100
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 102
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {p2, v0, v1, p3}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 107
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 108
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 110
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

    .line 113
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 114
    throw p1

    .line 104
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

    .line 93
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    const/4 p1, 0x2

    .line 81
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMediaType:I

    .line 84
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->DEFAULT:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dataLoadingState:I

    .line 94
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/LocalImage;->getExifSourceType(Lcn/nubia/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V

    return-void
.end method

.method private checkMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bmp"

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->BMP:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    goto :goto_0

    :cond_1
    const-string v0, "image/gif"

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".gif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 664
    :cond_2
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->GIF:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    .line 665
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private static getExifSourceType(Lcn/nubia/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V
    .locals 5

    if-eqz p0, :cond_5

    .line 637
    instance-of v0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;

    if-nez v0, :cond_5

    .line 639
    move-object v0, p0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setSourceType(I)V

    const-string v1, "UserComment"

    .line 640
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source type info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalImage"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "aper"

    .line 643
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "undo"

    if-eqz v1, :cond_1

    const/16 v1, 0x1b

    .line 644
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setSourceType(I)V

    .line 645
    check-cast p0, Lcn/nubia/gallery3d/data/LocalImage;

    .line 646
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 645
    :goto_0
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/data/LocalImage;->setDataLoadingState(I)V

    goto :goto_2

    :cond_1
    const-string v1, "bper"

    .line 647
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    check-cast p0, Lcn/nubia/gallery3d/data/LocalImage;

    .line 649
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 648
    :goto_1
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/data/LocalImage;->setDataLoadingState(I)V

    goto :goto_2

    :cond_3
    const-string p0, "image3d"

    .line 650
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1e

    .line 651
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setSourceType(I)V

    goto :goto_2

    :cond_4
    const-string p0, "livep"

    .line 652
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xc

    .line 653
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->setSourceType(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private getRealPathFromUri()Ljava/lang/String;
    .locals 5

    const-string v0, "_data"

    .line 395
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 396
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 397
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v3

    .line 398
    iget v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v3, v2, v1, v4}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 404
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 406
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 411
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 412
    throw v0

    .line 401
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot get cursor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    const/4 v0, 0x1

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const/16 v0, 0x8

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    const/4 v0, 0x5

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    const/16 v0, 0xa

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketId:I

    const/4 v0, 0x6

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->fileSize:J

    const/16 v0, 0xb

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->width:I

    const/16 v0, 0xc

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->height:I

    const/4 v0, 0x3

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateAddedInSec:J

    const/4 v0, 0x4

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateModifiedInSec:J

    const/16 v0, 0xf

    .line 131
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavor(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsMarked:Z

    .line 133
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/improve/drm/DrmUtil;->isProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsProtected:Z

    .line 134
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/data/LocalImage;->checkMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->GIF:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x80

    .line 136
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMediaType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 5

    .line 492
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 493
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalImage;->removeMarkFlag(Z)V

    .line 495
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalImage;->removeCloudTaskRecordByFilePath()V

    .line 496
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    .line 497
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "_id=?"

    .line 496
    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .line 507
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 508
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDataLoadingState()I
    .locals 1

    .line 674
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->dataLoadingState:I

    return v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 3

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->loadPrivacyData(Lcn/nubia/gallery3d/app/GalleryApp;ILandroid/net/Uri;)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 520
    aget v1, v0, v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->latitude:D

    const/4 v1, 0x1

    .line 521
    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->longitude:D

    .line 523
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x7

    .line 524
    iget v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 526
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v2, "image/jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->extractExifInfo(Lcn/nubia/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 544
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->height:I

    return v0
.end method

.method public getItemData(I)Ljava/lang/String;
    .locals 2

    .line 626
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 513
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMediaType:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 534
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 6

    .line 464
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsProtected:Z

    if-nez v0, :cond_0

    const-wide/32 v0, 0x143e66d

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x143e62d

    .line 467
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 471
    :cond_1
    iget-wide v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->latitude:D

    iget-wide v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 475
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPrivateAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    .line 479
    :cond_3
    iget-boolean v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsProtected:Z

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    .line 483
    :cond_4
    sget-object v2, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->DNG:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    if-ne v2, v3, :cond_5

    const-wide/32 v2, -0x1010229

    and-long/2addr v0, v2

    :cond_5
    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 539
    iget v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->width:I

    return v0
.end method

.method protected idToCursor(I)Landroid/database/Cursor;
    .locals 3

    .line 617
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 618
    sget-object v1, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 619
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    .line 620
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    return-object p1
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsProtected:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalDrmImageRequest;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v10, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    iget-object v12, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object v6, v0

    move v9, p1

    invoke-direct/range {v6 .. v12}, Lcn/nubia/gallery3d/data/LocalImage$LocalDrmImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v0

    .line 175
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->BMP:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 176
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequestWithoutExif;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    const/16 v9, 0x8

    iget-wide v10, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    iget-object v12, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequestWithoutExif;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 179
    new-instance v6, Lcn/nubia/gallery3d/data/LocalImage$FaceImageRequest;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/data/LocalImage$FaceImageRequest;-><init>(Lcn/nubia/gallery3d/data/LocalImage;Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;I)V

    return-object v6

    .line 181
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/local/video/multishootitem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalVideoRequest;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v10, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    iget-object v12, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object v6, v0

    move v9, p1

    invoke-direct/range {v6 .. v12}, Lcn/nubia/gallery3d/data/LocalImage$LocalVideoRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v0

    .line 185
    :cond_3
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v7, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcn/nubia/gallery3d/data/LocalImage;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v10, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    iget-object v12, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object v6, v0

    move v9, p1

    invoke-direct/range {v6 .. v12}, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalImage;->isNeedColorSpace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;->setNeedColorSpace(Z)V

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

    .line 428
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsProtected:Z

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

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

    .line 422
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalImage;->getRealPathFromUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 423
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/LocalImage;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    return-object p1
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

    .line 417
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/LocalImage;->getRealPathFromUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 418
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    return-void
.end method

.method public setDataLoadingState(I)V
    .locals 0

    .line 670
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dataLoadingState:I

    return-void
.end method

.method public setReName(Ljava/lang/String;)Z
    .locals 7

    .line 553
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v4, 0x2e

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 553
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eq v0, p1, :cond_1

    .line 556
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 557
    iget-object v5, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 558
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 559
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    .line 566
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 569
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 570
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const-string v5, "_data"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    .line 572
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/String;

    iget v5, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    .line 574
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "_id=?"

    .line 573
    invoke-virtual {p1, v0, v3, v1, v4}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v2

    .line 577
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10027c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return v1
.end method

.method public updateFilePath(Ljava/lang/String;)Z
    .locals 8

    .line 590
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "bucket_id"

    .line 591
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 593
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 594
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 595
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const-string v4, "_data"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 597
    iget v6, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "_id=?"

    invoke-virtual {v3, v0, p1, v6, v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    iget p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v3, v0, v2, p1}, Lcn/nubia/gallery3d/data/LocalAlbum;->getItemCursor(Lcn/nubia/gallery3d/app/ContentProviderProxy;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 604
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 606
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 610
    throw v0

    .line 601
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "cannot get cursor"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5

    .line 142
    new-instance v0, Lcn/nubia/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/UpdateHelper;-><init>()V

    .line 143
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    .line 144
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 146
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    const/16 v3, 0x8

    .line 147
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 146
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateTakenInMs:J

    .line 148
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x3

    .line 149
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 148
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateAddedInSec:J

    .line 150
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x4

    .line 151
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->dateModifiedInSec:J

    .line 152
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 153
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->rotation:I

    .line 155
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketId:I

    .line 156
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->fileSize:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->fileSize:J

    .line 157
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->width:I

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->width:I

    .line 158
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->height:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->height:I

    .line 159
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketName:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->bucketName:Ljava/lang/String;

    .line 160
    iget-boolean v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mFakeUnMark:Z

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v2, p0, Lcn/nubia/gallery3d/data/LocalImage;->id:I

    invoke-static {v1, p1, v2}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavor(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mIsMarked:Z

    .line 163
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcn/nubia/gallery3d/data/LocalImage;->checkMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->GIF:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMimeType:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    if-ne p1, v1, :cond_1

    const/16 p1, 0x80

    .line 165
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalImage;->mMediaType:I

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result p1

    return p1
.end method
