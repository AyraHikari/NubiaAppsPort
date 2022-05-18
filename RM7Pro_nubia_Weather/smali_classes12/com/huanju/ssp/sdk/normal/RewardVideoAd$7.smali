.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->loadTTAd(Ljava/lang/String;II)V
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
    .line 423
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTTAd onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdError(ILjava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 5
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .prologue
    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTTAd onRewardVideoAdLoad mRewardVideoAdListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 447
    const/4 v0, 0x1

    .line 448
    .local v0, "is_download":I
    const/4 v1, 0x4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getInteractionType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 449
    const/4 v0, 0x1

    .line 453
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTTAd onRewardVideoAdLoad onRewardVideoAdLoad.getInteractionType():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getInteractionType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",is_download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v4, "TTRewardVideoAd"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 455
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v1, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$1002(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 456
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-virtual {v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->setRewardAdInteractionListener()V

    .line 457
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v1}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVideoAdLoad()V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$1000(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    new-instance v2, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7$1;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7$1;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 494
    return-void

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRewardVideoCached()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTTAd onRewardVideoCached mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVideoCached()V

    .line 439
    :cond_0
    return-void
.end method
