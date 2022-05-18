.class public Lcn/nubia/gallery3d/data/CameraClustering;
.super Lcn/nubia/gallery3d/data/NubiaClustering;
.source "CameraClustering.java"


# static fields
.field private static final GROUP_BY:Ljava/lang/String; = ") GROUP BY date(datetaken/1000, \'unixepoch\', \'localtime\'"

.field private static final TAG:Ljava/lang/String; = "CameraClustering"


# instance fields
.field private final mAlbum:Lcn/nubia/gallery3d/data/CameraAlbum;

.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/CameraAlbum;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/NubiaClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    const-string v0, "external"

    .line 24
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mBaseUri:Landroid/net/Uri;

    .line 30
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 31
    iput-object p2, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mAlbum:Lcn/nubia/gallery3d/data/CameraAlbum;

    .line 32
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07007e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    .line 34
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mDisplayNames:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getTotalCount()I
    .locals 1

    .line 90
    iget v0, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mTotalCount:I

    return v0
.end method

.method protected run()V
    .locals 8

    const-string v0, "Clusters run out  "

    .line 40
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mTotalCount:I

    .line 42
    iget-object v2, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    iget-object v3, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mAlbum:Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/CameraAlbum;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android:query-arg-sql-selection"

    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "datetaken ASC"

    goto :goto_0

    :cond_2
    const-string v3, "datetaken DESC"

    :goto_0
    const-string v4, "android:query-arg-sql-sort-order"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android:query-arg-sql-group-by"

    const-string v4, "date(datetaken/1000, \'unixepoch\', \'localtime\')"

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraClustering"

    const-string v4, "Clusters run in  "

    .line 56
    invoke-static {v3, v4}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    iget-object v4, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 59
    iget-object v4, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mBaseUri:Landroid/net/Uri;

    sget-object v6, Lcn/nubia/gallery3d/data/CameraClustering;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 85
    invoke-static {v3, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 68
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 69
    new-instance v7, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-direct {v7, p0, v5, v6, v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;-><init>(Lcn/nubia/gallery3d/data/NubiaClustering;JI)V

    .line 70
    iget-object v5, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget v5, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mTotalCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mTotalCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    :cond_4
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    if-eqz v1, :cond_5

    .line 78
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    invoke-interface {v1}, Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;->onDone()V

    .line 80
    :cond_5
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

    if-eqz v1, :cond_6

    .line 81
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

    invoke-interface {v1}, Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;->onCompeleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :cond_6
    iget-object v1, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 85
    invoke-static {v3, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 74
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 84
    iget-object v2, p0, Lcn/nubia/gallery3d/data/CameraClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 85
    invoke-static {v3, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    throw v1
.end method
