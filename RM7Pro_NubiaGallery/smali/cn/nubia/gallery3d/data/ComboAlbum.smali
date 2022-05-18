.class public Lcn/nubia/gallery3d/data/ComboAlbum;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcn/nubia/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;[Lcn/nubia/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 32
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 33
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 34
    invoke-virtual {v1, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput-object p3, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 43
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge p2, v7, :cond_0

    goto :goto_3

    :cond_0
    if-ge p1, v6, :cond_2

    add-int v7, p1, p2

    if-gt v7, v6, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    sub-int/2addr v6, p1

    .line 47
    :goto_1
    invoke-virtual {v5, p1, v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v3

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 5

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 62
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ComboAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 82
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 83
    iget-wide v5, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 86
    invoke-static {}, Lcn/nubia/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mDataVersion:J

    .line 87
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public requestSync(Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbum;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/data/ComboAlbum;->requestSyncOnMultipleSets([Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method
