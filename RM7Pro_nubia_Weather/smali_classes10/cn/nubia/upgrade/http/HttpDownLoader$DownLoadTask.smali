.class Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;
.super Landroid/os/AsyncTask;
.source "HttpDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/HttpDownLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthId:Ljava/lang/String;

.field private mAuthKey:Ljava/lang/String;

.field private mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

.field private mNeedReconnect:Z

.field private mNetWork:I

.field private mReconnectTime:I

.field private mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

.field final synthetic this$0:Lcn/nubia/upgrade/http/HttpDownLoader;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/http/HttpDownLoader;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "request"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p3, "listener"    # Lcn/nubia/upgrade/http/IDownLoadListener;
    .param p4, "authId"    # Ljava/lang/String;
    .param p5, "authKey"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    .line 104
    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 105
    iput-object p3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 106
    iput-object p4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthId:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthKey:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private doApkDownLoad(Ljava/lang/String;Z)I
    .locals 44
    .param p1, "downLoadUrl"    # Ljava/lang/String;
    .param p2, "resume"    # Z

    .prologue
    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "code":I
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "wifiConnected:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mobileConnected:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_2

    .line 145
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 147
    const/4 v8, 0x4

    .line 148
    const-string v40, "HttpDownLoader"

    const-string v41, "no available network, download cancel."

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3e8

    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_0
    move/from16 v40, v8

    .line 478
    :cond_1
    :goto_0
    return v40

    .line 155
    :cond_2
    const/16 v38, 0x0

    .line 156
    .local v38, "url":Ljava/net/URL;
    const/16 v19, 0x0

    .line 157
    .local v19, "httpClient":Ljava/net/HttpURLConnection;
    const-wide/16 v14, 0x0

    .line 159
    .local v14, "downSize":J
    const/4 v5, 0x0

    .line 160
    .local v5, "breakContinue":Z
    :try_start_0
    new-instance v16, Ljava/io/File;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    .line 161
    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ".temp"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 163
    const/4 v5, 0x1

    .line 174
    :cond_3
    :goto_1
    new-instance v39, Ljava/net/URL;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .end local v38    # "url":Ljava/net/URL;
    .local v39, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v39 .. v39}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v40

    move-object/from16 v0, v40

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v19, v0

    .line 177
    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 178
    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 179
    const-string v40, "GET"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    const/16 v40, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 181
    const/16 v40, 0x3a98

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 182
    const/16 v40, 0x1388

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 184
    if-eqz v5, :cond_4

    .line 185
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 186
    .local v12, "currentFileSize":J
    move-wide v14, v12

    .line 187
    const-string v40, "RANGE"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "bytes="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v12    # "currentFileSize":J
    :cond_4
    if-eqz v5, :cond_17

    .line 192
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    const/16 v41, 0xce

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_13

    const-string v40, "Content-Type"

    .line 193
    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v41, "application/ausp"

    .line 195
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 197
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v40

    move/from16 v0, v40

    int-to-long v10, v0

    .line 198
    .local v10, "contentLengtth":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v26

    .line 199
    .local v26, "limit":J
    const-wide/16 v40, 0x0

    cmp-long v40, v26, v40

    if-gtz v40, :cond_5

    .line 200
    const-wide/16 v26, 0x0

    .line 202
    :cond_5
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v40

    if-nez v40, :cond_b

    .line 204
    const-string v40, "HttpDownLoader"

    const-string v41, "break continue down space not enough"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3ef

    .line 209
    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_6
    const/16 v40, 0x1

    .line 470
    if-eqz v19, :cond_1

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 165
    .end local v10    # "contentLengtth":J
    .end local v26    # "limit":J
    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    :cond_7
    :try_start_2
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "path:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v42, v0

    .line 166
    invoke-virtual/range {v42 .. v42}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v42, v0

    .line 167
    invoke-virtual/range {v42 .. v42}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ".temp"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 165
    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v30

    .line 169
    .local v30, "parentFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v40

    if-nez v40, :cond_3

    .line 170
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 443
    .end local v16    # "file":Ljava/io/File;
    .end local v30    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 444
    .local v9, "e":Ljava/net/MalformedURLException;
    :goto_2
    :try_start_3
    const-string v40, "HttpDownLoader"

    const-string v41, "MalformedURLException"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 446
    const/4 v8, 0x4

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_8

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3e8

    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 470
    :cond_8
    if-eqz v19, :cond_9

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-eqz v40, :cond_a

    .line 475
    const/4 v8, 0x7

    .line 477
    :cond_a
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "doapkDownLoad return:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v40, v8

    .line 478
    goto/16 :goto_0

    .line 214
    .end local v38    # "url":Ljava/net/URL;
    .restart local v10    # "contentLengtth":J
    .restart local v16    # "file":Ljava/io/File;
    .restart local v26    # "limit":J
    .restart local v39    # "url":Ljava/net/URL;
    :cond_b
    add-long v36, v10, v14

    .line 216
    .local v36, "totalSize":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_c

    if-nez p2, :cond_c

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 220
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_d

    if-eqz p2, :cond_d

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 224
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 226
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string v40, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v17, "fileOutputStream":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 230
    .local v21, "iStream":Ljava/io/InputStream;
    const/16 v40, 0x1000

    move/from16 v0, v40

    new-array v7, v0, [B

    .line 231
    .local v7, "buff":[B
    const/16 v29, -0x1

    .line 232
    .local v29, "numRead":I
    const/16 v18, 0x0

    .line 233
    .local v18, "hasRead":F
    const/16 v24, 0x0

    .line 234
    .local v24, "lastProgress":I
    :cond_e
    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v29

    const/16 v40, -0x1

    move/from16 v0, v29

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_f

    .line 236
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    move/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 237
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    add-float v18, v18, v40

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_e

    .line 239
    long-to-float v0, v14

    move/from16 v40, v0

    add-float v40, v40, v18

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    const/high16 v41, 0x42c80000    # 100.0f

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v32, v0

    .line 240
    .local v32, "progress":I
    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 241
    move/from16 v24, v32

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_4

    .line 443
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v18    # "hasRead":F
    .end local v21    # "iStream":Ljava/io/InputStream;
    .end local v24    # "lastProgress":I
    .end local v26    # "limit":J
    .end local v29    # "numRead":I
    .end local v32    # "progress":I
    .end local v36    # "totalSize":J
    :catch_1
    move-exception v9

    move-object/from16 v38, v39

    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 247
    .end local v38    # "url":Ljava/net/URL;
    .restart local v7    # "buff":[B
    .restart local v10    # "contentLengtth":J
    .restart local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v18    # "hasRead":F
    .restart local v21    # "iStream":Ljava/io/InputStream;
    .restart local v24    # "lastProgress":I
    .restart local v26    # "limit":J
    .restart local v29    # "numRead":I
    .restart local v36    # "totalSize":J
    .restart local v39    # "url":Ljava/net/URL;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 248
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v40

    if-eqz v40, :cond_11

    .line 254
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    .line 255
    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ".patch"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 256
    .local v31, "pathName":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v28, "newFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 264
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 470
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v18    # "hasRead":F
    .end local v21    # "iStream":Ljava/io/InputStream;
    .end local v24    # "lastProgress":I
    .end local v26    # "limit":J
    .end local v28    # "newFile":Ljava/io/File;
    .end local v29    # "numRead":I
    .end local v31    # "pathName":Ljava/lang/String;
    .end local v36    # "totalSize":J
    :cond_10
    :goto_6
    if-eqz v19, :cond_24

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v38, v39

    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    goto/16 :goto_3

    .line 259
    .end local v38    # "url":Ljava/net/URL;
    .restart local v7    # "buff":[B
    .restart local v10    # "contentLengtth":J
    .restart local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v18    # "hasRead":F
    .restart local v21    # "iStream":Ljava/io/InputStream;
    .restart local v24    # "lastProgress":I
    .restart local v26    # "limit":J
    .restart local v29    # "numRead":I
    .restart local v36    # "totalSize":J
    .restart local v39    # "url":Ljava/net/URL;
    :cond_11
    :try_start_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    .line 260
    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 261
    .restart local v31    # "pathName":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v28    # "newFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 452
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v18    # "hasRead":F
    .end local v21    # "iStream":Ljava/io/InputStream;
    .end local v24    # "lastProgress":I
    .end local v26    # "limit":J
    .end local v28    # "newFile":Ljava/io/File;
    .end local v29    # "numRead":I
    .end local v31    # "pathName":Ljava/lang/String;
    .end local v36    # "totalSize":J
    :catch_2
    move-exception v9

    move-object/from16 v38, v39

    .line 453
    .end local v16    # "file":Ljava/io/File;
    .end local v39    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v38    # "url":Ljava/net/URL;
    :goto_7
    :try_start_6
    const-string v40, "HttpDownLoader"

    const-string v41, "FileNotFoundException"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_12

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3f0

    .line 457
    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 459
    :cond_12
    const/16 v8, 0x8

    .line 470
    if-eqz v19, :cond_9

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 268
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v38    # "url":Ljava/net/URL;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_13
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    const/16 v41, 0xc8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    .line 269
    const/16 v20, 0x0

    .line 270
    .local v20, "httpContent":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 271
    .local v22, "iStrem":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v6, "bs":Ljava/io/BufferedInputStream;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v34, "str":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v40, Ljava/io/InputStreamReader;

    move-object/from16 v0, v40

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v4, "bReader":Ljava/io/BufferedReader;
    :goto_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    .local v35, "temp":Ljava/lang/String;
    if-eqz v35, :cond_14

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_14

    .line 278
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v40, "\n"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 460
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v20    # "httpContent":Ljava/lang/String;
    .end local v22    # "iStrem":Ljava/io/InputStream;
    .end local v34    # "str":Ljava/lang/StringBuilder;
    .end local v35    # "temp":Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object/from16 v38, v39

    .line 461
    .end local v16    # "file":Ljava/io/File;
    .end local v39    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/io/IOException;
    .restart local v38    # "url":Ljava/net/URL;
    :goto_9
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 462
    const-string v40, "HttpDownLoader"

    const-string v41, "download apk io exception"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v40

    if-eqz v40, :cond_23

    .line 464
    const/4 v8, 0x7

    .line 470
    :goto_a
    if-eqz v19, :cond_9

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 281
    .end local v9    # "e":Ljava/io/IOException;
    .end local v38    # "url":Ljava/net/URL;
    .restart local v4    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "bs":Ljava/io/BufferedInputStream;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v20    # "httpContent":Ljava/lang/String;
    .restart local v22    # "iStrem":Ljava/io/InputStream;
    .restart local v34    # "str":Ljava/lang/StringBuilder;
    .restart local v35    # "temp":Ljava/lang/String;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_14
    :try_start_9
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 282
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 285
    :try_start_a
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .local v23, "jsonObject":Lorg/json/JSONObject;
    const-string v40, "code"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 287
    .local v33, "resCode":I
    const/16 v40, 0x7d5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    .line 289
    const-string v40, "HttpDownLoader"

    const-string v41, "patch down sign key usless"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 290
    const/4 v8, 0x3

    goto/16 :goto_6

    .line 293
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v33    # "resCode":I
    :catch_4
    move-exception v9

    .line 294
    .local v9, "e":Lorg/json/JSONException;
    :try_start_b
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 296
    const-string v40, "HttpDownLoader"

    const-string v41, "download JSONException ERROR_DNS_HIJACK_DOUBT"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v8, 0x2

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3e8

    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 470
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v20    # "httpContent":Ljava/lang/String;
    .end local v22    # "iStrem":Ljava/io/InputStream;
    .end local v34    # "str":Ljava/lang/StringBuilder;
    .end local v35    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v40

    move-object/from16 v38, v39

    .end local v16    # "file":Ljava/io/File;
    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    :goto_b
    if-eqz v19, :cond_15

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    throw v40

    .line 303
    .end local v38    # "url":Ljava/net/URL;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_16
    :try_start_c
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 305
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 303
    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 307
    const/4 v8, 0x5

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3ec

    .line 310
    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_6

    .line 316
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    const/16 v41, 0xc8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_20

    const-string v40, "application/ausp"

    const-string v41, "Content-Type"

    .line 318
    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_20

    .line 320
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v40

    move/from16 v0, v40

    int-to-long v10, v0

    .line 321
    .restart local v10    # "contentLengtth":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v26

    .line 322
    .restart local v26    # "limit":J
    const-wide/16 v40, 0x0

    cmp-long v40, v26, v40

    if-gez v40, :cond_18

    .line 323
    const-wide/16 v26, 0x0

    .line 325
    :cond_18
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v40

    if-nez v40, :cond_1a

    .line 327
    const-string v40, "HttpDownLoader"

    const-string v41, "down complete apk space not enough"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_19

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3ef

    .line 332
    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 334
    :cond_19
    const/16 v40, 0x1

    .line 470
    if-eqz v19, :cond_1

    .line 471
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 338
    :cond_1a
    add-long v36, v10, v14

    .line 339
    .restart local v36    # "totalSize":J
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_1b

    if-nez p2, :cond_1b

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 344
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_1c

    if-eqz p2, :cond_1c

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 348
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 350
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string v40, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .restart local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    .line 353
    .restart local v21    # "iStream":Ljava/io/InputStream;
    const v40, 0xa000

    move/from16 v0, v40

    new-array v7, v0, [B

    .line 354
    .restart local v7    # "buff":[B
    const/16 v29, -0x1

    .line 355
    .restart local v29    # "numRead":I
    const/16 v18, 0x0

    .line 356
    .restart local v18    # "hasRead":F
    const/16 v25, 0x0

    .line 357
    .local v25, "latProgress":I
    :cond_1d
    :goto_c
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v29

    const/16 v40, -0x1

    move/from16 v0, v29

    move/from16 v1, v40

    if-eq v0, v1, :cond_1e

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_1e

    .line 359
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    move/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 360
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    add-float v18, v18, v40

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_1d

    .line 362
    long-to-float v0, v14

    move/from16 v40, v0

    add-float v40, v40, v18

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    const/high16 v41, 0x42c80000    # 100.0f

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v32, v0

    .line 363
    .restart local v32    # "progress":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    .line 364
    move/from16 v25, v32

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_c

    .line 371
    .end local v32    # "progress":I
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v40

    if-eqz v40, :cond_1f

    .line 379
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    .line 380
    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ".patch"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 381
    .restart local v31    # "pathName":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .restart local v28    # "newFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 389
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 384
    .end local v28    # "newFile":Ljava/io/File;
    .end local v31    # "pathName":Ljava/lang/String;
    :cond_1f
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v41, v0

    .line 385
    invoke-virtual/range {v41 .. v41}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 386
    .restart local v31    # "pathName":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .restart local v28    # "newFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_d

    .line 396
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v17    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v18    # "hasRead":F
    .end local v21    # "iStream":Ljava/io/InputStream;
    .end local v25    # "latProgress":I
    .end local v26    # "limit":J
    .end local v28    # "newFile":Ljava/io/File;
    .end local v29    # "numRead":I
    .end local v31    # "pathName":Ljava/lang/String;
    .end local v36    # "totalSize":J
    :cond_20
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    const/16 v41, 0xc8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_22

    .line 397
    const/16 v20, 0x0

    .line 398
    .restart local v20    # "httpContent":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 399
    .restart local v22    # "iStrem":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 400
    .restart local v6    # "bs":Ljava/io/BufferedInputStream;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .restart local v34    # "str":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v40, Ljava/io/InputStreamReader;

    move-object/from16 v0, v40

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 404
    .restart local v4    # "bReader":Ljava/io/BufferedReader;
    :goto_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "temp":Ljava/lang/String;
    if-eqz v35, :cond_21

    .line 405
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v40, "\n"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 409
    :cond_21
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 410
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 413
    :try_start_e
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    const-string v40, "code"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 415
    .restart local v33    # "resCode":I
    const/16 v40, 0x7d5

    move/from16 v0, v33

    move/from16 v1, v40

    if-ne v0, v1, :cond_10

    .line 417
    const-string v40, "HttpDownLoader"

    const-string v41, "sign key usless"

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 418
    const/4 v8, 0x3

    goto/16 :goto_6

    .line 421
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v33    # "resCode":I
    :catch_5
    move-exception v9

    .line 422
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_f
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 424
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ERROR_DNSHIJACK_DOUBT"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v8, 0x2

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3e8

    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_6

    .line 431
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v20    # "httpContent":Ljava/lang/String;
    .end local v22    # "iStrem":Ljava/io/InputStream;
    .end local v34    # "str":Ljava/lang/StringBuilder;
    .end local v35    # "temp":Ljava/lang/String;
    :cond_22
    const-string v40, "HttpDownLoader"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Complete Down HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 432
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 431
    invoke-static/range {v40 .. v41}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v40, v0

    sget-object v41, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 434
    const/4 v8, 0x5

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    if-eqz v40, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v40

    if-nez v40, :cond_10

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v40, v0

    const/16 v41, 0x3ec

    .line 437
    invoke-interface/range {v40 .. v41}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_6

    .line 466
    .end local v16    # "file":Ljava/io/File;
    .end local v39    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/io/IOException;
    .restart local v38    # "url":Ljava/net/URL;
    :cond_23
    const/4 v8, 0x6

    goto/16 :goto_a

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v40

    goto/16 :goto_b

    .line 460
    :catch_6
    move-exception v9

    goto/16 :goto_9

    .line 452
    :catch_7
    move-exception v9

    goto/16 :goto_7

    .end local v38    # "url":Ljava/net/URL;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_24
    move-object/from16 v38, v39

    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    goto/16 :goto_3
.end method

.method private handleDownload(Ljava/lang/String;)I
    .locals 10
    .param p1, "downLoadUrl"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 575
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    const/4 v3, 0x7

    .line 644
    :cond_0
    :goto_0
    return v3

    .line 578
    :cond_1
    invoke-direct {p0, p1, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->doApkDownLoad(Ljava/lang/String;Z)I

    move-result v3

    .line 579
    .local v3, "res":I
    :goto_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 580
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 581
    const/4 v3, 0x7

    .line 582
    goto :goto_0

    .line 586
    :cond_2
    :try_start_0
    const-string v4, "HttpDownLoader"

    const-string v5, "wait network change!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-wide/16 v4, 0xdac

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_3
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 599
    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    .line 598
    invoke-virtual {v4, v5}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    .line 600
    .local v1, "isMobile":Z
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 601
    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    .line 600
    invoke-virtual {v4, v5}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    .line 602
    .local v2, "isWifi":Z
    const-string v4, "HttpDownLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle IoException:isWifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":isMobile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 606
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    .line 616
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    if-nez v4, :cond_8

    .line 617
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v5, v4, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 618
    const/4 v3, 0x4

    .line 619
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 620
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 588
    .end local v1    # "isMobile":Z
    .end local v2    # "isWifi":Z
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 591
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    const/4 v3, 0x7

    .line 593
    goto/16 :goto_0

    .line 607
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "isMobile":Z
    .restart local v2    # "isWifi":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 608
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 609
    :cond_6
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 611
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 612
    :cond_7
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    if-ne v4, v8, :cond_4

    if-eqz v1, :cond_4

    .line 614
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 623
    :cond_8
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    .line 624
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    .line 625
    const-string v4, "HttpDownLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReconnectTime---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 627
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->doApkDownLoad(Ljava/lang/String;Z)I

    move-result v3

    .line 628
    goto/16 :goto_1

    .line 630
    :cond_9
    const/4 v3, 0x7

    .line 631
    goto/16 :goto_0

    .line 635
    :cond_a
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v5, v4, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 636
    const/4 v3, 0x4

    .line 637
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0
.end method

.method private tryDownSignKeyUseless()V
    .locals 9

    .prologue
    const/16 v8, 0x7d5

    .line 487
    const-string v5, "HttpDownLoader"

    const-string v6, " TryDown SignKey Useless---"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/upgrade/util/InfoCollect;->getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;

    move-result-object v1

    .line 490
    .local v1, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    iget-object v5, v5, Lcn/nubia/upgrade/http/HttpDownLoader;->mHttpRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthId:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthKey:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v7}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    move-result-object v0

    .line 491
    .local v0, "info":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-nez v0, :cond_2

    .line 496
    const-string v5, "HttpDownLoader"

    const-string v6, " SignKey Useless PostApkInfo NULL"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 498
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 499
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v5, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v5}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v5

    if-nez v5, :cond_3

    .line 506
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 507
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 508
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v6, 0x7d4

    invoke-interface {v5, v6}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 513
    :cond_3
    iget v5, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v5, :cond_7

    .line 514
    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    .line 515
    .local v4, "versionData":Lcn/nubia/upgrade/model/VersionData;
    new-instance v2, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v2}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 517
    .local v2, "request":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 520
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 521
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 526
    :goto_1
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v5}, Lcn/nubia/upgrade/http/DownloadRequest;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 532
    invoke-virtual {v6}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v6

    .line 531
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 534
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 535
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 536
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 541
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v5}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->handleDownload(Ljava/lang/String;)I

    move-result v3

    .line 543
    .local v3, "res":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 544
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 545
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 546
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 547
    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 523
    .end local v3    # "res":I
    :cond_5
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 524
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 552
    :cond_6
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 553
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 559
    .end local v2    # "request":Lcn/nubia/upgrade/http/DownloadRequest;
    .end local v4    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :cond_7
    const-string v5, "HttpDownLoader"

    const-string v6, "info errorCode!=0"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 561
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 562
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "downLoadUrl":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    .line 121
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->handleDownload(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "res":I
    const-string v2, "HttpDownLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloader res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 125
    invoke-direct {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->tryDownSignKeyUseless()V

    .line 128
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 116
    .end local v1    # "res":I
    :cond_1
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    goto :goto_0

    .line 119
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 650
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 651
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 652
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    .line 655
    :cond_0
    return-void
.end method

.method public releaseDownload()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->cancel(Z)Z

    .line 100
    return-void
.end method
