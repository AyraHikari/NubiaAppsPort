.class public interface abstract Lcom/huanju/ssp/base/video/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundThreadMediaPlayerListener"
.end annotation


# virtual methods
.method public abstract onErrorBackgroundThread(II)V
.end method

.method public abstract onVideoCompletionBackgroundThread()V
.end method

.method public abstract onVideoPreparedBackgroundThread()V
.end method

.method public abstract onVideoSizeChangedBackgroundThread(II)V
.end method
