.class Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd$7;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 513
    const-string v0, "+++requestTTFeedAd onAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 515
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, p2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onClickAd(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 524
    const-string v0, "+++requestTTFeedAd onAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 526
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 527
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1600(Lcom/huanju/ssp/sdk/normal/SplashAd;J)V

    .line 528
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/listener/AdListener;->onDisplayAd()V

    .line 532
    :cond_0
    return-void
.end method

.method public onAdSkip()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 536
    const-string v0, "+++requestTTFeedAd onAdSkip"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 543
    return-void
.end method

.method public onAdTimeOver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    const-string v0, "+++requestTTFeedAd onAdTimeOver"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;->this$1:Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 554
    return-void
.end method
