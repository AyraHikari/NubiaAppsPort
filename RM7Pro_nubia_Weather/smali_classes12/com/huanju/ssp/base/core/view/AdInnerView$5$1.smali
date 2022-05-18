.class Lcom/huanju/ssp/base/core/view/AdInnerView$5$1;
.super Ljava/lang/Object;
.source "AdInnerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/AdInnerView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/base/core/view/AdInnerView$5;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/AdInnerView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/base/core/view/AdInnerView$5;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$5$1;->this$1:Lcom/huanju/ssp/base/core/view/AdInnerView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    const-string v0, "customVideoView onError delete file"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$5$1;->this$1:Lcom/huanju/ssp/base/core/view/AdInnerView$5;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/AdInnerView$5;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 285
    return-void
.end method
