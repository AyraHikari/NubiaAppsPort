.class public Lcn/nubia/gallery3d/data/NoSystemAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "NoSystemAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;
.implements Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumsLoader;,
        Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/gallery3d/data/MediaSet;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Ljava/util/ArrayList<",
        "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
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
            "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
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
            "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
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

    .line 29
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 30
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 87
    invoke-static {}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    iput-object p2, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {p1}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mType:I

    .line 91
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 92
    new-instance p1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 94
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->registerListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    .line 96
    iput p3, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mBucketId:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->loadBucketEntries(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mType:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method private fakeChange()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method private getLocalAlbum(Lcn/nubia/gallery3d/data/DataManager;ILcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 7

    .line 188
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-virtual {p3, p4}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    .line 190
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
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

    .line 199
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    iget-object p2, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {p1, v2, p2, p4, p5}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_2
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 195
    :cond_3
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getNotSystemAlbumSetSelection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V

    const-string p0, " AND "

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getDataNotLikeWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND ("

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bucket_id NOT IN ("

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketSetString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/util/AlbumPreference;->getAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AND bucket_id NOT IN ("

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeFromPath(Lcn/nubia/gallery3d/data/Path;)I
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    .line 104
    aget-object p0, v0, p0

    invoke-static {p0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 102
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
            "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v6, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->BASE_URI:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    .line 137
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mType:I

    iget-object v3, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->getNotSystemAlbumSetSelection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    move-object v1, v6

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open local database: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoSystemAlbumSet"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    .line 146
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 147
    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->WEIXIN_BUCKET_ID:I

    if-eq v3, v2, :cond_1

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_BUCKET_ID:I

    if-eq v3, v2, :cond_1

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_PICTURES_BUCKET_ID:I

    if-ne v3, v2, :cond_2

    .line 150
    :cond_1
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    .line 152
    :cond_2
    new-instance v3, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;

    const/16 v4, 0xf

    .line 153
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 154
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    throw p1
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .line 131
    iget v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mBucketId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mIsLoading:Z
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

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public onDataUpdate()V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->fakeChange()V

    return-void
.end method

.method public declared-synchronized onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 242
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 247
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 248
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$1;-><init>(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    .line 255
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->onDataUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :cond_2
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

    .line 216
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierImage:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mNotifierVideo:Lcn/nubia/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 217
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 220
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mIsLoading:Z

    .line 221
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumsLoader;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumsLoader;-><init>(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;Lcn/nubia/gallery3d/data/NoSystemAlbumSet$1;)V

    invoke-virtual {v0, v2, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadTask:Lcn/nubia/gallery3d/util/Future;

    .line 222
    invoke-static {}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDataVersion:J

    .line 224
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 225
    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 226
    iput-object v1, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;

    .line 228
    iget-object v1, v1, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$AlbumEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDataVersion:J

    .line 232
    :cond_3
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mDataVersion:J
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

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet$2;-><init>(Lcn/nubia/gallery3d/data/NoSystemAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
