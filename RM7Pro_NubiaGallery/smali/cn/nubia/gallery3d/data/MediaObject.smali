.class public abstract Lcn/nubia/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_IMAGE_GIF:I = 0x80

.field public static final MEDIA_TYPE_IMAGE_MULTISHOOT:I = 0x8

.field public static final MEDIA_TYPE_IMAGE_MULTISHOOT_STRING:Ljava/lang/String; = "image_multishoot"

.field public static final MEDIA_TYPE_IMAGE_PANORAMA:I = 0x10

.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final SUPPORT_ALL:J = -0x1L

.field public static final SUPPORT_CACHE:J = 0x100L

.field public static final SUPPORT_CROP:J = 0x8L

.field public static final SUPPORT_DELETE:J = 0x1L

.field public static final SUPPORT_DOWNLOAD:J = 0x800000L

.field public static final SUPPORT_EDIT:J = 0x200L

.field public static final SUPPORT_FULL_IMAGE:J = 0x40L

.field public static final SUPPORT_GIF:J = 0x10000L

.field public static final SUPPORT_HIDE:J = -0x80000000L

.field public static final SUPPORT_HIDE_CANCEL:J = 0x1L

.field public static final SUPPORT_IGNORE:J = 0x40000000L

.field public static final SUPPORT_IMPORT:J = 0x800L

.field public static final SUPPORT_INFO:J = 0x400L

.field public static final SUPPORT_JIGSAW:J = 0x20000L

.field public static final SUPPORT_MERGE:J = 0x2L

.field public static final SUPPORT_MORE:J = 0x400000L

.field public static final SUPPORT_MOVE:J = 0x8000L

.field public static final SUPPORT_NO_MOREMENU:J = 0x2000000L

.field public static final SUPPORT_PLAY:J = 0x80L

.field public static final SUPPORT_PRIVATE:J = 0x1000L

.field public static final SUPPORT_RECOVER:J = 0x8000000L

.field public static final SUPPORT_RENAME:J = 0x2000L

.field public static final SUPPORT_ROTATE:J = 0x2L

.field public static final SUPPORT_SAVE:J = 0x200000L

.field public static final SUPPORT_SETAS:J = 0x20L

.field public static final SUPPORT_SETMARKFLAG:J = 0x4000L

.field public static final SUPPORT_SHARE:J = 0x4L

.field public static final SUPPORT_SHIFT:J = 0x10000000L

.field public static final SUPPORT_SHOW_ON_MAP:J = 0x10L

.field public static final SUPPORT_SLIDESHOW:J = 0x20000000L

.field public static final SUPPORT_UPLOAD:J = 0x1000000L

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected final mPath:Lcn/nubia/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;J)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/data/Path;->setObject(Lcn/nubia/gallery3d/data/MediaObject;)V

    .line 94
    iput-object p1, p0, Lcn/nubia/gallery3d/data/MediaObject;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 95
    iput-wide p2, p0, Lcn/nubia/gallery3d/data/MediaObject;->mDataVersion:J

    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "image"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "video"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "all"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string p0, "all"

    return-object p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "video"

    return-object p0

    :cond_2
    const-string p0, "image"

    return-object p0
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 5

    const-class v0, Lcn/nubia/gallery3d/data/MediaObject;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-wide v1, Lcn/nubia/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcn/nubia/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 0

    .line 152
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public delete()V
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 1

    .line 131
    new-instance v0, Lcn/nubia/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/MediaDetails;-><init>()V

    return-object v0
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcn/nubia/gallery3d/data/Path;
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaObject;->mPath:Lcn/nubia/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;
    .locals 1

    .line 180
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotate(I)V
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
