.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ttNativeAd"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .prologue
    .line 1008
    const-string v0, "+++onAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1010
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 1013
    :cond_0
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ttNativeAd"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .prologue
    .line 1017
    const-string v0, "+++onAdCreativeClick"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1019
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3
    .param p1, "ttNativeAd"    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .prologue
    .line 1026
    const-string v0, "+++onAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 1028
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$3;->val$listen:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 1031
    :cond_0
    return-void
.end method
