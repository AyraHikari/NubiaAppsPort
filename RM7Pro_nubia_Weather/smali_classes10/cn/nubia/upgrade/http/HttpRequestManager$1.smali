.class Lcn/nubia/upgrade/http/HttpRequestManager$1;
.super Landroid/os/AsyncTask;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/http/HttpRequestManager;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extend:Z

.field final synthetic val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

.field final synthetic val$secretKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/http/HttpRequestManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/upgrade/http/HttpRequestManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->this$0:Lcn/nubia/upgrade/http/HttpRequestManager;

    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$extend:Z

    iput-object p5, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$appKey:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$secretKey:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 68
    new-instance v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->this$0:Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v3, v6}, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;-><init>(Lcn/nubia/upgrade/http/HttpRequestManager;)V

    .line 70
    .local v3, "resultInfo":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/upgrade/util/InfoCollect;->getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;

    move-result-object v1

    .line 71
    .local v1, "info":Lcn/nubia/upgrade/model/PostApkInfo;
    if-nez v1, :cond_0

    .line 72
    const-string v6, "HttpRequestManager"

    const-string v7, "create PostApkInfo instance fail."

    invoke-static {v6, v7}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 106
    .end local v3    # "resultInfo":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    :goto_0
    return-object v3

    .line 76
    .restart local v3    # "resultInfo":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 77
    goto :goto_0

    .line 81
    :cond_1
    :try_start_0
    iget-boolean v5, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$extend:Z

    if-eqz v5, :cond_2

    .line 82
    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getVersionURLWithConfig()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$appKey:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$secretKey:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v6, v7}, Lcn/nubia/upgrade/model/PostApkInfo;->getEncryptParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$appKey:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$secretKey:Ljava/lang/String;

    .line 81
    invoke-static {v5, v6, v7, v8}, Lcn/nubia/upgrade/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "jsonResult":Ljava/lang/String;
    const-string v5, "HttpRequestManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(respone)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v2, :cond_3

    const-string v5, "server_busy"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    const/16 v5, 0x7d4

    iput v5, v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    .line 88
    const-string v5, "HttpRequestManager"

    const-string v6, "(error) server_busy"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v2    # "jsonResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const-string v5, "HttpRequestManager"

    const-string v6, "(error) net error"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/16 v5, 0x3e8

    iput v5, v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getCheckVersionURL()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 97
    .restart local v2    # "jsonResult":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcn/nubia/upgrade/parser/VersionDataParser;->parse(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v4

    .line 99
    .local v4, "versionData":Lcn/nubia/upgrade/model/VersionData;
    if-nez v4, :cond_4

    .line 100
    const/16 v5, 0x3e9

    iput v5, v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    .line 101
    const-string v5, "HttpRequestManager"

    const-string v6, "parse VersionData error"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_4
    iput-object v4, v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    .line 104
    const/4 v5, 0x0

    iput v5, v3, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->doInBackground([Ljava/lang/Object;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 63
    return-void
.end method

.method protected onPostExecute(Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;)V
    .locals 2
    .param p1, "result"    # Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const-string v0, "HttpRequestManager"

    const-string v1, "getVersion result null."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_1
    iget v0, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iget-object v1, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iget v1, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->onPostExecute(Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;)V

    return-void
.end method
