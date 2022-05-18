.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setRewardAdInteractionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .prologue
    .line 616
    const-string v0, "+++loadTTAd onAdClose:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClose()V

    .line 620
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .prologue
    .line 598
    const-string v0, "+++loadTTAd onAdShow:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 600
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdShow()V

    .line 603
    :cond_0
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .prologue
    .line 607
    const-string v0, "+++loadTTAd onAdVideoBarClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 609
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClick()V

    .line 612
    :cond_0
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "rewardVerify"    # Z
    .param p2, "rewardAmount"    # I
    .param p3, "rewardName"    # Ljava/lang/String;
    .param p4, "errorCode"    # I
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 641
    const-string v0, "+++loadTTAd onRewardVerify:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVerify()V

    .line 645
    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .prologue
    .line 650
    const-string v0, "+++loadTTAd onSkippedVideo:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onSkippedVideo()V

    .line 654
    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .prologue
    .line 625
    const-string v0, "+++loadTTAd onVideoComplete:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onVideoComplete()V

    .line 629
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 1

    .prologue
    .line 633
    const-string v0, "+++loadTTAd onVideoError:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onVideoError()V

    .line 637
    :cond_0
    return-void
.end method
