.class Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "ReportErrorTask.java"


# instance fields
.field private mEntity:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 21
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;->mUrl:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;->mEntity:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;->mEntity:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
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
    .line 42
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 47
    return-void
.end method
