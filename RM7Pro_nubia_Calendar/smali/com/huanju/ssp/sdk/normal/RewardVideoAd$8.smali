.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->showKSRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
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
    .line 517
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .prologue
    .line 520
    const-string v0, "+++showKSRewardVideoAd onAdClicked:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 522
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClick()V

    .line 525
    :cond_0
    return-void
.end method

.method public onPageDismiss()V
    .locals 1

    .prologue
    .line 529
    const-string v0, "+++showKSRewardVideoAd onAdClose:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClose()V

    .line 533
    :cond_0
    return-void
.end method

.method public onRewardVerify()V
    .locals 1

    .prologue
    .line 563
    const-string v0, "+++showKSRewardVideoAd onRewardVerify:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVerify()V

    .line 567
    :cond_0
    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 1

    .prologue
    .line 545
    const-string v0, "+++showKSRewardVideoAd onVideoComplete:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onVideoComplete()V

    .line 549
    :cond_0
    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extra"    # I

    .prologue
    .line 537
    const-string v0, "+++showKSRewardVideoAd onVideoError:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onVideoError()V

    .line 541
    :cond_0
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 3

    .prologue
    .line 553
    const-string v0, "+++showKSRewardVideoAd onVideoPlayStart:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 556
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdShow()V

    .line 559
    :cond_0
    return-void
.end method
