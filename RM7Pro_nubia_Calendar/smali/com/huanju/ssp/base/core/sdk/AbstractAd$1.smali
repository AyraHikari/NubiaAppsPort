.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd;->showDefaultAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 216
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    .line 217
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->showAdView()Z

    move-result v1

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdReach    isShow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v1, v1, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 219
    return-void
.end method
