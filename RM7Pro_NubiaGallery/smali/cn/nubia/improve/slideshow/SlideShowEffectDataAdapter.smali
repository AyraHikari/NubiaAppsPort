.class public Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;
.super Ljava/lang/Object;
.source "SlideShowEffectDataAdapter.java"

# interfaces
.implements Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowEffectDataAdapter"


# instance fields
.field private mContext:Lcn/nubia/gallery3d/app/GalleryContext;

.field private final mImageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mLoadIndex:I

.field private mReloadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryContext;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I

    .line 36
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mIsActive:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    .line 44
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 45
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mContext:Lcn/nubia/gallery3d/app/GalleryContext;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Lcn/nubia/gallery3d/app/GalleryContext;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mContext:Lcn/nubia/gallery3d/app/GalleryContext;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->innerNextBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized innerNextBitmap()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 73
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "SlideshowEffectDataAdapter"

    const-string v1, "innerNextBitmap Wait ++++++"

    .line 75
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 83
    :cond_1
    :try_start_3
    iget v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I

    .line 86
    :cond_2
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mContext:Lcn/nubia/gallery3d/app/GalleryContext;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    iget v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mLoadIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 2
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

    .line 94
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mIsActive:Z

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 108
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mIsActive:Z

    .line 114
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
