.class public Lcn/nubia/video/mediajni/NubiaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediajni/NubiaPlayer$NativeGetAudioBufferCallback;,
        Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;
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

.field private mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

.field private mFrameRate:I

.field private mHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mOnBufferingUpdateListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

.field private mOnSeekCompleteListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

.field private mOnpreparedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

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

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/nubia/video/mediajni/NubiaPlayer;->_native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    .line 4
    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSlomoVideoType:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mFrameRate:I

    .line 6
    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mRotation:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    const-wide/16 v2, -0x1

    .line 8
    iput-wide v2, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mRecordTime:J

    .line 9
    iput v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    .line 10
    iput v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    .line 11
    iput v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mCameraFps:I

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;-><init>(Lcn/nubia/video/mediajni/NubiaPlayer;Lcn/nubia/video/mediajni/NubiaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v1, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;-><init>(Lcn/nubia/video/mediajni/NubiaPlayer;Lcn/nubia/video/mediajni/NubiaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private static final native _native_init()V
.end method

.method private native _native_setup(Ljava/lang/Object;)V
.end method

.method private native _setAudioplay(Lcn/nubia/video/mediajni/NubiaPlayer$NativeGetAudioBufferCallback;)V
.end method

.method static synthetic access$000(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/video/mediajni/NubiaPlayer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/video/mediajni/NubiaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/mediajni/NubiaPlayer;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/mediajni/NubiaPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mStayAwake:Z

    return p0
.end method

.method private getChannelConfig()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getChannels()I

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

    .line 2
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

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/mediajni/NubiaPlayer;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private releaseAudioTrack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 5
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

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getSampleRate()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSamplerate:I

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->getChannelConfig()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mChanneltype:I

    if-ltz v0, :cond_2

    .line 3
    iget v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSamplerate:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 4
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->minbufsize:I

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSamplerate:I

    iget v5, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mChanneltype:I

    const/4 v6, 0x2

    iget v7, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->minbufsize:I

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 8
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v0, Lcn/nubia/video/mediajni/NubiaPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediajni/NubiaPlayer$1;-><init>(Lcn/nubia/video/mediajni/NubiaPlayer;)V

    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setAudioplay(Lcn/nubia/video/mediajni/NubiaPlayer$NativeGetAudioBufferCallback;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 11
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

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 3
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

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mStayAwake:Z

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mStayAwake:Z

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

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getAudioTrackCount()I

    move-result p1

    return p1
.end method

.method public getAudioTrackIndex()I
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getAudioTrackIndex(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameInterval()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getFrameInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getFrameRate()I

    move-result v0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mRecordTime:J

    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getRotation()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getSampleRate()I

    move-result v0

    return v0
.end method

.method public getSlomoSkipCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mCameraFps:I

    div-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSlomoVideoType:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_getVideoWidth()I

    move-result v0

    return v0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->getFrameRate()I

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

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_pause()I

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_prepare()I

    return-void
.end method

.method public prepareAsync()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_prepare()I

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnBufferingUpdateListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    .line 5
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;

    .line 6
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    .line 7
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnInfoListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

    .line 8
    iput-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->releaseAudioTrack()V

    .line 10
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_release()V

    .line 11
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 12
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mEventHandler:Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->releaseAudioTrack()V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_reset()I

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_resume()I

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_seekTo(I)V

    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setAdjustDegree(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAudioTrack(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setAudioTrack(I)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->releaseAudioTrack()V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->setAudioplay()I

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

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

    .line 2
    invoke-static {p1, p2}, Lcn/nubia/video/mediajni/common/VideoUtils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcn/nubia/video/mediajni/NubiaPlayer;->setDataSource(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    const/16 p2, 0x64

    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setDataSource(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->setAudioplay()I

    :goto_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open file path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setVideoSurface(Landroid/view/Surface;)I

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnBufferingUpdateListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnCompletionListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnErrorListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnInfoListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnpreparedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mOnVideoSizeChangedListener:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 11

    .line 1
    iget v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mFrameRate:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 2
    iget-object v4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3
    :try_start_0
    iget-object v5, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 4
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->is30FpsSlomoVideo()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    iget v4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSlomoVideoType:I

    if-ne v4, v6, :cond_3

    cmpg-float p1, p1, v7

    if-gez p1, :cond_1

    const/high16 p1, 0x3e800000    # 0.25f

    .line 6
    iput p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    goto :goto_1

    .line 7
    :cond_1
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mCameraFps:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 8
    iput v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    .line 9
    :cond_2
    :goto_1
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->is30FpsSlomoVideo()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSlomoVideoType:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    cmpg-float p1, p1, v7

    if-gez p1, :cond_4

    .line 11
    iput v7, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    goto :goto_2

    .line 12
    :cond_4
    iput v7, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    .line 13
    :goto_2
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlayerSpeed:F

    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 14
    :cond_5
    iget v4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mFrameRate:I

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v10, 0x3c

    if-le v4, v10, :cond_7

    if-eqz v5, :cond_7

    int-to-double v0, v4

    div-double/2addr v0, v2

    cmpg-float p1, p1, v7

    if-gez p1, :cond_6

    .line 15
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSamplerate:I

    int-to-double v2, p1

    div-double/2addr v2, v0

    double-to-int p1, v2

    invoke-direct {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->setPlaybackRate(I)V

    div-double/2addr v8, v0

    double-to-float p1, v8

    .line 16
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 17
    :cond_6
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSamplerate:I

    invoke-direct {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->setPlaybackRate(I)V

    .line 18
    invoke-virtual {p0, v7}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    :cond_7
    if-le v4, v10, :cond_9

    if-nez v5, :cond_9

    cmpg-float p1, p1, v7

    if-gez p1, :cond_8

    div-double/2addr v8, v0

    double-to-float p1, v8

    .line 19
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {p0, v7}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setPlaySpeed(F)V

    :cond_9
    :goto_3
    return v6

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaySpeedChangeTime(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeStartTime:I

    .line 2
    iput p2, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mPlaySpeedChangeEndTime:I

    .line 3
    iget p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mCameraFps:I

    if-lez p1, :cond_0

    .line 4
    iput p3, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mCameraFps:I

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

    .line 1
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    .line 2
    iput p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSlomoVideoType:I

    .line 3
    iput p2, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mFrameRate:I

    .line 4
    iput p3, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mRotation:I

    .line 5
    iput-wide p4, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mRecordTime:J

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "NubiaPlayer"

    const-string v1, "setScreenOnWhilePlaying(true) is inteffective without a SurfaceHolder"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mScreenOnWhilePlaying:Z

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setVideoSurface(Landroid/view/Surface;)I

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/mediajni/NubiaPlayer;->_setVideoEffect(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_start()I

    return-void

    :catchall_0
    move-exception v1

    .line 7
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->stayAwake(Z)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->releaseAudioTrack()V

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/mediajni/NubiaPlayer;->_stop()I

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer;->mbEnablePlaySpeedShift:Z

    return v0
.end method

.method public unSelectTrack(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/mediajni/NubiaPlayer;->_unSelectTrack(ZZ)I

    return-void
.end method
