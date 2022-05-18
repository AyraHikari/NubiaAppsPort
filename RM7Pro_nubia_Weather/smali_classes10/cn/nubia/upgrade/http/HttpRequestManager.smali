.class public Lcn/nubia/upgrade/http/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpRequestManager"


# instance fields
.field private mHttpRequesTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private declared-synchronized getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p4, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;
    .param p5, "extend"    # Z

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager;->mHttpRequesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager;->mHttpRequesTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 43
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/http/HttpRequestManager$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/nubia/upgrade/http/HttpRequestManager$1;-><init>(Lcn/nubia/upgrade/http/HttpRequestManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager;->mHttpRequesTask:Landroid/os/AsyncTask;

    .line 109
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpRequestManager;->mHttpRequesTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getVersion(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    .locals 7
    .param p1, "info"    # Lcn/nubia/upgrade/model/PostApkInfo;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v2, 0x0

    .line 136
    :goto_0
    return-object v2

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "jsonResult":Ljava/lang/String;
    new-instance v2, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    invoke-direct {v2, p0}, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;-><init>(Lcn/nubia/upgrade/http/HttpRequestManager;)V

    .line 120
    .local v2, "resultInfo":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    :try_start_0
    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getCheckVersionURL()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {p1, p2, p3}, Lcn/nubia/upgrade/model/PostApkInfo;->getEncryptParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v4, v5, p2, p3}, Lcn/nubia/upgrade/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v4, "HttpRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JsonResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-static {v1}, Lcn/nubia/upgrade/parser/VersionDataParser;->parse(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v3

    .line 130
    .local v3, "versionData":Lcn/nubia/upgrade/model/VersionData;
    if-nez v3, :cond_1

    .line 131
    const/16 v4, 0x3e9

    iput v4, v2, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    goto :goto_0

    .line 123
    .end local v3    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    const/16 v4, 0x3e8

    iput v4, v2, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :cond_1
    iput-object v3, v2, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    goto :goto_0
.end method

.method public declared-synchronized getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p4, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;

    .prologue
    .line 34
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
