.class Lcom/huanju/ssp/sdk/normal/SplashAd$1;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->requestShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 161
    const-string v0, "+++SplashAd requestAd run thread"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showtime"

    const-wide/16 v10, 0x0

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 164
    .local v8, "lastShowtime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++SplashAd requestShowAd lastShowtime: "

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

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "curTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++SplashAd requestShowAd curTime: "

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

    .line 168
    invoke-static {v8, v9, v2, v3}, Lcom/huanju/ssp/base/utils/SystemUtils;->isSameDayOfMillis(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->onAdClose(I)V

    .line 194
    .end local v8    # "lastShowtime":J
    :goto_0
    return-void

    .line 174
    .end local v2    # "curTime":J
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iget-object v10, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v10}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v10

    iget-object v10, v10, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdSlotidConfig(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++SplashAd requestAd mAdParameter.adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    .restart local v2    # "curTime":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    if-nez v0, :cond_1

    .line 179
    const-string v0, "+++SplashAd requestAd adslotconfig null:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$600(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 181
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$700(Lcom/huanju/ssp/sdk/normal/SplashAd;JJJ)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long v4, v0, v10

    .line 184
    .local v4, "st":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkEndTime:J

    const-wide/16 v10, 0x3e8

    mul-long v6, v0, v10

    .line 185
    .local v6, "et":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++SplashAd requestAd curTime:"

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

    .line 186
    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkSource:I

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$600(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 192
    :goto_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$700(Lcom/huanju/ssp/sdk/normal/SplashAd;JJJ)V

    goto/16 :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$600(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 190
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$800(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V

    goto :goto_1
.end method
