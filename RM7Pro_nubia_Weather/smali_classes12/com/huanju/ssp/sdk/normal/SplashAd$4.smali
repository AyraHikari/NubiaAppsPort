.class Lcom/huanju/ssp/sdk/normal/SplashAd$4;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->requestKSSplashAd(Ljava/lang/String;)V
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
    .line 245
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestKSSplashAd onError code:"

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

    .line 249
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, -0x5

    invoke-static {v0, p2, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1100(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method public onSplashScreenAdLoad(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .locals 5
    .param p1, "splashScreenAd"    # Lcom/kwad/sdk/api/KsSplashScreenAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    const-string v0, "+++requestKSSplashAd onSplashScreenAdLoad"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v3, "KSSplashAd"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V

    .line 256
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1200(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    .line 257
    return-void
.end method
