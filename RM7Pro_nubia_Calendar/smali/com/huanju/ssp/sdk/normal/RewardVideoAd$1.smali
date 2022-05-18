.class Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;
.super Ljava/lang/Object;
.source "RewardVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->loadAndShowAd(I)V
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
    .line 75
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iput p2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 78
    const-string v0, "RewardVideoAd requestAd run thread"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$000(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showtime"

    const-wide/16 v10, 0x0

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 81
    .local v8, "lastShowtime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardVideoAd requestShowAd lastShowtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v9}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastShowtime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    .local v2, "curTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardVideoAd requestShowAd curTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",curTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 85
    invoke-static {v8, v9, v2, v3}, Lcom/huanju/ssp/base/utils/SystemUtils;->isSameDayOfMillis(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->onAdClose(I)V

    .line 111
    .end local v8    # "lastShowtime":J
    :goto_0
    return-void

    .line 91
    .end local v2    # "curTime":J
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iget-object v10, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v10}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$100(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v10

    iget-object v10, v10, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdSlotidConfig(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardVideoAd requestAd mAdParameter.adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$200(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    .restart local v2    # "curTime":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "RewardVideoAd requestAd adslotconfig null:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const/4 v1, 0x1

    iget v10, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->val$type:I

    invoke-static {v0, v1, v10}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$300(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;II)V

    .line 98
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$400(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;JJJ)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long v4, v0, v10

    .line 101
    .local v4, "st":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkEndTime:J

    const-wide/16 v10, 0x3e8

    mul-long v6, v0, v10

    .line 102
    .local v6, "et":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardVideoAd requestAd curTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",st:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",et:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 103
    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkSource:I

    iget v10, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->val$type:I

    invoke-static {v0, v1, v10}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$300(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;II)V

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$400(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;JJJ)V

    goto/16 :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    const/4 v1, 0x1

    iget v10, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->val$type:I

    invoke-static {v0, v1, v10}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$300(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;II)V

    .line 107
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->access$500(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V

    goto :goto_1
.end method
