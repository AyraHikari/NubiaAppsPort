.class public Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "DexUpdateProcessor.java"


# static fields
.field public static final CSDK_VER:Ljava/lang/String; = "csdk"

.field private static final DEX_LOAD_INTERVAL:Ljava/lang/String; = "dex_load_interval"

.field public static final DEX_LOAD_TIME:Ljava/lang/String; = "dex_load_time"

.field public static final DEX_MD5:Ljava/lang/String; = "dex_md5"

.field public static final DEX_NEED_UPDATE:Ljava/lang/String; = "dex_need_update"

.field public static final DEX_URL:Ljava/lang/String; = "dex_url"

.field public static final DEX_VER:Ljava/lang/String; = "dex_vr"

.field public static final SDK_VER:Ljava/lang/String; = "sdk_version"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 51
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateTask;-><init>()V

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
    .locals 8
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 56
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "res_json":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res_json: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    const-string v5, "json is null"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "errorCode":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    const-string v5, "\u8fd4\u56de\u6570\u636e\u51fa\u73b0\u9519\u8bef"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error_code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "status":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check hotfix switch status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    if-ne v4, v7, :cond_2

    .line 76
    const-string v5, "dex_update_switch"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const-string v5, "qingqiu complete "

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v5, "dex_update_switch"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
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
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    .line 122
    return-void
.end method
