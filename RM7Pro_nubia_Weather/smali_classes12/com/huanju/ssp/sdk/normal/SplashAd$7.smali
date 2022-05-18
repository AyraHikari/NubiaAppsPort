.class Lcom/huanju/ssp/sdk/normal/SplashAd$7;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->requestTTFeedAd(Z)V
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
    .line 467
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestTTFeedAd onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, p2, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1100(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 473
    return-void
.end method

.method public onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 8
    .param p1, "ttSplashAd"    # Lcom/bytedance/sdk/openadsdk/TTSplashAd;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 486
    const-string v3, "+++requestTTFeedAd onSplashAdLoad"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2200(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    const-string v3, "+++requestTTFeedAd is time out close"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v3, v3, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 493
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 494
    const/4 v1, 0x1

    .line 495
    .local v1, "is_download":I
    const/4 v3, 0x4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getInteractionType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 496
    const/4 v1, 0x1

    .line 500
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++requestTTFeedAd onSplashAdLoad getInteractionType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getInteractionType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",is_download:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v4, v4, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v5, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v6, "TTSplashAd"

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 502
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v2

    .line 503
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 504
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020002

    .line 505
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 506
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 509
    .end local v0    # "contentView":Landroid/view/ViewGroup;
    :cond_1
    new-instance v3, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$7$1;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd$7;)V

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    .line 556
    new-instance v3, Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$7$2;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd$7;)V

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    goto/16 :goto_0

    .line 498
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 477
    const-string v0, "+++requestTTFeedAd onTimeout"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const-string v1, "time out"

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->onAdError(Ljava/lang/String;I)V

    .line 481
    return-void
.end method
