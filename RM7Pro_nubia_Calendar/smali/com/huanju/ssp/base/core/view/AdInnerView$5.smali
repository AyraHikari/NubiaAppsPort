.class Lcom/huanju/ssp/base/core/view/AdInnerView$5;
.super Ljava/lang/Object;
.source "AdInnerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/AdInnerView;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$5;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$5;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$100(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/view/CustomVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->stopPlayback()V

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huanju/ssp/base/core/view/AdInnerView$5$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$5$1;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    const/4 v0, 0x1

    return v0
.end method
