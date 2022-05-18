.class public Lcn/nubia/video/player/common/NubiaPlayer;
.super Ljava/lang/Object;
.source "NubiaPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/NubiaPlayer$NativeGetAudioBufferCallback;,
        Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_PLAYBCAK_SPEED:I = 0x0

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBITTLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final ORIGINAL_PLAYBCAK_SPEED:I = 0x0

.field private static final SLOW_PLAYBCAK_SPEED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NubiaPlayer"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private mCameraFps:I

.field private mChanneltype:I

.field private mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

.field private mFrameRate:I

.field private mHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mOnBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

.field private mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

.field private mOnpreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

.field private mPlaySpeedChangeEndTime:I

.field private mPlaySpeedChangeStartTime:I

.field private mPlayerSpeed:F

.field private mRecordTime:J

.field private mRotation:I

.field private mSamplerate:I

.field private mScreenOnWhilePlaying:Z

.field private mSlomoVideoType:I

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mbEnablePlaySpeedShift:Z

.field private minbufsize:I

.field private msurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_media_player"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcn/nubia/video/player/common/NubiaPlayer;->_native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    .line 56
    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSlomoVideoType:I

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mFrameRate:I

    .line 58
    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mRotation:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    const-wide/16 v2, -0x1

    .line 60
    iput-wide v2, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mRecordTime:J

    .line 61
    iput v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    .line 62
    iput v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    const/16 v0, 0xf0

    .line 63
    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mCameraFps:I

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;-><init>(Lcn/nubia/video/player/common/NubiaPlayer;Lcn/nubia/video/player/common/NubiaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;-><init>(Lcn/nubia/video/player/common/NubiaPlayer;Lcn/nubia/video/player/common/NubiaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    .line 77
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->_native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private static final native _native_init()V
.end method

.method private native _native_setup(Ljava/lang/Object;)V
.end method

.method private native _setAudioplay(Lcn/nubia/video/player/common/NubiaPlayer$NativeGetAudioBufferCallback;)V
.end method

.method static synthetic access$000(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/video/player/common/NubiaPlayer;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/common/NubiaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/player/common/NubiaPlayer;)Landroid/media/AudioTrack;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/player/common/NubiaPlayer;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mStayAwake:Z

    return p0
.end method

.method private getChannelConfig()I
    .locals 4

    .line 417
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getChannels()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x4

    if-ne v0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v2, 0x1c

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const/16 v2, 0xcc

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/16 v2, 0xec

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    const/16 v2, 0xfc

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/16 v2, 0x4fc

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/16 v2, 0x18fc

    goto :goto_0

    :cond_8
    const/16 v2, 0x3fc

    :cond_9
    :goto_0
    return v2
.end method

.method private static postEventFromNative(Ljava/lang/Object;III)V
    .locals 1

    .line 482
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/player/common/NubiaPlayer;

    if-nez p0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 488
    iget-object p0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private releaseAudioTrack()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 496
    iput-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 498
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAudioplay()I
    .locals 9

    .line 450
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getSampleRate()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSamplerate:I

    .line 451
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->getChannelConfig()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mChanneltype:I

    if-ltz v0, :cond_2

    .line 452
    iget v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSamplerate:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 455
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->minbufsize:I

    .line 457
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 459
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSamplerate:I

    iget v5, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mChanneltype:I

    const/4 v6, 0x2

    iget v7, p0, Lcn/nubia/video/player/common/NubiaPlayer;->minbufsize:I

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 463
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    new-instance v0, Lcn/nubia/video/player/common/NubiaPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/common/NubiaPlayer$1;-><init>(Lcn/nubia/video/player/common/NubiaPlayer;)V

    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->_setAudioplay(Lcn/nubia/video/player/common/NubiaPlayer$NativeGetAudioBufferCallback;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 464
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private setPlaybackRate(I)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 603
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private stayAwake(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mStayAwake:Z

    .line 259
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 265
    iget-boolean v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public native _getAudioTrackCount()I
.end method

.method public native _getAudioTrackIndex(I)I
.end method

.method public native _getChannels()I
.end method

.method public native _getCurrentPosition()I
.end method

.method public native _getDuration()I
.end method

.method public native _getFrameInterval()J
.end method

.method public native _getFrameRate()I
.end method

.method public native _getRotation()I
.end method

.method public native _getSampleRate()I
.end method

.method public native _getVideoHeight()I
.end method

.method public native _getVideoWidth()I
.end method

.method public native _isPlaying()Z
.end method

.method public native _pause()I
.end method

.method public native _prepare()I
.end method

.method public native _release()V
.end method

.method public native _reset()I
.end method

.method public native _resume()I
.end method

.method public native _seekTo(I)V
.end method

.method public native _setAdjustDegree(I)V
.end method

.method public native _setAudioTrack(I)V
.end method

.method public native _setDataSource(Ljava/lang/String;)I
.end method

.method public native _setPlaySpeed(F)V
.end method

.method public native _setPlaySpeedMode(II)V
.end method

.method public native _setVideoEffect(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native _setVideoSurface(Landroid/view/Surface;)I
.end method

.method public native _setVideoplay(Landroid/view/Surface;)I
.end method

.method public native _start()I
.end method

.method public native _stop()I
.end method

.method public native _unSelectTrack(ZZ)I
.end method

.method public getAudioTrackCount(Landroid/content/Context;)I
    .locals 0

    .line 296
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getAudioTrackCount()I

    move-result p1

    return p1
.end method

.method public getAudioTrackIndex()I
    .locals 1

    const/4 v0, -0x1

    .line 631
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getAudioTrackIndex(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getFrameRate()I

    move-result v0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 608
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 676
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 670
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 688
    iget-wide v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mRecordTime:J

    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getRotation()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getSampleRate()I

    move-result v0

    return v0
.end method

.method public getSlomoSkipCount()I
    .locals 1

    .line 654
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mCameraFps:I

    div-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 618
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSlomoVideoType:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_getVideoWidth()I

    move-result v0

    return v0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->getFrameRate()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_pause()I

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_prepare()I

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_prepare()I

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    .line 309
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    .line 310
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    .line 311
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    .line 312
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    .line 313
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    .line 314
    iput-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 315
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->releaseAudioTrack()V

    .line 316
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_release()V

    .line 317
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 318
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mEventHandler:Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1, v0}, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->releaseAudioTrack()V

    .line 326
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_reset()I

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 332
    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    .line 333
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_resume()I

    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_seekTo(I)V

    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    .line 693
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setAdjustDegree(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAudioTrack(I)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setAudioTrack(I)V

    .line 203
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->releaseAudioTrack()V

    .line 204
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->setAudioplay()I

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 167
    invoke-static {p1, p2}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 169
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 171
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcn/nubia/video/player/common/NubiaPlayer;->setDataSource(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 187
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    const/16 p2, 0x64

    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/video/player/common/NubiaPlayer;->_setDataSource(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 193
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->setAudioplay()I

    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open file path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setVideoSurface(Landroid/view/Surface;)I

    .line 152
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnBufferingUpdateListener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 11

    .line 558
    iget v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mFrameRate:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 560
    iget-object v4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 561
    :try_start_0
    iget-object v5, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 562
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->is30FpsSlomoVideo()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    iget v4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSlomoVideoType:I

    if-ne v4, v6, :cond_3

    cmpg-float p1, p1, v7

    if-gez p1, :cond_1

    const/high16 p1, 0x3e800000    # 0.25f

    .line 565
    iput p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    goto :goto_1

    .line 567
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mCameraFps:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 569
    iput v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    .line 572
    :cond_2
    :goto_1
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 573
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->is30FpsSlomoVideo()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSlomoVideoType:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    cmpg-float p1, p1, v7

    if-gez p1, :cond_4

    .line 575
    iput v7, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    goto :goto_2

    .line 577
    :cond_4
    iput v7, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    .line 579
    :goto_2
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlayerSpeed:F

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 580
    :cond_5
    iget v4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mFrameRate:I

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v10, 0x3c

    if-le v4, v10, :cond_7

    if-eqz v5, :cond_7

    int-to-double v0, v4

    div-double/2addr v0, v2

    cmpg-float p1, p1, v7

    if-gez p1, :cond_6

    .line 584
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSamplerate:I

    int-to-double v2, p1

    div-double/2addr v2, v0

    double-to-int p1, v2

    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->setPlaybackRate(I)V

    div-double/2addr v8, v0

    double-to-float p1, v8

    .line 585
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 587
    :cond_6
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSamplerate:I

    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->setPlaybackRate(I)V

    .line 588
    invoke-virtual {p0, v7}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    :cond_7
    if-le v4, v10, :cond_9

    if-nez v5, :cond_9

    cmpg-float p1, p1, v7

    if-gez p1, :cond_8

    div-double/2addr v8, v0

    double-to-float p1, v8

    .line 593
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 595
    :cond_8
    invoke-virtual {p0, v7}, Lcn/nubia/video/player/common/NubiaPlayer;->_setPlaySpeed(F)V

    :cond_9
    :goto_3
    return v6

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaySpeedChangeTime(III)V
    .locals 0

    .line 660
    iput p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    .line 661
    iput p2, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    .line 662
    iget p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mCameraFps:I

    if-lez p1, :cond_0

    .line 663
    iput p3, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mCameraFps:I

    :cond_0
    return-void
.end method

.method public setPlaySpeedParams(IIIJ)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 622
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    .line 623
    iput p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSlomoVideoType:I

    .line 624
    iput p2, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mFrameRate:I

    .line 625
    iput p3, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mRotation:I

    .line 626
    iput-wide p4, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mRecordTime:J

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "NubiaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is inteffective without a SurfaceHolder"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mScreenOnWhilePlaying:Z

    .line 253
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/common/NubiaPlayer;->_setVideoSurface(Landroid/view/Surface;)I

    .line 546
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    .line 220
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 224
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_start()I

    return-void

    :catchall_0
    move-exception v1

    .line 224
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public native stepToNextFrame()V
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcn/nubia/video/player/common/NubiaPlayer;->stayAwake(Z)V

    .line 231
    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->releaseAudioTrack()V

    .line 232
    invoke-virtual {p0}, Lcn/nubia/video/player/common/NubiaPlayer;->_stop()I

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcn/nubia/video/player/common/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    return v0
.end method

.method public unSelectTrack(ZZ)V
    .locals 0

    .line 341
    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/player/common/NubiaPlayer;->_unSelectTrack(ZZ)I

    return-void
.end method
