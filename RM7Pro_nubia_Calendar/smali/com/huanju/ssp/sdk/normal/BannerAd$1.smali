.class Lcom/huanju/ssp/sdk/normal/BannerAd$1;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/BannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->isAttachToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$000(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/sdk/AdInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$300(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$100(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$200(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V

    .line 31
    :cond_0
    return-void
.end method
