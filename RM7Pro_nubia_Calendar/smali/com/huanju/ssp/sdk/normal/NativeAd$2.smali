.class Lcom/huanju/ssp/sdk/normal/NativeAd$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(Lcom/huanju/ssp/sdk/listener/NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAd requestAd run thread adSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$200(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v8}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$300(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v8

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdSlotidConfig(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    .line 138
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdReportConfig()Ljava/lang/String;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "curTime":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "NativeAd requestAd adslotconfig null:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0, v9}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$400(Lcom/huanju/ssp/sdk/normal/NativeAd;I)V

    .line 143
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    move-wide v6, v4

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$500(Lcom/huanju/ssp/sdk/normal/NativeAd;JJJ)V

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkStartTime:J

    mul-long v4, v0, v10

    .line 146
    .local v4, "st":J
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkEndTime:J

    mul-long v6, v0, v10

    .line 147
    .local v6, "et":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAd requestAd curTime:"

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

    .line 148
    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->sdkSource:I

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$400(Lcom/huanju/ssp/sdk/normal/NativeAd;I)V

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$500(Lcom/huanju/ssp/sdk/normal/NativeAd;JJJ)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0, v9}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$400(Lcom/huanju/ssp/sdk/normal/NativeAd;I)V

    .line 152
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$600(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->delConfigbyId(Ljava/lang/String;)V

    goto :goto_1
.end method
