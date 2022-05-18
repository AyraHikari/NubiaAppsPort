.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
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
    .line 285
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->showAdView()Z

    move-result v3

    iput-boolean v3, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdReach    isShow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v3, v3, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->readCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "threadLog":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "\u5c55\u793a\u5e7f\u544a\u5931\u8d25"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
