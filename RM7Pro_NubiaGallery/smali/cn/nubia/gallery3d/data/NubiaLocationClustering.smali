.class public Lcn/nubia/gallery3d/data/NubiaLocationClustering;
.super Lcn/nubia/gallery3d/data/NubiaClustering;
.source "NubiaLocationClustering.java"


# static fields
.field private static final GROUP_BY:Ljava/lang/String; = " GROUP BY date(datetaken/1000, \'unixepoch\', \'localtime\')"

.field private static final TAG:Ljava/lang/String; = "NubiaLocationClustering"


# instance fields
.field private final mAlbum:Lcn/nubia/gallery3d/data/LocationAlbum;

.field private mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/LocationAlbum;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/NubiaClustering;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    .line 21
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 22
    iput-object p2, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mAlbum:Lcn/nubia/gallery3d/data/LocationAlbum;

    .line 23
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07007e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mHeaderHeight:I

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mDisplayNames:Landroid/util/SparseArray;

    .line 27
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 11

    .line 32
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object v1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mAlbum:Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/LocationAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/LocationAlbum;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GROUP BY date(datetaken/1000, \'unixepoch\', \'localtime\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v3, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    sget-object v5, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->PROJECTION1:[Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "datetaken ASC"

    goto :goto_0

    :cond_0
    const-string v0, "datetaken DESC"

    :goto_0
    move-object v10, v0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 36
    invoke-virtual/range {v3 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NubiaLocationClustering"

    const-string v1, "query fail place "

    .line 39
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 48
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 59
    new-instance v4, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-direct {v4, p0, v2, v3, v1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;-><init>(Lcn/nubia/gallery3d/data/NubiaClustering;JI)V

    .line 60
    iget-object v1, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaLocationClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;->onDone()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    throw v1
.end method
