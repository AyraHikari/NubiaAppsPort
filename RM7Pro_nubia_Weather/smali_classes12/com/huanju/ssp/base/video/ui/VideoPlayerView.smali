.class public Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
.super Lcom/huanju/ssp/base/video/ui/ScalableTextureView;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
.implements Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/video/ui/VideoPlayerView$PlaybackStartedListener;,
        Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;
    }
.end annotation


# static fields
.field private static final IS_VIDEO_MUTED:Ljava/lang/String; = "IS_VIDEO_MUTED"

.field private static final SHOW_LOGS:Z = true


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

.field private mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

.field private final mMediaPlayerMainThreadListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private final mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

.field private final mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

.field private final mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

.field private final mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

.field private mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

.field private mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    .line 338
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->initView()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    .line 338
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

    .line 100
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->initView()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    .line 338
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->initView()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    .line 338
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$1;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$2;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$4;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

    .line 111
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->initView()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot be in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v0, Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->setScaleType(Lcom/huanju/ssp/base/video/ui/ScalableTextureView$ScaleType;)V

    .line 242
    invoke-super {p0, p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method private isVideoSizeAvailable()Z
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 202
    .local v0, "isVideoSizeAvailable":Z
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoSizeAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v0

    .line 201
    .end local v0    # "isVideoSizeAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOnErrorMainThread(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 376
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "notifyOnErrorMainThread"

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v3

    .line 379
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .local v0, "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 382
    .local v1, "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    invoke-interface {v1, p1, p2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    goto :goto_0

    .line 380
    .end local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    .end local v1    # "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 384
    .restart local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    :cond_0
    return-void
.end method

.method private notifyOnVideoCompletionMainThread()V
    .locals 4

    .prologue
    .line 354
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "notifyVideoCompletionMainThread"

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v3

    .line 357
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    .local v0, "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 360
    .local v1, "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    invoke-interface {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoCompletionMainThread()V

    goto :goto_0

    .line 358
    .end local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    .end local v1    # "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 362
    .restart local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    :cond_0
    return-void
.end method

.method private notifyOnVideoPreparedMainThread()V
    .locals 4

    .prologue
    .line 365
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "notifyOnVideoPreparedMainThread"

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v3

    .line 368
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 369
    .local v0, "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 371
    .local v1, "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    invoke-interface {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoPreparedMainThread()V

    goto :goto_0

    .line 369
    .end local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    .end local v1    # "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 373
    .restart local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    :cond_0
    return-void
.end method

.method private notifyOnVideoSizeChangedMainThread(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 328
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOnVideoSizeChangedMainThread, width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v3

    .line 331
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    .local v0, "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 334
    .local v1, "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    invoke-interface {v1, p1, p2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoSizeChangedMainThread(II)V

    goto :goto_0

    .line 332
    .end local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    .end local v1    # "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 336
    .restart local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    :cond_0
    return-void
.end method

.method private notifyOnVideoStopped()V
    .locals 4

    .prologue
    .line 190
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "notifyOnVideoStopped"

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v3

    .line 193
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v0, "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 196
    .local v1, "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    invoke-interface {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoStoppedMainThread()V

    goto :goto_0

    .line 194
    .end local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    .end local v1    # "listener":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 198
    .restart local v0    # "listCopy":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;>;"
    :cond_0
    return-void
.end method

.method private notifyTextureAvailable()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, ">> notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    new-instance v1, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$5;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 566
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "<< notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method private onVideoSizeAvailable()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, ">> onVideoSizeAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->updateTextureViewSize()V

    .line 484
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoSizeAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "<< onVideoSizeAvailable"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method private printErrorExtra(I)V
    .locals 2
    .param p1, "extra"    # I

    .prologue
    .line 439
    sparse-switch p1, :sswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 441
    :sswitch_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "error extra MEDIA_ERROR_IO"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :sswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "error extra MEDIA_ERROR_MALFORMED"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :sswitch_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "error extra MEDIA_ERROR_UNSUPPORTED"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :sswitch_3
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "error extra MEDIA_ERROR_TIMED_OUT"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method private static visibilityStr(I)Ljava/lang/String;
    .locals 2
    .param p0, "visibility"    # I

    .prologue
    .line 687
    sparse-switch p0, :sswitch_data_0

    .line 695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :sswitch_0
    const-string v0, "VISIBLE"

    .line 693
    :goto_0
    return-object v0

    .line 691
    :sswitch_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 693
    :sswitch_2
    const-string v0, "GONE"

    goto :goto_0

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerMainThreadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearPlayerInstance()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, ">> clearPlayerInstance"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 139
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->clearAll()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "<< clearPlayerInstance"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createNewPlayerInstance()V
    .locals 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, ">> createNewPlayerInstance"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewPlayerInstance main Looper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewPlayerInstance my Looper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 155
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v2

    .line 157
    :try_start_0
    new-instance v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapperImpl;

    invoke-direct {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapperImpl;-><init>()V

    iput-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .line 159
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 160
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setFailedToPrepareUiForPlayback(Z)V

    .line 162
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isSurfaceTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 164
    .local v0, "texture":Landroid/graphics/SurfaceTexture;
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 169
    .end local v0    # "texture":Landroid/graphics/SurfaceTexture;
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setMainThreadMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V

    .line 170
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setVideoStateListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;)V

    .line 171
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "<< createNewPlayerInstance"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "texture not available"

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAssetFileDescriptorDataSource()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public getCurrentState()Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->getCurrentState()Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 522
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->getDuration()I

    move-result v0

    monitor-exit v1

    return v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoUrlDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAllVideoMute()Z
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IS_VIDEO_MUTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVideo()V
    .locals 4

    .prologue
    .line 493
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "IS_VIDEO_MUTED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setVolume(FF)V

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 639
    invoke-super {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->onAttachedToWindow()V

    .line 640
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isInEditMode()Z

    move-result v0

    .line 641
    .local v0, "isInEditMode":Z
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> onAttachedToWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-nez v0, :cond_0

    .line 643
    new-instance v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    .line 644
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->startThread()V

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "<< onAttachedToWindow"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method public onBufferingUpdateMainThread(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 431
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 652
    invoke-super {p0}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->onDetachedFromWindow()V

    .line 653
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isInEditMode()Z

    move-result v0

    .line 655
    .local v0, "isInEditMode":Z
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> onDetachedFromWindow, isInEditMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-nez v0, :cond_0

    .line 657
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->postQuit()V

    .line 658
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "<< onDetachedFromWindow"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void
.end method

.method public onErrorMainThread(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorMainThread, this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 416
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyOnErrorMainThread(II)V

    .line 418
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    new-instance v1, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$3;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;II)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 426
    :cond_0
    return-void

    .line 407
    :sswitch_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onErrorMainThread, what MEDIA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->printErrorExtra(I)V

    goto :goto_0

    .line 411
    :sswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onErrorMainThread, what MEDIA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->printErrorExtra(I)V

    goto :goto_0

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable, width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyTextureAvailable()V

    .line 535
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed, surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    new-instance v1, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView$6;-><init>(Lcom/huanju/ssp/base/video/ui/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 574
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 621
    :cond_0
    return-void
.end method

.method public onVideoCompletionMainThread()V
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyOnVideoCompletionMainThread()V

    .line 348
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoCompletionBackgroundThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onVideoPlayTimeChanged(I)V
    .locals 0
    .param p1, "positionInMilliseconds"    # I

    .prologue
    .line 630
    return-void
.end method

.method public onVideoPreparedMainThread()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyOnVideoPreparedMainThread()V

    .line 397
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mViewHandlerBackgroundThread:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoPreparedBackgroundThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->post(Ljava/lang/Runnable;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> onVideoSizeChangedMainThread, width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->setContentWidth(I)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->setContentHeight(I)V

    .line 312
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->onVideoSizeAvailable()V

    .line 322
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyOnVideoSizeChangedMainThread(II)V

    .line 324
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< onVideoSizeChangedMainThread, width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoSizeChangedMainThread, size 0. Probably will be unable to start video"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->setFailedToPrepareUiForPlayback(Z)V

    .line 318
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 319
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVideoStoppedMainThread()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->notifyOnVideoStopped()V

    .line 436
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 665
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/base/video/ui/ScalableTextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 666
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->isInEditMode()Z

    move-result v0

    .line 668
    .local v0, "isInEditMode":Z
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> onVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->visibilityStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isInEditMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-nez v0, :cond_0

    .line 671
    sparse-switch p2, :sswitch_data_0

    .line 683
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "<< onVisibilityChanged"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 676
    :sswitch_1
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 679
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 671
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, ">> pause "

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->pause()V

    .line 514
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "<< pause"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 177
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->prepare()V

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 129
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->release()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 122
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->reset()V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackgroundThreadMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayerListenerBackgroundThread:Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    .line 301
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 5
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 270
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource, assetFileDescriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 282
    monitor-exit v2

    .line 283
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 253
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource, path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mPath:Ljava/lang/String;

    .line 265
    monitor-exit v2

    .line 266
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setOnVideoStateChangedListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    .line 287
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 288
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setVideoStateListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;)V

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mLocalSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 249
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, ">> start"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v2

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->start()V

    .line 231
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "<< start"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 212
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "start, >> wait"

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isFailedToPrepareUiForPlayback()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 215
    :try_start_2
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "start, << wait"

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->start()V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "start, movie is not ready, Player become STARTED state, but it will actually don\'t play"

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->TAG:Ljava/lang/String;

    const-string v3, "start, movie is not ready. Video size will not become available"

    invoke-static {v1, v3}, Lcom/huanju/ssp/base/video/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->checkThread()V

    .line 184
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->stop()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unMuteVideo()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mReadyForPlaybackIndicator:Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    monitor-enter v1

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "IS_VIDEO_MUTED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/VideoPlayerView;->mMediaPlayer:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->setVolume(FF)V

    .line 503
    monitor-exit v1

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
