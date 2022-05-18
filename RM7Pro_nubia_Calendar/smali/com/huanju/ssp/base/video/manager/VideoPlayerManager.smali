.class public interface abstract Lcom/huanju/ssp/base/video/manager/VideoPlayerManager;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/huanju/ssp/base/video/meta/MetaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract playNewVideo(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/huanju/ssp/base/video/ui/VideoPlayerView;",
            "Landroid/content/res/AssetFileDescriptor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract playNewVideo(Lcom/huanju/ssp/base/video/meta/MetaData;Lcom/huanju/ssp/base/video/ui/VideoPlayerView;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/huanju/ssp/base/video/ui/VideoPlayerView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetMediaPlayer()V
.end method

.method public abstract stopAnyPlayback()V
.end method
