.class Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd$7;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestTTFeedAd onDownloadActive l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",:s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string v0, "+++requestTTFeedAd onDownloadFailed"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # J
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "+++requestTTFeedAd onDownloadFinished"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 581
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string v0, "+++requestTTFeedAd onDownloadPaused"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public onIdle()V
    .locals 1

    .prologue
    .line 559
    const-string v0, "onIdle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 585
    const-string v0, "+++requestTTFeedAd onInstalled"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 587
    return-void
.end method
