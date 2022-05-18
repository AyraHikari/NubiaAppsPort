.class public Lcn/nubia/gallery3d/data/FilterTypeSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "FilterTypeSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterTypeSet"


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private final mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private final mMediaType:I

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 35
    iput-object p3, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 36
    iput p4, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mMediaType:I

    .line 37
    invoke-virtual {p3, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/data/FilterTypeSet;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mMediaType:I

    return p0
.end method

.method private updateData()V
    .locals 7

    .line 82
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/filter/mediatype/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 86
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v5, v4}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    .line 90
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 91
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 92
    :cond_0
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 99
    new-array v1, v0, [Lcn/nubia/gallery3d/data/Path;

    .line 100
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    new-instance v4, Lcn/nubia/gallery3d/data/FilterTypeSet$1;

    invoke-direct {v4, p0, v0, v1}, Lcn/nubia/gallery3d/data/FilterTypeSet$1;-><init>(Lcn/nubia/gallery3d/data/FilterTypeSet;I[Lcn/nubia/gallery3d/data/Path;)V

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/data/MediaSet;->enumerateMediaItems(Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 111
    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 124
    new-instance v0, Lcn/nubia/gallery3d/data/FilterTypeSet$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/FilterTypeSet$2;-><init>(Lcn/nubia/gallery3d/data/FilterTypeSet;)V

    .line 131
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;I)V

    return-void
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

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcn/nubia/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcn/nubia/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x5

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FilterTypeSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/FilterTypeSet;->updateData()V

    .line 70
    invoke-static {}, Lcn/nubia/gallery3d/data/FilterTypeSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataVersion:J

    .line 72
    :cond_0
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FilterTypeSet;->mDataVersion:J

    return-wide v0
.end method
