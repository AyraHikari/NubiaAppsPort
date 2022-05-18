.class Lcom/huanju/ssp/sdk/normal/SplashAd$5;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->addKSView(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
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
    .line 263
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 266
    const-string v0, "+++requestKSSplashAd onAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1302(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 269
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 270
    return-void
.end method

.method public onAdShowEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    const-string v0, "+++requestKSSplashAd onAdShowEnd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-boolean v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 287
    :cond_1
    return-void
.end method

.method public onAdShowError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestKSSplashAd onAdShowError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, p2, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1100(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method public onAdShowStart()V
    .locals 4

    .prologue
    .line 292
    const-string v0, "+++requestKSSplashAd onAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 294
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 295
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1600(Lcom/huanju/ssp/sdk/normal/SplashAd;J)V

    .line 296
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/listener/AdListener;->onDisplayAd()V

    .line 299
    :cond_0
    return-void
.end method

.method public onSkippedAd()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 303
    const-string v0, "+++requestKSSplashAd onSkippedAd"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 308
    return-void
.end method
