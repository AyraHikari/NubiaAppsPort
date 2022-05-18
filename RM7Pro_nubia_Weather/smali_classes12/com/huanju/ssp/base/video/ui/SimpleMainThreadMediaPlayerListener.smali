.class public Lcom/huanju/ssp/base/video/ui/SimpleMainThreadMediaPlayerListener;
.super Ljava/lang/Object;
.source "SimpleMainThreadMediaPlayerListener.java"

# interfaces
.implements Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdateMainThread(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 31
    return-void
.end method

.method public onErrorMainThread(II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 26
    return-void
.end method

.method public onVideoCompletionMainThread()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onVideoPreparedMainThread()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onVideoSizeChangedMainThread(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 11
    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
