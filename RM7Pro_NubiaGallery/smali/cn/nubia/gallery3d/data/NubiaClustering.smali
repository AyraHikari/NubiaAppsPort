.class public Lcn/nubia/gallery3d/data/NubiaClustering;
.super Ljava/lang/Object;
.source "NubiaClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;,
        Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;,
        Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;
    }
.end annotation


# static fields
.field protected static final ORDER_BY_ASC:Ljava/lang/String; = "datetaken ASC"

.field protected static final ORDER_BY_DESC:Ljava/lang/String; = "datetaken DESC"

.field protected static final PROJECTION:[Ljava/lang/String;

.field protected static final PROJECTION1:[Ljava/lang/String;


# instance fields
.field protected mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field protected mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

.field protected mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHeaderHeight:I

.field protected mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

.field protected mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "count(_id)"

    const-string v1, "datetaken"

    const-string v2, "_id"

    .line 17
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/data/NubiaClustering;->PROJECTION:[Ljava/lang/String;

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/NubiaClustering;->PROJECTION1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/data/NubiaClustering;J)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/NubiaClustering;->generateCaption(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateCaption(J)Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Lcn/nubia/gallery3d/data/Caption;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcn/nubia/gallery3d/data/Caption;-><init>(Landroid/content/Context;J)V

    .line 201
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Caption;->getChinaLocaleCaption()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearDisplayNames()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public computeContentLength(III)I
    .locals 9

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 148
    :goto_0
    iget-object v5, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 149
    iget-object v5, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    .line 150
    iget v6, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mHeaderHeight:I

    .line 151
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, p1

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int v8, p2, p3

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    sub-int/2addr v6, p3

    .line 153
    invoke-virtual {v5, v6}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->setContentLength(I)V

    add-int/2addr v2, v6

    if-nez v0, :cond_1

    move v6, v1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v6, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v6

    :goto_1
    add-int/2addr v3, v6

    .line 157
    invoke-virtual {v5, v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->setPosition(I)V

    .line 158
    invoke-virtual {v5, v0}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->setIndex(I)V

    if-nez v0, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v4

    .line 160
    :goto_2
    invoke-virtual {v5, v6}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->setStartIndex(I)V

    .line 161
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->setIndexSet()V

    .line 162
    iget-object v5, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    goto :goto_3

    .line 165
    :cond_3
    iget-object v5, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v5

    add-int/2addr v4, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v1
.end method

.method protected generateScrollBarCaption(J)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Lcn/nubia/gallery3d/data/Caption;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcn/nubia/gallery3d/data/Caption;-><init>(Landroid/content/Context;J)V

    const-string p1, "yyyy/M"

    .line 196
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/Caption;->getFormatCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionByPosition(I)Ljava/lang/String;
    .locals 6

    .line 173
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v3, v1

    .line 175
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    .line 177
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result v5

    if-gt v5, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    .line 184
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 185
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/data/NubiaClustering;->generateScrollBarCaption(J)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mDisplayNames:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    return-object v1
.end method

.method public getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected run()V
    .locals 0

    return-void
.end method

.method public setClusteringListener(Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mClusteringListener:Lcn/nubia/gallery3d/data/NubiaClustering$ClusteringListener;

    return-void
.end method

.method public setJobDoneListener(Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/gallery3d/data/NubiaClustering;->mJobDoneListener:Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;

    return-void
.end method
