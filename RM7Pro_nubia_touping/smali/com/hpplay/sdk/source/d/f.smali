.class public Lcom/hpplay/sdk/source/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILogCallback;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/hpplay/sdk/source/d/g;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "LogDispatcher"

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/f;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hpplay/common/log/UploadLogCallback;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/hpplay/sdk/source/d/f$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/d/f$2;-><init>(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    const-string v0, "LogDispatcher"

    const-string v1, "start baleLogs --------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/d/g;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "logs"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/hpplay/common/utils/ContextPath;->jointPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {v0}, Lcom/hpplay/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 243
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "key_log_path"

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v2

    const-string v3, "key_log2_path"

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 249
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hpplay/common/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/d/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2004"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "LogDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "baleLogs: filename ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/d/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/common/utils/FileUtil;->zipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Lcom/hpplay/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 261
    if-eqz p2, :cond_3

    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/io/File;)V

    .line 264
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v1, "LogDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baleLogs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/d/f;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 275
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 276
    aget-object v2, v1, v0

    .line 277
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hpplay/common/log/UploadLogCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    invoke-direct {v0, p1, p2, p3}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    sget-object v2, Lcom/hpplay/common/asyncmanager/HttpMethod;->POST:Lcom/hpplay/common/asyncmanager/HttpMethod;

    iput-object v2, v1, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 195
    new-instance v1, Lcom/hpplay/sdk/source/d/f$3;

    invoke-direct {v1, p0, p4}, Lcom/hpplay/sdk/source/d/f$3;-><init>(Lcom/hpplay/sdk/source/d/f;Lcom/hpplay/common/log/UploadLogCallback;)V

    .line 226
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeUploadFileTask(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;)Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/d/f;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/d/f;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/d/f;->b()V

    .line 51
    new-instance v0, Lcom/hpplay/sdk/source/d/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/d/g;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/d/g;->start()V

    .line 53
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V
    .locals 4

    .prologue
    .line 94
    const-string v0, "LogDispatcher"

    const-string v1, "start uploadLogQuery"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sLogReportQueryUrl:Ljava/lang/String;

    const-string v2, "{}"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 98
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    .line 100
    :cond_0
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    const-string v2, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    const-string v2, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 103
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/d/f$1;

    invoke-direct {v2, p0, p2}, Lcom/hpplay/sdk/source/d/f$1;-><init>(Lcom/hpplay/sdk/source/d/f;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "LogDispatcher"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 6

    .prologue
    .line 133
    const-string v0, "LogDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start uploadLogFile url ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/d/f;->c:Z

    if-nez v0, :cond_2

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v0, "a"

    const-string v2, "2004"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "aid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "mac"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "hid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "cid"

    invoke-static {p1}, Lcom/hpplay/common/utils/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "j"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "appv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "sdkv"

    const-string v2, "3.28.50"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "ls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "et"

    invoke-interface {v1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "pn"

    invoke-interface {v1, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "version"

    const-string v2, "1.1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "LogDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getJsonParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "eid"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-direct {p0, p2, p3, v1, p7}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)Ljava/lang/Runnable;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    invoke-virtual {v2, v3, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeRunnable(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;

    .line 158
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string v0, "euqid"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-direct {p0, p2, p4, v1, p7}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/log/UploadLogCallback;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeRunnable(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "LogDispatcher"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    if-eqz p7, :cond_1

    .line 167
    const/4 v0, 0x6

    invoke-interface {p7, v0}, Lcom/hpplay/common/log/UploadLogCallback;->uploadStatus(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/d/g;->c()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    .line 60
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/d/g;->a()V

    .line 66
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "11"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/d/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method public onCastLog(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getLogCallback()Lcom/hpplay/sdk/source/api/ILogCallback;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILogCallback;->onCastLog(ILjava/lang/String;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/d/f;->b:Lcom/hpplay/sdk/source/d/g;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/d/g;->a(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-void
.end method
