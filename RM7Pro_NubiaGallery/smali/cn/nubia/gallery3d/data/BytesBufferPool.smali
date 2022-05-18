.class public Lcn/nubia/gallery3d/data/BytesBufferPool;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;
    }
.end annotation


# static fields
.field private static final READ_STEP:I = 0x1000


# instance fields
.field private final mBufferSize:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    .line 76
    iput p1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mPoolSize:I

    .line 77
    iput p2, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mBufferSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 99
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    .line 101
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;

    iget v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mBufferSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(ILcn/nubia/gallery3d/data/BytesBufferPool$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)V
    .locals 2

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p1, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mBufferSize:I

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mPoolSize:I

    if-ge v0, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->release()V

    .line 94
    iget-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
