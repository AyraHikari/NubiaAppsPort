.class Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 5

    .line 284
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_2

    add-int/2addr v4, v1

    if-lt p1, v4, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 295
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 297
    iput p1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 300
    :cond_3
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_4

    goto :goto_2

    .line 304
    :cond_4
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaItem;

    return-object p1

    :cond_5
    :goto_2
    return-object v3
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method
