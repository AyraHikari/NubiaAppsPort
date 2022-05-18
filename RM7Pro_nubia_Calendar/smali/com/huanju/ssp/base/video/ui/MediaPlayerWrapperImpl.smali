.class public Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapperImpl;
.super Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
.source "MediaPlayerWrapperImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;-><init>(Landroid/media/MediaPlayer;)V

    .line 9
    return-void
.end method
