.class public Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "ModuleUpdateProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 53
    return-void
.end method

.method private needUpdate()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateTask;-><init>()V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 0
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 92
    const-string v0, "----- onErrorReceived -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- eroCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- eroMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "----- onNetworkError -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public process()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;->needUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "\u4e0d\u7b26\u5408\u66f4\u65b0dex\u63a5\u53e3\u6761\u4ef6\uff0c\u4e2d\u65ad\u8bf7\u6c42"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    goto :goto_0
.end method
