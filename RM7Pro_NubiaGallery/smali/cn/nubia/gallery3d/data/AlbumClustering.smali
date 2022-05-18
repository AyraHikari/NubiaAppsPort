.class public Lcn/nubia/gallery3d/data/AlbumClustering;
.super Lcn/nubia/gallery3d/data/NubiaClustering;
.source "AlbumClustering.java"


# static fields
.field private static final GROUP_BY:Ljava/lang/String; = ") GROUP BY date(datetaken/1000, \'unixepoch\', \'localtime\'"

.field protected static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AlbumClustering"


# instance fields
.field private mAlbum:Lcn/nubia/gallery3d/data/LocalAllAlbum;

.field private mBaseUri:Landroid/net/Uri;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "count(_id)"

    const-string v1, "datetaken"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/AlbumClustering;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/LocalAllAlbum;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/NubiaClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    const-string v0, "external"

    .line 23
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mBaseUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mAlbum:Lcn/nubia/gallery3d/data/LocalAllAlbum;

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 32
    iput-object p2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mAlbum:Lcn/nubia/gallery3d/data/LocalAllAlbum;

    .line 33
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07007e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mHeaderHeight:I

    .line 35
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mDisplayNames:Landroid/util/SparseArray;

    .line 37
    iget-object p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    return-void
.end method


# virtual methods
.method public getTotalCount()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mTotalCount:I

    return v0
.end method

.method protected run()V
    .locals 8

    const-string v0, "Clusters run out  "

    const-string v1, "AlbumClustering"

    .line 41
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mTotalCount:I

    .line 43
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v4, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mAlbum:Lcn/nubia/gallery3d/data/LocalAllAlbum;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getBucketId()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android:query-arg-sql-selection"

    .line 46
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "datetaken ASC"

    goto :goto_0

    :cond_1
    const-string v4, "datetaken DESC"

    :goto_0
    const-string v5, "android:query-arg-sql-sort-order"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android:query-arg-sql-group-by"

    const-string v5, "date(datetaken/1000, \'unixepoch\', \'localtime\')"

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v4, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 52
    iget-object v4, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mBaseUri:Landroid/net/Uri;

    sget-object v6, Lcn/nubia/gallery3d/data/AlbumClustering;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v2, "query fail local album "

    .line 54
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 78
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 61
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 62
    new-instance v7, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-direct {v7, p0, v5, v6, v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;-><init>(Lcn/nubia/gallery3d/data/NubiaClustering;JI)V

    .line 63
    iget-object v5, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget v5, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mTotalCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mTotalCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 69
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 70
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    if-eqz v2, :cond_4

    .line 71
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    invoke-interface {v2}, Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;->onDone()V

    .line 73
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

    if-eqz v2, :cond_5

    .line 74
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

    invoke-interface {v2}, Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;->onCompeleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :cond_5
    iget-object v2, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 78
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    .line 67
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 68
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 77
    iget-object v3, p0, Lcn/nubia/gallery3d/data/AlbumClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 78
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    throw v2
.end method
