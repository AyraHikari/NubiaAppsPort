.class public Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;
.super Ljava/lang/Object;
.source "LockScreenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/LockScreenAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockScreenResponse"
.end annotation


# instance fields
.field private imgPath:Ljava/lang/String;

.field private mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/LockScreenAd;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/LockScreenAd;
    .param p2, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->this$0:Lcom/huanju/ssp/sdk/normal/LockScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->imgPath:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 380
    return-void
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 401
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 418
    :goto_0
    return-object v2

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    if-ne v2, v4, :cond_2

    .line 406
    const-string v1, ""

    .line 407
    .local v1, "uriContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 408
    .local v0, "packname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClickUrl  start toAppStore start ad.dl_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    if-ne v2, v4, :cond_1

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&startDownload=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 412
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&startDownload=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 416
    .end local v0    # "packname":Ljava/lang/String;
    .end local v1    # "uriContent":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->imgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    iget-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    .line 468
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 471
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 462
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sp_request_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "requestid":Ljava/lang/String;
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    const-string v0, ""

    .line 430
    .local v0, "src":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 431
    const-string v0, "\u5e7f\u544a"

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 433
    const-string v0, "\u63a8\u5e7f"

    goto :goto_0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->sub_title:Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    .line 390
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmAdInfo()Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method public loadImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->mAdInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    iget-object v1, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    .line 485
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/LockScrImgLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getImgPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->imgPath:Ljava/lang/String;

    .line 495
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public setImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/LockScreenAd$LockScreenResponse;->imgPath:Ljava/lang/String;

    .line 480
    return-void
.end method
