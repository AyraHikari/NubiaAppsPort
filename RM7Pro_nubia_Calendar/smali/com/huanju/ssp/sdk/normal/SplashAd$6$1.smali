.class Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/baidu/mobads/SplashLpCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADLoaded()V
    .locals 5

    .prologue
    .line 375
    const-string v0, "+++fetchBdSplashAD onADLoaded"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v3, "BDSplashAd"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method public onAdClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 384
    const-string v0, "+++fetchBdSplashAD onAdClick"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1302(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 386
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 388
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onClickAd(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, "+++fetchBdSplashAD onAdDismissed"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++fetchBdSplashAD onAdDismissed canJumpImmediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1800(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1700(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 352
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    goto :goto_0
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "+++fetchBdSplashAD onError"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, -0x5

    invoke-static {v0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1100(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 362
    return-void
.end method

.method public onAdPresent()V
    .locals 4

    .prologue
    .line 366
    const-string v0, "+++fetchBdSplashAD onAdPresent"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 368
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 369
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1600(Lcom/huanju/ssp/sdk/normal/SplashAd;J)V

    .line 371
    return-void
.end method

.method public onLpClosed()V
    .locals 1

    .prologue
    .line 340
    const-string v0, "+++fetchBdSplashAD onLpClosed"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1700(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    .line 342
    return-void
.end method
