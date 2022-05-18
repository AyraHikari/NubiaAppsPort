.class public Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;
.super Lcn/nubia/gallery3d/ui/SelectionManager;
.source "AlbumSetSelectionManager.java"


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    return-void
.end method

.method private calculateMenuOptionInverse()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 13

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v0, :cond_7

    .line 127
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v8, v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v8

    .line 128
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v9

    invoke-static {v9}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 129
    :cond_0
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v9

    if-nez v9, :cond_1

    .line 130
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->calculateMenuOptionInverse()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->getOperation()J

    move-result-wide v6

    .line 132
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;->getCount()I

    move-result v2

    move-wide v11, v6

    move v6, v2

    move-wide v2, v11

    goto :goto_2

    .line 134
    :cond_1
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v9

    .line 135
    iget-object v10, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v9

    and-long/2addr v2, v9

    if-nez v5, :cond_6

    .line 139
    instance-of v9, v8, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    if-eqz v9, :cond_4

    .line 140
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v8, v4}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v8

    check-cast v8, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    .line 141
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getMediaItemCount()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 142
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v9, :cond_3

    .line 144
    check-cast v9, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v6, v8

    :cond_5
    const/16 v8, 0x12c

    if-le v6, v8, :cond_6

    move v5, v7

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    const-wide/16 v4, -0x5

    and-long/2addr v2, v4

    .line 160
    :cond_8
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt v0, v7, :cond_9

    const-wide/16 v0, -0x3

    and-long/2addr v2, v0

    .line 164
    :cond_9
    new-instance v0, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    invoke-direct {v0, p0, v2, v3, v6}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;-><init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V

    return-object v0
.end method

.method protected static expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            "I)Z"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 179
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/16 v2, 0x32

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x32

    if-ge v4, v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    sub-int v5, v0, v3

    .line 188
    :goto_2
    invoke-virtual {p1, v3, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaItem;

    .line 190
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p2, :cond_3

    return v1

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public calculateMenuOption()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 10

    .line 81
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mInverseSelection:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->calculateMenuOptionInverse()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/Path;

    .line 90
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/MediaSet;

    .line 91
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v8

    and-long/2addr v0, v8

    if-nez v4, :cond_1

    .line 93
    instance-of v8, v6, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    if-eqz v8, :cond_3

    .line 94
    check-cast v6, Lcn/nubia/gallery3d/data/MultiShootAlbum;

    .line 95
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v8, :cond_2

    .line 98
    check-cast v8, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    add-int/2addr v5, v6

    :cond_4
    const/16 v6, 0x12c

    if-le v5, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    .line 113
    :cond_6
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v7, :cond_7

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    .line 116
    :cond_7
    new-instance v2, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    invoke-direct {v2, p0, v0, v1, v5}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;-><init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V

    return-object v2
.end method

.method public getSelected(ZIZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mInverseSelection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 44
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 46
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v5, v4}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v5

    invoke-static {v5}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_1

    .line 51
    invoke-static {p3, v3, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    .line 55
    :cond_1
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    if-eqz p1, :cond_5

    .line 65
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-static {p3, v2, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    .line 69
    :cond_5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_4

    return-object v1

    :cond_6
    return-object p3
.end method

.method public getTotalCount()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 25
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mTotal:I

    if-gez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mTotal:I

    .line 28
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mTotal:I

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mTotal:I

    if-ge v1, v2, :cond_3

    .line 30
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public selectAll()V
    .locals 2

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mInverseSelection:Z

    .line 169
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mTotal:I

    .line 171
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->enterSelectionMode()V

    .line 172
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method
