.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestAd(II)V
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
    .line 163
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iput p2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashAd requestAd requestTTFeedAd type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;->val$type:I

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$800(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    .line 168
    return-void
.end method
