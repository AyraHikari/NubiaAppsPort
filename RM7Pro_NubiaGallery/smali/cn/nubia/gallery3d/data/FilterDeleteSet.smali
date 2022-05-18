.class public Lcn/nubia/gallery3d/data/FilterDeleteSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "FilterDeleteSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;,
        Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD:I = 0x1

.field private static final REQUEST_CLEAR:I = 0x3

.field private static final REQUEST_REMOVE:I = 0x2


# instance fields
.field private final mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 70
    iput-object p2, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 71
    invoke-virtual {p2, p0}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method private sendRequest(ILcn/nubia/gallery3d/data/Path;I)V
    .locals 1

    .line 225
    new-instance v0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;-><init>(ILcn/nubia/gallery3d/data/Path;I)V

    .line 226
    iget-object p1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter p1

    .line 227
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    return-void

    :catchall_0
    move-exception p2

    .line 228
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public addDeletion(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->sendRequest(ILcn/nubia/gallery3d/data/Path;I)V

    return-void
.end method

.method public clearDeletion()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->sendRequest(ILcn/nubia/gallery3d/data/Path;I)V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    return v0
.end method

.method public getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I
    .locals 2

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/LocalAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/MarkAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/FavorAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/ui/CloudAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcn/nubia/gallery3d/data/MultiAlbum;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I

    move-result p1

    return p1

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getIndexOfItem(Lcn/nubia/gallery3d/data/Path;I)I

    move-result p1

    return p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 112
    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 117
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    .line 118
    iget v3, v3, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v3, v2

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    .line 123
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    .line 124
    iget v4, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    :cond_4
    :goto_3
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    add-int/2addr p1, v2

    sub-int v1, v3, v2

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p2

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-lt v3, v2, :cond_5

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    .line 132
    iget v0, v0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v0, p1

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method public getMediaItemCount()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 9

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 147
    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter v3

    if-nez v0, :cond_1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move v0, v1

    .line 151
    :goto_1
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 152
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;

    .line 153
    iget v5, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->type:I

    if-eq v5, v2, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v4, 0x3

    if-eq v5, v4, :cond_2

    goto :goto_5

    .line 178
    :cond_2
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 168
    :cond_3
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_8

    .line 170
    iget-object v7, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    iget-object v7, v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcn/nubia/gallery3d/data/Path;

    iget-object v8, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->path:Lcn/nubia/gallery3d/data/Path;

    if-ne v7, v8, :cond_4

    .line 171
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 156
    :cond_5
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    .line 159
    iget-object v7, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    iget-object v7, v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcn/nubia/gallery3d/data/Path;

    iget-object v8, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->path:Lcn/nubia/gallery3d/data/Path;

    if-ne v7, v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-ne v6, v5, :cond_8

    .line 162
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    new-instance v6, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    iget-object v7, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->path:Lcn/nubia/gallery3d/data/Path;

    iget v4, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    invoke-direct {v6, v7, v4}, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;-><init>(Lcn/nubia/gallery3d/data/Path;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_9
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    iget v0, v0, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    move v3, v2

    move v2, v0

    .line 192
    :goto_6
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 193
    iget-object v4, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    .line 194
    iget v5, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 195
    iget v4, v4, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 197
    :cond_a
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    add-int/lit8 v0, v0, -0x5

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x5

    .line 199
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 200
    iget-object v3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v0, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 202
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 203
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v5, :cond_b

    goto :goto_9

    .line 205
    :cond_b
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    move v6, v1

    .line 207
    :goto_8
    iget-object v7, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 208
    iget-object v7, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;

    .line 209
    iget-object v8, v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcn/nubia/gallery3d/data/Path;

    if-ne v8, v5, :cond_c

    add-int v5, v0, v4

    .line 210
    iput v5, v7, Lcn/nubia/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 211
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v5, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 217
    :cond_e
    iput-object v3, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 220
    :cond_f
    invoke-static {}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    .line 221
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    return-wide v0

    .line 184
    :goto_a
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeDeletion(Lcn/nubia/gallery3d/data/Path;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, v0, p1, v1}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->sendRequest(ILcn/nubia/gallery3d/data/Path;I)V

    return-void
.end method

.method public setDuration([J)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v1, v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->setDuration([J)V

    :cond_0
    return-void
.end method
