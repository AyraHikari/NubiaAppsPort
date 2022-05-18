.class public Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;
    }
.end annotation


# instance fields
.field private mCapacityBytes:I

.field private mNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/data/Pools$Pool<",
            "Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolNodesHead:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

.field private mPoolNodesTail:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

.field private mSizeBytes:I

.field private mStore:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcn/nubia/gallery3d/data/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/nubia/gallery3d/data/Pools$Pool<",
            "Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 37
    iput-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 58
    iput p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mCapacityBytes:I

    if-nez p2, :cond_0

    .line 60
    new-instance p1, Lcn/nubia/gallery3d/data/Pools$SimplePool;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/data/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    goto :goto_0

    .line 62
    :cond_0
    iput-object p2, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    :goto_0
    return-void
.end method

.method private freeUpCapacity(I)V
    .locals 2

    .line 77
    iget v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mCapacityBytes:I

    sub-int/2addr v0, p1

    .line 79
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz p1, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0, p1, v1}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unlinkAndRecycleNode(Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;Z)V
    .locals 3

    .line 86
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    iget-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 99
    :cond_1
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 106
    :goto_1
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    goto :goto_2

    .line 111
    :cond_3
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    :goto_2
    const/4 v0, 0x0

    .line 115
    iput-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 116
    iput-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 117
    iput-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 118
    iput-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 119
    iget v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I

    iget-object v2, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-eqz p2, :cond_4

    .line 120
    iget-object p2, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    :cond_4
    iput-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    .line 122
    iget-object p2, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    invoke-interface {p2, p1}, Lcn/nubia/gallery3d/data/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mCapacityBytes:I

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(II)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    :goto_0
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 150
    iget-object p2, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-object p2

    .line 154
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 156
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 165
    monitor-exit p0

    return p1

    .line 169
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 170
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->freeUpCapacity(I)V

    .line 172
    iget-object v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    invoke-interface {v1}, Lcn/nubia/gallery3d/data/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    invoke-direct {v1}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;-><init>()V

    .line 176
    :cond_1
    iput-object p1, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 180
    iput-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 181
    iput-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 182
    iget-object v2, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 183
    iput-object v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 187
    iget-object v2, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 188
    iget-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, v2, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 192
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object p1, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    if-nez p1, :cond_3

    .line 196
    iput-object v1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    goto :goto_0

    .line 198
    :cond_3
    iget-object p1, v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    iput-object v1, p1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;->prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

    .line 200
    :goto_0
    iget p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 201
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput p1, p0, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->mCapacityBytes:I

    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
