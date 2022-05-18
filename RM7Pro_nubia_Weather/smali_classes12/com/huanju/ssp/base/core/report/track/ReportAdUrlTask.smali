.class public Lcom/huanju/ssp/base/core/report/track/ReportAdUrlTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "ReportAdUrlTask.java"


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 17
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlTask;->url:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 35
    return-void
.end method
