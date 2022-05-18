.class public interface abstract Lcn/nubia/video/player/common/Utils$MediaPlayerControl;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/common/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract canPause()Z
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isInPauseState()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract start()V
.end method
