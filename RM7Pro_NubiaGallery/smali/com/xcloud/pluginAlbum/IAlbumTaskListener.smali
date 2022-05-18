.class public interface abstract Lcom/xcloud/pluginAlbum/IAlbumTaskListener;
.super Ljava/lang/Object;
.source "IAlbumTaskListener.java"


# virtual methods
.method public abstract onGetTaskListFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetTaskStatus(Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;)V
.end method

.method public abstract progressInterval()J
.end method
