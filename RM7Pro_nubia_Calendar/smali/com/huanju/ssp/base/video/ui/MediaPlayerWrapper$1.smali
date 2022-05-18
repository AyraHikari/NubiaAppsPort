.class Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
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
    .line 85
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$000(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoPreparedMainThread"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$100(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoPreparedMainThread()V

    .line 90
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$1;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$000(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<< run, onVideoPreparedMainThread"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method
