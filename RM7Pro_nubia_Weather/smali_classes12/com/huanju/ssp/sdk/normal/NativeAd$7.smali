.class Lcom/huanju/ssp/sdk/normal/NativeAd$7;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/baidu/mobad/feeds/BaiduNative$BaiduNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAdBaidu(Ljava/lang/String;)V
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
    .line 292
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/baidu/mobad/feeds/NativeErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcom/baidu/mobad/feeds/NativeErrorCode;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAdBaidu onNativeFail reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobad/feeds/NativeErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$7;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobad/feeds/NativeErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobad/feeds/NativeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mobad/feeds/NativeResponse;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAdBaidu onNativeLoad arg0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 304
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$7$1;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$7$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$7;Ljava/util/List;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
