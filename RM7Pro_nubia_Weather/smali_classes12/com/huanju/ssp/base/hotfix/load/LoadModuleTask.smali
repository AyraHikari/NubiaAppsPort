.class Lcom/huanju/ssp/base/hotfix/load/LoadModuleTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "LoadModuleTask.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
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
    .line 28
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v0

    iget-object v0, v0, Lcom/huanju/ssp/base/hotfix/DexManager;->mApkUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 33
    return-void
.end method
