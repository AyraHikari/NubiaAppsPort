.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->regKsViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ad"    # Lcom/kwad/sdk/api/KsNativeAd;

    .prologue
    .line 980
    const-string v0, "+++onKSAdClicked"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 981
    if-eqz p2, :cond_0

    .line 982
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V

    .line 987
    :cond_1
    return-void
.end method

.method public onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/kwad/sdk/api/KsNativeAd;

    .prologue
    .line 991
    const-string v0, "+++onKSAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->reportTTAdImp(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;I)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$2;->val$adInteractionListener:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;->onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V

    .line 998
    :cond_1
    return-void
.end method
