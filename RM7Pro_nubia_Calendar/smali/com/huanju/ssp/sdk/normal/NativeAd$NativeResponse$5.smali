.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindKsDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 1

    .prologue
    .line 1326
    const-string v0, "+++bindKsDownloadListener onDownloadFailed"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadFailed()V

    .line 1330
    :cond_0
    return-void
.end method

.method public onDownloadFinished()V
    .locals 3

    .prologue
    .line 1308
    const-string v0, "+++bindKsDownloadListener onDownloadFinished"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1309
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1310
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadFinished()V

    .line 1313
    :cond_0
    return-void
.end method

.method public onDownloadStarted()V
    .locals 1

    .prologue
    .line 1292
    const-string v0, "+++bindKsDownloadListener onDownloadStarted"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadStarted()V

    .line 1296
    :cond_0
    return-void
.end method

.method public onIdle()V
    .locals 1

    .prologue
    .line 1284
    const-string v0, "+++bindKsDownloadListener onIdle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onIdle()V

    .line 1288
    :cond_0
    return-void
.end method

.method public onInstalled()V
    .locals 3

    .prologue
    .line 1317
    const-string v0, "+++bindKsDownloadListener onInstalled"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1319
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onInstalled()V

    .line 1322
    :cond_0
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1300
    const-string v0, "+++bindKsDownloadListener onProgressUpdate"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$5;->val$ksAppDownloadListener:Lcom/kwad/sdk/api/KsAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onProgressUpdate(I)V

    .line 1304
    :cond_0
    return-void
.end method
