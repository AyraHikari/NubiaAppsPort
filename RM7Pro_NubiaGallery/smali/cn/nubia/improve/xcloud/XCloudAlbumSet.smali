.class public Lcn/nubia/improve/xcloud/XCloudAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "XCloudAlbumSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XCloudAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

.field private mFirstReloadDone:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsLogin:Z

.field private mName:Ljava/lang/String;

.field private mNeedReload:Z

.field private mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 31
    invoke-static {}, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mFirstReloadDone:Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mIsLogin:Z

    .line 27
    iput-boolean p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mNeedReload:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;

    .line 29
    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 32
    iput-object p2, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    const-string p1, "XCloud Albumset"

    .line 33
    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mName:Ljava/lang/String;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    const/16 p2, 0x8

    .line 36
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/ui/CloudAlbumSet;

    iput-object p1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    return-void
.end method

.method private getDefaultAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 91
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->peekMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 95
    :cond_0
    new-instance p1, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;

    invoke-direct {p1, p2, p4}, Lcn/nubia/improve/xcloud/CloudDefaultAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public reload()J
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mFirstReloadDone:Z

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mPath:Lcn/nubia/gallery3d/data/Path;

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->XCLOUD_BUCKET_ID:I

    const-string v3, "xcloud"

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->getDefaultAlbum(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/Path;ILjava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mUnLoginAlbum:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mFirstReloadDone:Z

    .line 87
    :cond_2
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/XCloudAlbumSet;->mDataVersion:J

    return-wide v0
.end method
