.class public interface abstract Lcn/nubia/video/mediajni/IMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;,
        Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final KEY_DEGREES:Ljava/lang/String; = "degrees"

.field public static final KEY_FRAME_RATE:Ljava/lang/String; = "frame_rate"

.field public static final KEY_IS_SLOMO_VIDEO:Ljava/lang/String; = "is_slomo_video"

.field public static final KEY_SLOMO_VIDEO_RECORD_TIME:Ljava/lang/String; = "slow_video_record_time"

.field public static final KEY_SLOW_PLAY_END_TIME:Ljava/lang/String; = "slow_play_end_time"

.field public static final KEY_SLOW_PLAY_START_TIME:Ljava/lang/String; = "slow_play_start_time"


# virtual methods
.method public abstract getAudioTrackCount(Landroid/content/Context;)I
.end method

.method public abstract getAudioTrackIndex()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFrameRate()I
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getPlaySpeedChangeEndTime()I
.end method

.method public abstract getPlaySpeedChangeStartTime()I
.end method

.method public abstract getRecordTime()J
.end method

.method public abstract getRotation()I
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract getSlomoSkipCount()I
.end method

.method public abstract getSlomoVideoType()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract is30FpsSlomoVideo()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAdjustDegree(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setAudioTrack(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
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
.end method

.method public abstract setDataSource(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;JJ)V
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setPlaySpeed(F)Z
.end method

.method public abstract setPlaySpeedChangeTime(III)V
.end method

.method public abstract setPlaySpeedParams(IIIJ)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract supportPlaySpeedShift()Z
.end method

.method public abstract unSelectTrack(ZZ)V
.end method
