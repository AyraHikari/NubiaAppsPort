.class public Lcn/nubia/gallery3d/data/CollectAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "CollectAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;,
        Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/gallery3d/data/MediaSet;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
        ">;>;",
        "Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;"
    }
.end annotation


# static fields
.field public static final BUCKET_ORDER_BY:Ljava/lang/String; = "bucket_display_name ASC"

.field private static final TAG:Ljava/lang/String; = "NoSystemAlbumSet"

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mBucketId:I

.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 118
    invoke-static {}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    iput-object p2, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mType:I

    .line 122
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 123
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 125
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 127
    iput p3, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mBucketId:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/CollectAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/CollectAlbumSet;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mType:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method private fakeChange()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 293
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public static getAlbumSetCollection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND ("

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bucket_id IN ("

    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ONLY_CAMERA_BUCKET_IDS:Ljava/util/List;

    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AND bucket_id NOT IN ("

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataLikeWhereClause()Ljava/lang/String;
    .locals 6

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xd

    .line 392
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumPathsByIndex(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 397
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 398
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 399
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_data"

    .line 400
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/%\'"

    .line 402
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, " OR "

    .line 404
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 7

    .line 236
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-virtual {p3, p4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    .line 238
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 241
    :cond_0
    sget p1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne p4, p1, :cond_1

    .line 242
    new-instance p1, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    iget-object p2, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, v2, p2, p4, p5}, Lcn/nubia/gallery3d/data/MultiShootAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 250
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    iget-object p2, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, v2, p2, p4, p5}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 252
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 246
    :cond_4
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getStarRailConverMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;
    .locals 6

    .line 337
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 339
    invoke-static {}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getStarRailSelectionMulti()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android:query-arg-sql-selection"

    .line 341
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 344
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:query-arg-sql-sort-order"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "android:query-arg-sql-group-by"

    const-string v3, "bucket_id"

    .line 346
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v4

    .line 351
    :cond_2
    :try_start_0
    new-instance v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    invoke-direct {v1, p1, p2}, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 353
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v2, 0x7

    .line 354
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 359
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 362
    sget-object v2, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, p2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, p1

    move-object p1, p2

    goto :goto_0

    :cond_4
    move-object p1, v4

    :goto_0
    if-nez p1, :cond_5

    .line 377
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v4

    .line 370
    :cond_5
    :try_start_1
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p2

    .line 369
    invoke-static {p1, v0, p2, p0, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    .line 371
    iput-object p0, v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    iput p0, v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    .line 377
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 378
    throw p0
.end method

.method public static getStarRailSelectionMulti()Ljava/lang/String;
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 384
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string v1, " AND ("

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getDataLikeWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 132
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    .line 135
    aget-object p0, v0, p0

    invoke-static {p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 169
    sget-object v6, Lcn/nubia/gallery3d/data/CollectAlbumSet;->BASE_URI:Landroid/net/Uri;

    .line 170
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 171
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mType:I

    iget-object v3, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getAlbumSetCollection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    move-object v1, v6

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "NoSystemAlbumSet"

    if-nez v0, :cond_0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open local database: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 179
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    .line 181
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getMergedBucketId(I)I

    move-result v3

    .line 182
    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->WEIXIN_BUCKET_ID:I

    if-eq v4, v3, :cond_1

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_BUCKET_ID:I

    if-eq v4, v3, :cond_1

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_PICTURES_BUCKET_ID:I

    if-ne v4, v3, :cond_2

    .line 185
    :cond_1
    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    .line 187
    :cond_2
    new-instance v4, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    const/16 v5, 0xf

    .line 188
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 189
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    .line 191
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 197
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->addFictitiousAlbums(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v3, "loadBucketEntries error!"

    .line 199
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 202
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    throw p1
.end method


# virtual methods
.method public addFictitiousAlbums(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    const-string v2, "StartTrail"

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getStarRailConverMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 165
    iget v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mBucketId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 140
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyDirty()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public onDataUpdate()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->fakeChange()V

    return-void
.end method

.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v0, p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 74
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 75
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/gallery3d/data/CollectAlbumSet$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet$1;-><init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 82
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->onDataUpdate()V

    :cond_2
    return-void
.end method

.method public declared-synchronized reload()J
    .locals 4

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 268
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 271
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mIsLoading:Z

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;Lcn/nubia/gallery3d/data/CollectAlbumSet$1;)V

    invoke-virtual {v0, v2, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 273
    invoke-static {}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDataVersion:J

    .line 275
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 276
    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 277
    iput-object v1, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    .line 279
    iget-object v1, v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDataVersion:J

    .line 283
    :cond_3
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateUI()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 300
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/gallery3d/data/CollectAlbumSet$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet$2;-><init>(Lcn/nubia/gallery3d/data/CollectAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
