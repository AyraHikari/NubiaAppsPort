.class public Lcn/nubia/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;,
        Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "cn.nubia.gallery3d.action.DELETE_PICTURE"

.field public static final FORCETOUCH_DATA_CAMERA:I = 0x1

.field public static final FORCETOUCH_DATA_MARK:I = 0x2

.field public static final FORCETOUCH_DATA_SNAPSHOT:I = 0x3

.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_ALL_AND_NEW_FOLDER:I = 0x43

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_ALL_SHOWN:I = 0x20

.field public static final INCLUDE_LOCAL_ALL_SHOWN_IMAGE:I = 0x21

.field public static final INCLUDE_LOCAL_ALL_SHOWN_VIDEO:I = 0x22

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_NEW_FOLDER:I = 0x40

.field public static final INCLUDE_NUBIA_CLOUD:I = 0x8

.field public static final INCLUDE_NUBIA_CLOUD_TOP:I = 0x10

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final KEY_FORCETOUCH_DATA_TYPE:Ljava/lang/String; = "DataType"

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/local/image}"

.field private static final TOP_IMAGE_SET_PATH_NOCLOUD:Ljava/lang/String; = "/combo/{/local/image}"

.field private static final TOP_LOCAL_IMAGE_PATH_SHOWN:Ljava/lang/String; = "/local/image_shown"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_SET_PATH_SHOWN:Ljava/lang/String; = "/local/all_shown"

.field private static final TOP_LOCAL_VIDEO_PATH_SHOWN:Ljava/lang/String; = "/local/video_shown"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_NUBIA_CLOUD_SET_PATH:Ljava/lang/String; = "/nubiacloud/all/cloud"

.field private static final TOP_NUBIA_CLOUD_TOPSET_PATH:Ljava/lang/String; = "/nubiacloud/all"

.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/local/all}"

.field private static final TOP_SET_PATH_AND_NEW_FOLDER:Ljava/lang/String; = "/combo/{/fake/newfolder,/local/all}"

.field private static final TOP_SET_PATH_NOCLOUD:Ljava/lang/String; = "/combo/{/local/all}"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video}"

.field private static final URI_FILE_ID:I = 0x1

.field private static final URI_FILE_NOID:I = 0x0

.field private static final URI_IMAGE_ID:I = 0x3

.field private static final URI_IMAGE_NOID:I = 0x2

.field private static final URI_VIDEO_ID:I = 0x5

.field private static final URI_VIDEO_NOID:I = 0x4

.field private static mOrderASC:Z

.field private static mThingsShow:Z

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mHanlderThread:Landroid/os/HandlerThread;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcn/nubia/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcn/nubia/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 466
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "media"

    const-string v3, "/external/file"

    .line 467
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "/external/file/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "/external/images/media"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "/external/images/media/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 471
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "/external/video/media"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "/external/video/media/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 129
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mHanlderThread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mHanlderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 135
    invoke-static {p1}, Lcn/nubia/gallery3d/data/DataManager;->getSortSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mOrderASC:Z

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getVisibility(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcn/nubia/gallery3d/data/DataManager;->mThingsShow:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/data/DataManager;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/data/DataManager;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static getSortSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sort"

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "sort_value"

    const-string v1, "asc"

    .line 529
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVisibility(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "thingsAlbumSet"

    const/4 v1, 0x0

    .line 551
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "visibility_value"

    const-string v1, "gone"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isSortByASC()Z
    .locals 1

    .line 513
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mOrderASC:Z

    return v0
.end method

.method public static isThingsAlbumSetVisible()Z
    .locals 1

    .line 538
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mThingsShow:Z

    return v0
.end method

.method public static setSort(Lcn/nubia/gallery3d/app/GalleryContext;Z)V
    .locals 1

    .line 517
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mOrderASC:Z

    if-eq v0, p1, :cond_1

    .line 518
    sput-boolean p1, Lcn/nubia/gallery3d/data/DataManager;->mOrderASC:Z

    .line 519
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 520
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mOrderASC:Z

    if-eqz v0, :cond_0

    const-string v0, "asc"

    goto :goto_0

    :cond_0
    const-string v0, "desc"

    :goto_0
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->setSortSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryContext;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    .line 522
    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    :cond_1
    return-void
.end method

.method private static setSortSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sort"

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 534
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sort_value"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setThingsAlbumSetVisibility(Lcn/nubia/gallery3d/app/GalleryContext;Z)V
    .locals 1

    .line 542
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mThingsShow:Z

    if-eq v0, p1, :cond_1

    .line 543
    sput-boolean p1, Lcn/nubia/gallery3d/data/DataManager;->mThingsShow:Z

    .line 544
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 545
    sget-boolean v0, Lcn/nubia/gallery3d/data/DataManager;->mThingsShow:Z

    if-eqz v0, :cond_0

    const-string v0, "visible"

    goto :goto_0

    :cond_0
    const-string v0, "gone"

    :goto_0
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->setVisibility(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryContext;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    :cond_1
    return-void
.end method

.method private static setVisibility(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "thingsAlbumSet"

    const/4 v1, 0x0

    .line 556
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "visibility_value"

    .line 557
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public addSource(Lcn/nubia/gallery3d/data/MediaSource;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public broadcastLocalDeletion()V
    .locals 2

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public delete(Lcn/nubia/gallery3d/data/Path;)V
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaObject;->delete()V

    .line 339
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirty()V

    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 357
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaSource;

    .line 358
    invoke-virtual {v2, p1, p2}, Lcn/nubia/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    return-object v0

    .line 370
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSource;

    if-nez v1, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/MediaSource;->getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getForceTouchData(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/nubia/gallery3d/data/FavorAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getForceTouchMarkData()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/data/FavorAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 220
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    .line 221
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isMergedAlbum(I)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 5

    .line 256
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaSource;

    const/4 v1, 0x0

    const-string v2, "DataManager"

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find media source for path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 267
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/MediaSource;->createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create media object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in creating media object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getMediaObject(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 0

    .line 279
    invoke-static {p1}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1
.end method

.method public getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcn/nubia/gallery3d/data/MediaSet;
    .locals 4

    .line 291
    invoke-static {p1}, Lcn/nubia/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 292
    array-length v0, p1

    .line 293
    new-array v1, v0, [Lcn/nubia/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 295
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getMediaType(Lcn/nubia/gallery3d/data/Path;)I
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaObject;->getMediaType()I

    move-result p1

    return p1
.end method

.method public getSupportedOperations(Lcn/nubia/gallery3d/data/Path;)J
    .locals 2

    .line 334
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 162
    iget-object v2, v0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "/combo/{/fake/newfolder,/local/all}"

    const-string v4, "/local/image_shown"

    const-string v5, "/local/all"

    const-string v6, "/local/video"

    const-string v7, "/local/image"

    const-string v8, "/combo/{/local/all}"

    const-string v9, "/combo/{/local/video}"

    const-string v10, "/combo/{/local/image}"

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v16, "/local/all_shown"

    if-eqz v2, :cond_9

    if-eq v1, v12, :cond_8

    if-eq v1, v11, :cond_7

    if-eq v1, v15, :cond_6

    if-eq v1, v14, :cond_5

    if-eq v1, v13, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x43

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    return-object v16

    :pswitch_1
    return-object v4

    :pswitch_2
    return-object v16

    :cond_0
    return-object v3

    :cond_1
    const-string v1, "/nubiacloud/all"

    return-object v1

    :cond_2
    const-string v1, "/nubiacloud/all/cloud"

    return-object v1

    :cond_3
    return-object v5

    :cond_4
    return-object v6

    :cond_5
    return-object v7

    :cond_6
    return-object v8

    :cond_7
    return-object v9

    :cond_8
    return-object v10

    :cond_9
    if-eq v1, v12, :cond_10

    if-eq v1, v11, :cond_f

    if-eq v1, v15, :cond_e

    if-eq v1, v14, :cond_d

    if-eq v1, v13, :cond_c

    const/4 v2, 0x7

    if-eq v1, v2, :cond_b

    const/16 v2, 0x43

    if-eq v1, v2, :cond_a

    packed-switch v1, :pswitch_data_1

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_3
    return-object v16

    :pswitch_4
    return-object v4

    :pswitch_5
    return-object v16

    :cond_a
    return-object v3

    :cond_b
    return-object v5

    :cond_c
    return-object v6

    :cond_d
    return-object v7

    :cond_e
    return-object v8

    :cond_f
    return-object v9

    :cond_10
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 5

    .line 387
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/MediaSource;

    .line 388
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getTotalUsedCacheSize()J
    .locals 5

    .line 377
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/MediaSource;

    .line 378
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lcn/nubia/cloud/ui/CloudSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/ui/CloudSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 147
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/data/LocalSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 148
    new-instance v0, Lcn/nubia/gallery3d/data/ComboSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/ComboSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 149
    new-instance v0, Lcn/nubia/gallery3d/data/FilterSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/FilterSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 150
    new-instance v0, Lcn/nubia/gallery3d/data/UriSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/UriSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 151
    new-instance v0, Lcn/nubia/gallery3d/data/CameraSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/CameraSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 152
    new-instance v0, Lcn/nubia/gallery3d/data/FakeSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/FakeSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 153
    new-instance v0, Lcn/nubia/gallery3d/data/MultiShootSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/MultiShootSource;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->addSource(Lcn/nubia/gallery3d/data/MediaSource;)V

    .line 154
    iget v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSource;

    .line 156
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 311
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    if-eqz v3, :cond_1

    .line 313
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    new-instance v4, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    add-int v6, v2, p3

    invoke-direct {v4, v3, v6}, Lcn/nubia/gallery3d/data/MediaSource$PathId;-><init>(Lcn/nubia/gallery3d/data/Path;I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaSource;

    .line 328
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p2}, Lcn/nubia/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public notifyDirty()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;

    const/4 v2, 0x0

    .line 438
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->onChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDirtyWithRecycledAlbum()V
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recycled/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/RecycledAlbum;->notifyDirty()V

    .line 447
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/RecycledAlbum;->notifyContentChanged()V

    .line 449
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->notifyDirty()V

    .line 452
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->notifyContentChanged()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 419
    iget v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSource;

    .line 421
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 0

    .line 252
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    return-object p1
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V

    return-void
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3, p1}, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;-><init>(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 403
    iget-object v2, p0, Lcn/nubia/gallery3d/data/DataManager;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    iget-object v2, p0, Lcn/nubia/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v1, p2, p3}, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 2

    .line 411
    iget v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mActiveCount:I

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSource;

    .line 413
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rotate(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/MediaObject;->rotate(I)V

    return-void
.end method
