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
.field final synthetic a:Lcn/nubia/upgrade/http/IGetVersionListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/nubia/upgrade/http/HttpRequestManager;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/http/HttpRequestManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->f:Lcn/nubia/upgrade/http/HttpRequestManager;

    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->c:Z

    iput-object p5, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 68
    new-instance v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->f:Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v1, v2}, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;-><init>(Lcn/nubia/upgrade/http/HttpRequestManager;)V

    .line 70
    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/upgrade/util/InfoCollect;->getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;

    move-result-object v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    const-string v1, "HttpRequestManager"

    const-string v2, "create PostApkInfo instance fail."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->c:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getVersionURLWithConfig()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->e:Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v3, v4}, Lcn/nubia/upgrade/model/PostApkInfo;->getEncryptParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->e:Ljava/lang/String;

    .line 81
    invoke-static {v0, v2, v3, v4}, Lcn/nubia/upgrade/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v2, "HttpRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(respone)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v0, :cond_3

    const-string v2, "server_busy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const/16 v0, 0x7d4

    iput v0, v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    .line 88
    const-string v0, "HttpRequestManager"

    const-string v2, "(error) server_busy"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getCheckVersionURL()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const-string v0, "HttpRequestManager"

    const-string v2, "(error) net error"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/16 v0, 0x3e8

    iput v0, v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v0}, Lcn/nubia/upgrade/parser/VersionDataParser;->parse(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    const/16 v0, 0x3e9

    iput v0, v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    .line 101
    const-string v0, "HttpRequestManager"

    const-string v2, "parse VersionData error"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 103
    :cond_4
    iput-object v0, v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    .line 104
    const/4 v0, 0x0

    iput v0, v1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    goto :goto_2
.end method

.method protected a(Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

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
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    iget-object v1, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    iget v1, p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a([Ljava/lang/Object;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

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

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/HttpRequestManager$1;->a(Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;)V

    return-void
.end method
