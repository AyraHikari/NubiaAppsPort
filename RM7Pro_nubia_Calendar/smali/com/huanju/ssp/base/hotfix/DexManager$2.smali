.class Lcom/huanju/ssp/base/hotfix/DexManager$2;
.super Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/hotfix/DexManager;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/hotfix/DexManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/hotfix/DexManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/hotfix/DexManager;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 9
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;->onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V

    .line 162
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/Utils;->decodeResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "res_json":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    const-string v7, "json is null"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request complete res_json:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 169
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 171
    const-string v7, "jsonObject is null"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    .line 175
    .local v0, "code":I
    const-string v4, ""

    .line 176
    .local v4, "message":Ljava/lang/String;
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    :cond_3
    const-string v7, "message"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 180
    const-string v7, "message"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_4
    const/16 v7, 0x7d1

    if-eq v0, v7, :cond_5

    const/16 v7, 0x7d2

    if-eq v0, v7, :cond_5

    const/16 v7, 0x7d3

    if-eq v0, v7, :cond_5

    const/16 v7, 0x7d4

    if-ne v0, v7, :cond_6

    .line 183
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "module update code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_6
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 187
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 188
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 189
    const-string v6, ""

    .line 190
    .local v6, "version":Ljava/lang/String;
    const-string v7, "to_version_code"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 191
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    const-string v8, "to_version_code"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/huanju/ssp/base/hotfix/DexManager;->mCode:I

    .line 193
    :cond_7
    const-string v7, "apk_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 194
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    const-string v8, "apk_url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/huanju/ssp/base/hotfix/DexManager;->mApkUrl:Ljava/lang/String;

    .line 196
    :cond_8
    const-string v7, "version"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 197
    const-string v7, "version"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    :cond_9
    const-string v7, "check_sum_new"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 200
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    const-string v8, "check_sum_new"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/huanju/ssp/base/hotfix/DexManager;->mCheckSume:Ljava/lang/String;

    .line 202
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "module update mCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    iget v8, v8, Lcom/huanju/ssp/base/hotfix/DexManager;->mCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mApkUrl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    iget-object v8, v8, Lcom/huanju/ssp/base/hotfix/DexManager;->mApkUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 203
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    iget-object v7, v7, Lcom/huanju/ssp/base/hotfix/DexManager;->mApkUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    iget v7, v7, Lcom/huanju/ssp/base/hotfix/DexManager;->mCode:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 204
    new-instance v3, Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;

    invoke-direct {v3}, Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;-><init>()V

    .line 205
    .local v3, "loadModuleProcessor":Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/DexManager$2;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    invoke-static {v7}, Lcom/huanju/ssp/base/hotfix/DexManager;->access$000(Lcom/huanju/ssp/base/hotfix/DexManager;)Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;->setNetTaskManager(Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;)V

    .line 206
    invoke-virtual {v3}, Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;->process()V

    goto/16 :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 0
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;->onErrorReceived(Ljava/lang/String;I)V

    .line 216
    return-void
.end method
