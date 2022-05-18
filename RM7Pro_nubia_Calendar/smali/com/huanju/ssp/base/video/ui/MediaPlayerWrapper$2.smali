.class Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->onPrepareError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$000(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoPreparedMainThread"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$100(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, -0x3ec

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    .line 149
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$2;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$000(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<< run, onVideoPreparedMainThread"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
