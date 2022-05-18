.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    .line 925
    const-string v0, "+++Express onAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 927
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 930
    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    .line 934
    const-string v0, "+++Express onAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 936
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 939
    :cond_0
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++Express onRenderFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 947
    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .prologue
    .line 951
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$1;->val$listener:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 954
    :cond_0
    return-void
.end method
