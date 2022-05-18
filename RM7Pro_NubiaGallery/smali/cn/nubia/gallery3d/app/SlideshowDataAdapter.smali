.class public Lcn/nubia/gallery3d/app/SlideshowDataAdapter;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/SlideshowPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;,
        Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;,
        Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    }
.end annotation


# static fields
.field private static final IMAGE_QUEUE_CAPACITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideshowDataAdapter"


# instance fields
.field private mDataReady:Z

.field private mDataVersion:J

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPath:Lcn/nubia/gallery3d/data/Path;

.field private mIsActive:Z

.field private mIsLoading:Z

.field private mLoadIndex:I

.field private mMultiShootindex:I

.field private final mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNeedReset:Z

.field private mNextOutput:I

.field private mReloadTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

.field private final mSourceListener:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;

.field private final mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryContext;Ljava/util/ArrayList;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcn/nubia/gallery3d/data/Path;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryContext;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;",
            "I",
            "Lcn/nubia/gallery3d/data/Path;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 56
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 57
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 62
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    const-wide/16 v1, -0x1

    .line 67
    iput-wide v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;

    .line 70
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsLoading:Z

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mMultiShootindex:I

    .line 76
    iput-object p3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    .line 77
    iput-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSelectedList:Ljava/util/ArrayList;

    .line 78
    iput-object p5, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcn/nubia/gallery3d/data/Path;

    .line 79
    iput p4, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 80
    iput p4, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 81
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mMultiShootindex:I

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mMultiShootindex:I

    return p1
.end method

.method static synthetic access$1110(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I
    .locals 2

    .line 39
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mMultiShootindex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mMultiShootindex:I

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->innerNextBitmap()Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->loadItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return p1
.end method

.method static synthetic access$604(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1

    .line 39
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSelectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->checkinSelectedList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkinSelectedList(Ljava/lang/String;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized innerNextBitmap()Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
    .locals 1

    monitor-enter p0

    .line 222
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 224
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 230
    :cond_1
    :try_start_3
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 232
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadItem()Lcn/nubia/gallery3d/data/MediaItem;
    .locals 7

    .line 85
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->reload()J

    move-result-wide v3

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsLoading:Z

    .line 88
    iget-wide v5, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 89
    iput-wide v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    .line 90
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return-object v2

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsLoading:Z

    if-eqz v0, :cond_1

    .line 95
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return-object v2

    .line 99
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 100
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcn/nubia/gallery3d/data/Path;

    if-eqz v1, :cond_2

    .line 101
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v3, v1, v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->findItemIndex(Lcn/nubia/gallery3d/data/Path;I)I

    move-result v0

    .line 102
    iput-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mInitialPath:Lcn/nubia/gallery3d/data/Path;

    .line 104
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private recyleImageQueue()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    .line 269
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->recyleImageQueue()V

    return-void
.end method

.method public nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;-><init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 245
    monitor-enter p0

    const/4 v0, 0x0

    .line 246
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 248
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

    .line 258
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 259
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSource:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 260
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    .line 262
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
