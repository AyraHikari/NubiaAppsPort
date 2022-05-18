.class public Lcn/nubia/gallery3d/data/LocalAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumsLoader;,
        Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;,
        Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/gallery3d/data/MediaSet;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
        ">;>;",
        "Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;"
    }
.end annotation


# static fields
.field public static final BUCKET_GROUP_BY:Ljava/lang/String; = ") GROUP BY bucket_id,(media_type"

.field public static final BUCKET_ORDER_BY:Ljava/lang/String; = "bucket_display_name ASC"

.field public static final PATH_ALL:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

.field protected final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/all"

    .line 48
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/image"

    .line 49
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcn/nubia/gallery3d/data/Path;

    const-string v0, "/local/video"

    .line 50
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 123
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 124
    iput-object p2, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 126
    invoke-static {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    .line 127
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->WATCH_URI_IMAGE:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 128
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->WATCH_URI_VIDEO:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 130
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 131
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 132
    invoke-virtual {p1, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    return-void
.end method

.method static synthetic access$000([Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;I)I
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->findBucket([Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100([Ljava/lang/Object;II)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$200([Ljava/lang/Object;II)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->circularShiftLeft([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/data/LocalAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method private static circularShiftLeft([Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 683
    aget-object v0, p0, p2

    :goto_0
    if-ge p2, p1, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 685
    aget-object v2, p0, v1

    aput-object v2, p0, p2

    move p2, v1

    goto :goto_0

    .line 687
    :cond_0
    aput-object v0, p0, p1

    return-void
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 675
    aget-object v0, p0, p2

    :goto_0
    if-le p2, p1, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 677
    aget-object v1, p0, v1

    aput-object v1, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 679
    :cond_0
    aput-object v0, p0, p1

    return-void
.end method

.method public static createMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 4

    const/4 v0, 0x7

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 234
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 238
    sget-object v0, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 243
    :goto_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    .line 242
    invoke-static {v0, p1, v2, p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static findBucket([Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;I)I
    .locals 3

    .line 316
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 317
    aget-object v2, p0, v1

    iget v2, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getSubCoverMediaItem()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    sget-object v3, Lcn/nubia/gallery3d/data/LocalAlbumSet;->BASE_URI:Landroid/net/Uri;

    .line 772
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubCoverSelection(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "bucket_display_name ASC"

    .line 771
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 779
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 780
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x7

    .line 781
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 786
    sget-object v2, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    .line 789
    sget-object v4, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    if-nez v5, :cond_3

    goto :goto_0

    .line 796
    :cond_3
    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 797
    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 796
    invoke-static {v5, v1, v3, v4, v2}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v2

    const/16 v3, 0xa

    .line 798
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 799
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 802
    :cond_4
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 803
    throw v0
.end method

.method private getSubSetCount()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 864
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    sget-object v3, Lcn/nubia/gallery3d/data/LocalAlbumSet;->BASE_URI:Landroid/net/Uri;

    const-string v1, "bucket_id"

    const-string v4, "COUNT(*)"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    .line 866
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubSetCountSelection(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "bucket_display_name ASC"

    .line 864
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 872
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 873
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 874
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 875
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 878
    :cond_1
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 879
    throw v0
.end method


# virtual methods
.method public CloudLoadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v6, Lcn/nubia/gallery3d/data/LocalAlbumSet;->BASE_URI:Landroid/net/Uri;

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 198
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getCloudLocalAlbumsSelection(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    move-object v1, v6

    .line 197
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open local database: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAlbumSet"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 206
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    .line 207
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getMergedBucketId(I)I

    move-result v2

    .line 208
    new-instance v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    const/16 v4, 0xf

    .line 209
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8

    .line 211
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->dateTanken:J

    .line 212
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget v4, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    iget v3, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    add-int/2addr v4, v3

    iput v4, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    .line 223
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 228
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 226
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->addFictitiousAlbums(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 229
    throw p1
.end method

.method public addFictitiousAlbums(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    const-string v2, "MultiShoot"

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMultiShootConverMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMarkCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getRecycledAlbumCover(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    const-string v2, "nosystem"

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getNotSystemAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    const-string v2, "collection"

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAlbumCollectionSet(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getLocationAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 298
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getFacesAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 302
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 303
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isThingsAlbumSetVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getThingsAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 307
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 308
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method fakeChange()V
    .locals 1

    .line 667
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 668
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public getCloudLocalAlbumsSelection(I)Ljava/lang/String;
    .locals 3

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p1, " AND "

    .line 734
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataNotLikeWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    .line 736
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bucket_id IN ("

    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    sget-object p1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 739
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " OR bucket_id IN ("

    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 7

    .line 570
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-virtual {p3, p4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    .line 572
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 574
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 581
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    iget-object p2, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, v2, p2, p4, p5}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 583
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_2
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 577
    :cond_3
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 584
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLocalAlbumsSelection(I)Ljava/lang/String;
    .locals 3

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p1, " AND "

    .line 710
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataNotLikeWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    .line 712
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bucket_id IN ("

    .line 713
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    sget-object p1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 715
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " OR bucket_id IN ("

    .line 719
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 755
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 756
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubCoverSelection(I)Ljava/lang/String;
    .locals 6

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(SELECT "

    .line 810
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " FROM files JOIN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", MAX("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "datetaken"

    .line 812
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") AS MD"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " FROM files WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p1, " AND "

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataNotLikeWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    .line 815
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bucket_id NOT IN ("

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    sget-object p1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 818
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " OR bucket_id IN ("

    .line 822
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY "

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") GB ON GB.MD=files.datetaken AND GB.bucket_id=files.bucket_id AND (files."

    .line 831
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "media_type"

    .line 832
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " OR files."

    .line 833
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    .line 834
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY files."

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubSetCountSelection(I)Ljava/lang/String;
    .locals 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p1, " AND "

    .line 843
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataNotLikeWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    .line 844
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bucket_id NOT IN ("

    .line 845
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    sget-object p1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 847
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 850
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " OR bucket_id IN ("

    .line 851
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") GROUP BY ("

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "bucket_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 1

    .line 763
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 764
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget p1, p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 589
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v6, Lcn/nubia/gallery3d/data/LocalAlbumSet;->BASE_URI:Landroid/net/Uri;

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 161
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getLocalAlbumsSelection(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    move-object v1, v6

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open local database: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAlbumSet"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 169
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    .line 170
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getMergedBucketId(I)I

    move-result v2

    .line 171
    new-instance v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    const/16 v4, 0xf

    .line 172
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8

    .line 174
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->dateTanken:J

    .line 175
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    iget v4, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    iget v3, v3, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    add-int/2addr v4, v3

    iput v4, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I

    .line 186
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 189
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->addFictitiousAlbums(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    throw p1
.end method

.method public notifyDirty()V
    .locals 3

    .line 641
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public onDataUpdate()V
    .locals 0

    .line 702
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->fakeChange()V

    return-void
.end method

.method public declared-synchronized onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 647
    monitor-exit p0

    return-void

    .line 648
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 649
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 651
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 652
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 657
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/LocalAlbumSet$1;-><init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reload()J
    .locals 4

    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 599
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 601
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 602
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 603
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumsLoader;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;Lcn/nubia/gallery3d/data/LocalAlbumSet$1;)V

    invoke-virtual {v0, v2, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 605
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 606
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 607
    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 608
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 610
    iget-object v1, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 613
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDataVersion:J

    .line 616
    :cond_3
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reloadCloud()J
    .locals 4

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 621
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 624
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 625
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet$CloudAlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;Lcn/nubia/gallery3d/data/LocalAlbumSet$1;)V

    invoke-virtual {v0, v2, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 627
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 628
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 629
    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 630
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    .line 632
    iget-object v1, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 635
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDataVersion:J

    .line 638
    :cond_3
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mDataVersion:J
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

    .line 691
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 692
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/LocalAlbumSet$2;-><init>(Lcn/nubia/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
