.class public abstract Lcn/nubia/gallery3d/data/MediaSet;
.super Lcn/nubia/gallery3d/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;,
        Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;,
        Lcn/nubia/gallery3d/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final BUCKET_ORDER_BY:Ljava/lang/String; = "bucket_display_name ASC"

.field private static final FUTURE_STUB:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field protected static final INVALID_COUNT:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x64

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"

.field protected static final WATCH_URIS:[Landroid/net/Uri;

.field protected static final WATCH_URIS1:[Landroid/net/Uri;

.field protected static final WATCH_URI_IMAGE:Landroid/net/Uri;

.field protected static final WATCH_URI_VIDEO:Landroid/net/Uri;

.field private static mBucketEntries:[Lcn/nubia/gallery3d/data/BucketHelper$BucketEntry;


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/nubia/gallery3d/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URI_IMAGE:Landroid/net/Uri;

    .line 57
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v1, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URI_VIDEO:Landroid/net/Uri;

    const-string v2, "external"

    .line 58
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/data/MediaSet;->BASE_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 59
    sput-object v3, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URIS:[Landroid/net/Uri;

    new-array v0, v0, [Landroid/net/Uri;

    aput-object v2, v0, v4

    .line 60
    sput-object v0, Lcn/nubia/gallery3d/data/MediaSet;->WATCH_URIS1:[Landroid/net/Uri;

    .line 282
    new-instance v0, Lcn/nubia/gallery3d/data/MediaSet$1;

    invoke-direct {v0}, Lcn/nubia/gallery3d/data/MediaSet$1;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/data/MediaSet;->FUTURE_STUB:Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;J)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/MediaObject;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 179
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I
    .locals 3

    .line 461
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 462
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    .line 465
    aget-object p0, v0, p0

    invoke-static {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 9

    .line 239
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    const/16 v3, 0x64

    sub-int v4, v0, v2

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 243
    invoke-virtual {p0, v2, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    .line 245
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/MediaItem;

    add-int v8, p2, v2

    add-int/2addr v8, v6

    .line 246
    invoke-interface {p1, v8, v7}, Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcn/nubia/gallery3d/data/MediaItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method protected enumerateTotalMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 5

    .line 258
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 259
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v0

    invoke-virtual {v3, p1, v4}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public enumerateTotalMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 3

    .line 98
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-gez v0, :cond_1

    move v0, v2

    .line 102
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    return-object v0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 107
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 3

    .line 215
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaObject;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 423
    invoke-virtual {p0, v1, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 428
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 429
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v3, "MediaSet"

    const-string v4, "Filepath is null."

    .line 431
    invoke-static {v3, v4}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_1
    new-instance v5, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v5}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 435
    iput-object v4, v5, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 436
    invoke-static {v1, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    const/4 v4, 0x2

    .line 437
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    const/4 v3, 0x3

    .line 438
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    const/4 v3, 0x4

    .line 439
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    const/4 v3, 0x5

    .line 440
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    const/4 v3, 0x6

    .line 441
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    const/16 v3, 0x8

    .line 442
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    .line 444
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    :cond_3
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 448
    throw v0
.end method

.method protected getIndexOf(Lcn/nubia/gallery3d/data/Path;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/Path;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaItem;

    iget-object v2, v2, Lcn/nubia/gallery3d/data/MediaItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 4

    add-int/lit8 p2, p2, -0x32

    const/4 v0, 0x0

    .line 151
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v1, 0x64

    .line 153
    invoke-virtual {p0, p2, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 155
    invoke-virtual {p0, p1, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOf(Lcn/nubia/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr p2, v2

    return p2

    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    .line 160
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    .line 162
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOf(Lcn/nubia/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    if-eq v2, v3, :cond_2

    add-int/2addr v0, v2

    return v0

    .line 164
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p2, v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x64

    .line 166
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPath(II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getSetData(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 393
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSetData(IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSetData(IZ)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->typeToDBColumn(I)Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getCursorByColumn(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    .line 405
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 406
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "MediaSet"

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 414
    :cond_2
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 415
    throw p1
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 123
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/ContentListener;

    .line 205
    invoke-interface {v1}, Lcn/nubia/gallery3d/data/ContentListener;->onContentDirty()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-interface {p1, p0, v0}, Lcn/nubia/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcn/nubia/gallery3d/data/MediaSet;I)V

    .line 279
    sget-object p1, Lcn/nubia/gallery3d/data/MediaSet;->FUTURE_STUB:Lcn/nubia/gallery3d/util/Future;

    return-object p1
.end method

.method protected requestSyncOnMultipleSets([Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            "Lcn/nubia/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet$MultiSetSyncFuture;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)V

    return-object v0
.end method
