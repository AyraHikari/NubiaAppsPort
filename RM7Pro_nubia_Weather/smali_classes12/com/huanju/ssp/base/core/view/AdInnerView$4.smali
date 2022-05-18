.class Lcom/huanju/ssp/base/core/view/AdInnerView$4;
.super Ljava/lang/Object;
.source "AdInnerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/AdInnerView;->showView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customVideoView ad.videoTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$000(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 269
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$000(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$100(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/view/CustomVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->getDuration()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    .line 270
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customVideoView ad.videoTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$4;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$000(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 274
    return-void
.end method
