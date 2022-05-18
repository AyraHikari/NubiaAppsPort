.class public Lcn/nubia/gallery3d/data/ClusterAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbum"


# instance fields
.field private mClusterAlbumSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mCover:Lcn/nubia/gallery3d/data/MediaItem;

.field private mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 2

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 33
    iput-object p3, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 34
    invoke-virtual {p3, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcn/nubia/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;II",
            "Lcn/nubia/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 80
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    add-int/2addr p2, p1

    .line 82
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int/2addr p2, p1

    .line 84
    new-array p0, p2, [Lcn/nubia/gallery3d/data/MediaItem;

    .line 85
    new-instance p1, Lcn/nubia/gallery3d/data/ClusterAlbum$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/data/ClusterAlbum$1;-><init>([Lcn/nubia/gallery3d/data/MediaItem;)V

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p3, v0, p1, v1}, Lcn/nubia/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_1

    .line 93
    aget-object p3, p0, v1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 128
    new-instance v0, Lcn/nubia/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/ClusterAlbum$2;-><init>(Lcn/nubia/gallery3d/data/ClusterAlbum;)V

    .line 135
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)V

    return-void
.end method

.method protected enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2

    .line 100
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 101
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mCover:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcn/nubia/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcn/nubia/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x5

    return-wide v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 112
    invoke-static {}, Lcn/nubia/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataVersion:J

    .line 114
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mCover:Lcn/nubia/gallery3d/data/MediaItem;

    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/Path;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaItems path is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClusterAlbum"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-void
.end method
