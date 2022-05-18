.class public abstract Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;,
        Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;,
        Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    }
.end annotation


# static fields
.field public static final POSITION_UPDATE_NOTIFYING_PERIOD:I = 0x3e8

.field private static final SHOW_LOGS:Z = true


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

.field private final mOnVideoPreparedMessage:Ljava/lang/Runnable;

.field private final mOnVideoStopMessage:Ljava/lang/Runnable;

.field private mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;",
            ">;"
        }
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;


# direct methods
.method protected constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;-><init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mOnVideoPreparedMessage:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$3;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$3;-><init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mOnVideoStopMessage:Ljava/lang/Runnable;

    .line 602
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$4;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$4;-><init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "constructor of MediaPlayerWrapper"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor of MediaPlayerWrapper, main Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor of MediaPlayerWrapper, my Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "myLooper not null, a bug in some MediaPlayer implementation cause that listeners are not called at all. Please use a thread without Looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 77
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->IDLE:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 79
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 80
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 81
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 82
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->notifyPositionUpdated()V

    return-void
.end method

.method private inUiThread()Z
    .locals 4

    .prologue
    .line 672
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPositionUpdated()V
    .locals 3

    .prologue
    .line 628
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STARTED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    if-ne v0, v2, :cond_0

    .line 632
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;->onVideoPlayTimeChanged(I)V

    .line 634
    :cond_0
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPrepareError(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ex"    # Ljava/io/IOException;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch IO exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ERROR:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    const/4 v1, 0x1

    const/16 v2, -0x3ec

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;-><init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_1
    return-void
.end method

.method public static positionToPercent(II)I
    .locals 3
    .param p0, "progressMillis"    # I
    .param p1, "durationMillis"    # I

    .prologue
    .line 644
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 645
    .local v0, "percentPrecise":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private positionUpdaterIsWorking()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printInfo(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 274
    sparse-switch p1, :sswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 276
    :sswitch_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_UNKNOWN"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :sswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :sswitch_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :sswitch_3
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_BUFFERING_START"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :sswitch_4
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_BUFFERING_END"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :sswitch_5
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_BAD_INTERLEAVING"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :sswitch_6
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_NOT_SEEKABLE"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :sswitch_7
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_METADATA_UPDATE"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :sswitch_8
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :sswitch_9
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo, MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x2bc -> :sswitch_1
        0x2bd -> :sswitch_3
        0x2be -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
    .end sparse-switch
.end method

.method private startPositionUpdateNotifier()V
    .locals 7

    .prologue
    .line 611
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPositionUpdateNotifier, mPositionUpdateNotifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 617
    return-void
.end method

.method private stopPositionUpdateNotifier()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPositionUpdateNotifier, mPositionUpdateNotifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 625
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clearAll, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 476
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 477
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 478
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 479
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 480
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< clearAll, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentState()Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    .locals 2

    .prologue
    .line 638
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    monitor-exit v1

    return-object v0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "duration":I
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 554
    :try_start_0
    sget-object v3, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 570
    :goto_0
    monitor-exit v2

    .line 571
    return v0

    .line 560
    :pswitch_0
    const/4 v0, 0x0

    .line 562
    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isReadyForPlayback()Z
    .locals 6

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "isReadyForPlayback":Z
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReadyForPlayback, mState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 530
    .local v1, "state":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 547
    :goto_0
    monitor-exit v3

    .line 548
    return v0

    .line 537
    :pswitch_0
    const/4 v0, 0x0

    .line 538
    goto :goto_0

    .line 543
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "state":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-interface {v0, p2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onBufferingUpdateMainThread(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCompletion, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoCompletionMainThread()V

    .line 232
    :cond_0
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorMainThread, what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ERROR:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->positionUpdaterIsWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->stopPositionUpdateNotifier()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorMainThread, mListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-interface {v0, p2, p3}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    .line 252
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onInfo"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, p2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->printInfo(I)V

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged, width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-interface {v0, p2, p3}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoSizeChangedMainThread(II)V

    .line 219
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> pause"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< pause"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 377
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 380
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 381
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepare()V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> prepare, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 98
    :try_start_0
    sget-object v3, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< prepare, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 102
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 103
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mOnVideoPreparedMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->onPrepareError(Ljava/io/IOException;)V

    goto :goto_0

    .line 125
    .end local v0    # "ex":Ljava/io/IOException;
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare, called from illegal state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> release, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 467
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->END:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< release, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 468
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> reset , mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< reset , mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 452
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 453
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->IDLE:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 457
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot call reset from state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public seekToPercent(I)V
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 575
    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 578
    .local v1, "state":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seekToPercent, percent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {v1}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 599
    :goto_0
    monitor-exit v3

    .line 600
    return-void

    .line 587
    :pswitch_0
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "seekToPercent, illegal state"

    invoke-static {v2, v4}, Lcom/huanju/ssp/base/video/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    .end local v1    # "state":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 594
    .restart local v1    # "state":Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    :pswitch_1
    int-to-float v2, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    :try_start_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->getDuration()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 595
    .local v0, "positionMillis":I
    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 596
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->notifyPositionUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v6, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v6

    .line 187
    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 189
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 190
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 192
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 193
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource, filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource called in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    return-void

    .line 162
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setLooping(Z)V
    .locals 3
    .param p1, "looping"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLooping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 487
    return-void
.end method

.method public setMainThreadMediaPlayerListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    .line 313
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setSurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceTexture mSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz p1, :cond_0

    .line 495
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mSurface:Landroid/view/Surface;

    .line 496
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< setSurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setVideoStateListener(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$VideoStateListener;

    .line 317
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 505
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 506
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> start"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< start"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 336
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 343
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, video is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", starting playback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 345
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->startPositionUpdateNotifier()V

    .line 346
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STARTED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> stop"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$5;->$SwitchMap$com$huanju$ssp$base$video$ui$MediaPlayerWrapper$State:[I

    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< stop"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 407
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->stopPositionUpdateNotifier()V

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v2, ">> stop"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 418
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "<< stop"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mListener:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mOnVideoStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 427
    :pswitch_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "stop, already stopped"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot stop. Player in mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 650
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
