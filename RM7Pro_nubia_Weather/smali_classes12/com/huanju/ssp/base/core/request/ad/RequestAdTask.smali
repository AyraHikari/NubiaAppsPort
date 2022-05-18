.class Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "RequestAdTask.java"


# instance fields
.field private parameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    .prologue
    .line 30
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 31
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;->parameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    .line 32
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;->parameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v1, ""

    .line 50
    .local v1, "jsonData":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdTask;->parameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->getParams(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestAdTask params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/HttpUrlSetting;->getRequestAdUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .end local v2    # "params":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v3, ""

    goto :goto_0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 63
    return-void
.end method
