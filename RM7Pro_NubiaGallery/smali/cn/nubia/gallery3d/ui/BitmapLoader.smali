.class public abstract Lcn/nubia/gallery3d/ui/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_RECYCLED:I = 0x4

.field private static final STATE_REQUESTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private mTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelLoad()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestInProgress()Z
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 50
    monitor-enter p0

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 52
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget v2, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 56
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 61
    iget p1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 62
    :cond_2
    monitor-exit p0

    return-void

    .line 64
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V

    return-void

    :catchall_0
    move-exception p1

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract onLoadComplete(Landroid/graphics/Bitmap;)V
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x4

    .line 86
    :try_start_0
    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startLoad()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mState:I

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BitmapLoader;->mTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
