.class Lcom/huanju/ssp/sdk/normal/NativeAd$6;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAdKS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestNativeAdKS onNativeFail reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    .line 242
    return-void
.end method

.method public onNativeAdLoad(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/kwad/sdk/api/KsNativeAd;>;"
    const/4 v5, -0x7

    .line 246
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++requestNativeAdKS onNativeLoad arg0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v3, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$1000(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 249
    .local v2, "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++requestNativeAdKS onNativeLoad parseData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 251
    .local v1, "ksNativeAd":Lcom/kwad/sdk/api/KsNativeAd;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v3, v3, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getReqId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->requestid:Ljava/lang/String;

    .line 253
    const/4 v0, 0x1

    .line 254
    .local v0, "is_download":I
    const/4 v3, 0x1

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 259
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++requestNativeAdKSonFeedAdLoad getInteractionType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",is_download:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v4, v4, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v5, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v6, "BDNative"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 261
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdReach(Ljava/util/List;)V

    .line 270
    .end local v0    # "is_download":I
    .end local v1    # "ksNativeAd":Lcom/kwad/sdk/api/KsNativeAd;
    .end local v2    # "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    :goto_1
    return-void

    .line 257
    .restart local v0    # "is_download":I
    .restart local v1    # "ksNativeAd":Lcom/kwad/sdk/api/KsNativeAd;
    .restart local v2    # "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    .end local v0    # "is_download":I
    :cond_1
    const-string v3, "+++requestNativeAdKS\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v3

    const-string v4, "+++requestNativeAdKS\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a"

    invoke-interface {v3, v4, v5}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    goto :goto_1

    .line 267
    .end local v1    # "ksNativeAd":Lcom/kwad/sdk/api/KsNativeAd;
    .end local v2    # "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    :cond_2
    const-string v3, "+++requestNativeAdKS\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a2"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v3}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v3

    const-string v4, "+++requestNativeAdKS\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a"

    invoke-interface {v3, v4, v5}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    goto :goto_1
.end method
