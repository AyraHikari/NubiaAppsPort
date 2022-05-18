.class Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;
.super Ljava/lang/Object;
.source "NativeAdImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/NativeAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeResponseWrapper"
.end annotation


# instance fields
.field private mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)V
    .locals 0
    .param p1, "nativeResponse"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)V

    return-void
.end method


# virtual methods
.method public bdAdShow()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bdAdShow()V

    .line 516
    :cond_0
    return-void
.end method

.method public bindKsDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .locals 1
    .param p1, "ksAppDownloadListener"    # Lcom/kwad/sdk/api/KsAppDownloadListener;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindKsDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 603
    :cond_0
    return-void
.end method

.method public varargs bindingImgUrl([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindingImgUrl([I)V

    .line 166
    :cond_0
    return-void
.end method

.method public bindingSource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindingSource(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public bindingSub_title(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeResponseWrapper.bindingSub_title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindingSub_title(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public bindingTitle(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeResponseWrapper.bindingTitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->bindingTitle(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public closeClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "reason"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->closeClick(Landroid/view/View;ILjava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method public downloadClick(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->downloadClick(Landroid/view/View;IIII)V

    .line 259
    :cond_0
    return-void
.end method

.method public getAdLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getAdNativeSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getAdNativeSource()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getAdSource()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getAdView()Landroid/view/View;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBDResponse()Lcom/baidu/mobad/feeds/NativeResponse;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getBDResponse()Lcom/baidu/mobad/feeds/NativeResponse;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaiduLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getBrandName()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1
    .param p1, "ttDislikeDialogAbstract"    # Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getDownloadAppName()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getFilterWords()Ljava/util/List;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getH()I

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getImageList()Ljava/util/List;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getInteractionType()I

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKsNattivedAd()Lcom/kwad/sdk/api/KsNativeAd;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getKsNattivedAd()Lcom/kwad/sdk/api/KsNativeAd;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiPicUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoftSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSoftSrc()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoSrc()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSspVideoUrlMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSspVideoUrlMd5()Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "NativeResponseWrapper.getSubTitle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTTFeedAd()Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getTTFeedAd()Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTTIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getTTIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "NativeResponseWrapper.getTitle"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getType()I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getW()I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleClick(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->handleClick(Landroid/view/View;IIII)V

    .line 252
    :cond_0
    return-void
.end method

.method public isDownloadApp()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->isDownloadApp()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "imageUrls"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 245
    :cond_0
    return-void
.end method

.method public recycleImage(Landroid/view/View;)V
    .locals 1
    .param p1, "imageView"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->recycleImage(Landroid/view/View;)V

    .line 344
    :cond_0
    return-void
.end method

.method public regKsViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adInteractionListener"    # Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 607
    .local p2, "clickViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->regKsViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    .line 610
    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "listen"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "clickViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "creativeViewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 359
    :cond_0
    return-void
.end method

.method public renderExpress()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->renderExpress()V

    .line 559
    :cond_0
    return-void
.end method

.method public scrollIdle(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->scrollIdle(Landroid/support/v7/widget/RecyclerView;)V

    .line 581
    :cond_0
    return-void
.end method

.method public scrollIdle(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->scrollIdle(Landroid/widget/ListView;)V

    .line 574
    :cond_0
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 395
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 398
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dislikeInteractionCallback"    # Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 530
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1
    .param p1, "dislikeDialog"    # Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 537
    :cond_0
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 552
    :cond_0
    return-void
.end method

.method public setImagsBindDataProxy(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "imagsBindDataProxy":Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy<[Landroid/view/View;[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setImagsBindDataProxy(Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setKsVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .locals 1
    .param p1, "videoPlayListener"    # Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setKsVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setTTDownListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1
    .param p1, "downloadListener"    # Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setTTDownListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 523
    :cond_0
    return-void
.end method

.method public setTitlBindDataProxy(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "titleBindDataProxy":Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;, "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    new-instance v1, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$BindDataProxyWrapper;-><init>(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;Lcom/huanju/ssp/sdk/inf/NativeAdImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setTitlBindDataProxy(Lcom/huanju/ssp/sdk/normal/NativeAd$BindDataProxy;)V

    .line 238
    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/NativeAdImpl$NativeResponseWrapper;->mNativeResponse:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 413
    :cond_0
    return-void
.end method
