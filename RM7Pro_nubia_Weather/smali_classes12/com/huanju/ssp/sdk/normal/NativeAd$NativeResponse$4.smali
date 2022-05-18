.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setTTDownListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onDownloadActive l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",l1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onDownloadFailed l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",l1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # J
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onDownloadFinished l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1074
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_0
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "s1"    # Ljava/lang/String;

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onDownloadPaused l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",l1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public onIdle()V
    .locals 1

    .prologue
    .line 1040
    const-string v0, "+++onIdle:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 1044
    :cond_0
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onInstalled  s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1083
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$4;->val$downloadListener:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_0
    return-void
.end method
