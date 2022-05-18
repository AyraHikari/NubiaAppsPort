.class public Lcn/nubia/gallery3d/data/ComboAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbumSet"


# instance fields
.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mSets:[Lcn/nubia/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;[Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 2

    .line 34
    invoke-static {}, Lcn/nubia/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 35
    iput-object p2, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 36
    iput-object p3, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 37
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    .line 38
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 5

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 100
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 102
    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubCoverMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 5

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 47
    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 5

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 58
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getSubSetMediaItemCount(I)I
    .locals 6

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 113
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 115
    invoke-virtual {v4, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubSetMediaItemCount(I)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isLoading()Z
    .locals 4

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 71
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onContentDirty()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/ComboAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v3, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 81
    iget-wide v5, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcn/nubia/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    .line 84
    :cond_2
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mDataVersion:J

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

    .line 93
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ComboAlbumSet;->mSets:[Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/MediaSet$SyncListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method
