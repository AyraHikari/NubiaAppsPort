.class Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$8;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$8;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 402
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->val$list:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$1200(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 403
    .local v1, "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 405
    const/4 v0, 0x1

    .line 406
    .local v0, "is_download":I
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->val$list:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 411
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFeedAdLoad getInteractionType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->val$list:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",is_download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iget-object v3, v3, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v3, v3, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v4, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v5, "TTFeedAd"

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 413
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onTTAdExpressReach(Ljava/util/List;)V

    .line 417
    .end local v0    # "is_download":I
    :goto_1
    return-void

    .line 409
    .restart local v0    # "is_download":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    .end local v0    # "is_download":I
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$8;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v2

    const-string v3, "\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a"

    const/4 v4, -0x7

    invoke-interface {v2, v3, v4}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    goto :goto_1
.end method
