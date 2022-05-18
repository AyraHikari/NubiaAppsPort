.class public interface abstract Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainThreadMediaPlayerListener"
.end annotation


# virtual methods
.method public abstract onBufferingUpdateMainThread(I)V
.end method

.method public abstract onErrorMainThread(II)V
.end method

.method public abstract onVideoCompletionMainThread()V
.end method

.method public abstract onVideoPreparedMainThread()V
.end method

.method public abstract onVideoSizeChangedMainThread(II)V
.end method

.method public abstract onVideoStoppedMainThread()V
.end method
