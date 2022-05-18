.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/baidu/mobads/rewardvideo/RewardVideoAd$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestBDadReward(I)V
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
    .line 224
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "+++requestBDadReward onAdClick:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 238
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClick()V

    .line 241
    :cond_0
    return-void
.end method

.method public onAdClose(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 245
    const-string v0, "+++requestBDadReward onAdClose:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdClose()V

    .line 249
    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestBDadReward onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdError(ILjava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .prologue
    .line 227
    const-string v0, "+++requestBDadReward onAdShow:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdShow()V

    .line 232
    :cond_0
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "+++requestBDadReward onVideoDownloadFailed:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    const/4 v1, -0x1

    const-string v2, "onVideoDownloadFailed"

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdError(ILjava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 5

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTTAd onRewardVideoCached mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 270
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v3, "TTRewardVideoAd"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 271
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVideoCached()V

    .line 274
    :cond_0
    return-void
.end method

.method public playCompletion()V
    .locals 1

    .prologue
    .line 286
    const-string v0, "+++requestBDadReward onVideoComplete:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onVideoComplete()V

    .line 289
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVerify()V

    .line 291
    :cond_0
    return-void
.end method
