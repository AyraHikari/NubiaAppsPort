.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestKSadReward(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iput p2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestKSadReward onError code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onAdError(ILjava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onRewardVideoAdLoad(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/kwad/sdk/api/KsRewardVideoAd;>;"
    const/4 v2, 0x1

    .line 201
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {v1, v0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$902(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;Lcom/kwad/sdk/api/KsRewardVideoAd;)Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 203
    iget v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->val$type:I

    if-ne v0, v2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKsVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    .line 210
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestKSadReward onRewardVideoAdLoad mRewardVideoAdListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v3, "TTRewardVideoAd"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;->onRewardVideoAdLoad()V

    .line 217
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    new-instance v1, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    .line 207
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->showLandscape(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKsVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    goto :goto_0
.end method
