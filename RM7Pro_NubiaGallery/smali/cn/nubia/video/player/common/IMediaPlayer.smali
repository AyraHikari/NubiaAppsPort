.class public interface abstract Lcn/nubia/video/player/common/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;,
        Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAdjustDegree(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setAudioTrack(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V
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

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract supportPlaySpeedShift()Z
.end method
