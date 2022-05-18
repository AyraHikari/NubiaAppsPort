.class Lcom/huanju/ssp/sdk/normal/SplashAd$2;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->requestAd(I)V
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
    .line 206
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++requestTTAD SplashAd requestAd type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$900(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$900(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)V

    goto :goto_0
.end method
