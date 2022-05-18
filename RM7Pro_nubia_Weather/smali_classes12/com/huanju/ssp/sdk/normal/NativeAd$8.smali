.class Lcom/huanju/ssp/sdk/normal/NativeAd$8;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestTTNativeExpress()V
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
    .line 389
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFeedAdLoad onError() code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-virtual {v0, p2, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->onAdError(Ljava/lang/String;I)V

    .line 395
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;>;"
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$8$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$8;Ljava/util/List;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method
