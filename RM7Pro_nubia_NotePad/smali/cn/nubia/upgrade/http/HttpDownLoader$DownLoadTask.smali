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
    .line 104
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    .line 106
    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 107
    iput-object p3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 108
    iput-object p4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthId:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private doApkDownLoad(Ljava/lang/String;Z)I
    .locals 50
    .param p1, "downLoadUrl"    # Ljava/lang/String;
    .param p2, "resume"    # Z

    .prologue
    .line 145
    const/4 v8, 0x0

    .line 146
    .local v8, "code":I
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "wifiConnected:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "mobileConnected:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_2

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 154
    const/4 v8, 0x4

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3e8

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    .line 158
    :cond_0
    const-string v46, "HttpDownLoader"

    const-string v47, "begin download net error"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v46, v8

    .line 548
    :cond_1
    :goto_0
    return v46

    .line 162
    :cond_2
    const/16 v44, 0x0

    .line 163
    .local v44, "url":Ljava/net/URL;
    const/16 v21, 0x0

    .line 164
    .local v21, "httpClient":Ljava/net/HttpURLConnection;
    const-wide/16 v16, 0x0

    .line 167
    .local v16, "downSize":J
    const/4 v5, 0x0

    .line 168
    .local v5, "breakContinue":Z
    :try_start_0
    new-instance v18, Ljava/io/File;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ".temp"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_7

    .line 173
    const/4 v5, 0x1

    .line 209
    :cond_3
    new-instance v45, Ljava/net/URL;

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    .end local v44    # "url":Ljava/net/URL;
    .local v45, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v45 .. v45}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v46

    move-object/from16 v0, v46

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    .line 212
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 214
    const-string v46, "GET"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 215
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 216
    const/16 v46, 0x3a98

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 217
    const/16 v46, 0x1388

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 219
    if-eqz v5, :cond_4

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 221
    .local v12, "currentFileSize":J
    move-wide/from16 v16, v12

    .line 222
    const-string v46, "RANGE"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "bytes="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "-"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v12    # "currentFileSize":J
    :cond_4
    if-eqz v5, :cond_1b

    .line 228
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v46

    const/16 v47, 0xce

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_17

    const-string v46, "Content-Type"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "application/ausp"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_17

    .line 233
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v46

    move/from16 v0, v46

    int-to-long v10, v0

    .line 234
    .local v10, "contentLengtth":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v30

    .line 235
    .local v30, "limit":J
    const-wide/16 v46, 0x0

    cmp-long v46, v30, v46

    if-gtz v46, :cond_5

    .line 236
    const-wide/16 v30, 0x0

    .line 238
    :cond_5
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v46

    move-object/from16 v0, v46

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v46

    if-nez v46, :cond_b

    .line 240
    const-string v46, "HttpDownLoader"

    const-string v47, "break continue down space not enough"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_6

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3ef

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_6
    const/16 v46, 0x1

    .line 539
    if-eqz v21, :cond_1

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 175
    .end local v10    # "contentLengtth":J
    .end local v30    # "limit":J
    .end local v45    # "url":Ljava/net/URL;
    .restart local v44    # "url":Ljava/net/URL;
    :cond_7
    :try_start_2
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "path:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".temp"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v40

    .line 179
    .local v40, "tmp":Ljava/io/File;
    if-eqz v40, :cond_3

    .line 180
    new-instance v33, Ljava/util/ArrayDeque;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayDeque;-><init>()V

    .line 183
    .local v33, "pathDirs":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/String;>;"
    :goto_1
    if-eqz v40, :cond_8

    .line 184
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 185
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v40

    goto :goto_1

    .line 187
    :cond_8
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayDeque;->size()I

    move-result v37

    .line 188
    .local v37, "size":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    .line 189
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 190
    .local v14, "dirName":Ljava/lang/String;
    new-instance v41, Ljava/io/File;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v41, "tmpDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v9, "createDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v46

    if-nez v46, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_9

    .line 194
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->mkdir()Z

    .line 195
    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 197
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v46

    if-nez v46, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_a

    .line 199
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 200
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->mkdir()Z

    .line 201
    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 251
    .end local v9    # "createDir":Ljava/io/File;
    .end local v14    # "dirName":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v33    # "pathDirs":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/String;>;"
    .end local v37    # "size":I
    .end local v40    # "tmp":Ljava/io/File;
    .end local v41    # "tmpDir":Ljava/io/File;
    .end local v44    # "url":Ljava/net/URL;
    .restart local v10    # "contentLengtth":J
    .restart local v30    # "limit":J
    .restart local v45    # "url":Ljava/net/URL;
    :cond_b
    add-long v42, v10, v16

    .line 253
    .local v42, "totalSize":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_c

    if-nez p2, :cond_c

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 258
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_d

    if-eqz p2, :cond_d

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 265
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v46, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v19, "fileOutputStream":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 268
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 269
    .local v24, "iStream":Ljava/io/InputStream;
    const/16 v46, 0x1000

    move/from16 v0, v46

    new-array v7, v0, [B

    .line 270
    .local v7, "buff":[B
    const/16 v32, -0x1

    .line 271
    .local v32, "numRead":I
    const/16 v20, 0x0

    .line 272
    .local v20, "hasRead":F
    const/16 v27, 0x0

    .line 274
    .local v27, "lastProgress":I
    :cond_e
    :goto_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v32

    const/16 v46, -0x1

    move/from16 v0, v32

    move/from16 v1, v46

    if-eq v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_12

    .line 275
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v32

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 276
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v46, v0

    add-float v20, v20, v46

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_e

    .line 278
    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v46, v0

    add-float v46, v46, v20

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v47, v0

    div-float v46, v46, v47

    const/high16 v47, 0x42c80000    # 100.0f

    mul-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v35, v0

    .line 279
    .local v35, "progress":I
    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    .line 280
    move/from16 v27, v35

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 512
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v20    # "hasRead":F
    .end local v24    # "iStream":Ljava/io/InputStream;
    .end local v27    # "lastProgress":I
    .end local v30    # "limit":J
    .end local v32    # "numRead":I
    .end local v35    # "progress":I
    .end local v42    # "totalSize":J
    :catch_0
    move-exception v15

    move-object/from16 v44, v45

    .line 514
    .end local v18    # "file":Ljava/io/File;
    .end local v45    # "url":Ljava/net/URL;
    .local v15, "e":Ljava/net/MalformedURLException;
    .restart local v44    # "url":Ljava/net/URL;
    :goto_4
    :try_start_4
    invoke-virtual {v15}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 515
    const/4 v8, 0x4

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_f

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3e8

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 539
    :cond_f
    if-eqz v21, :cond_10

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 543
    .end local v15    # "e":Ljava/net/MalformedURLException;
    :cond_10
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-eqz v46, :cond_11

    .line 544
    const/4 v8, 0x7

    .line 546
    :cond_11
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "doapkDownLoad return:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v46, v8

    .line 548
    goto/16 :goto_0

    .line 289
    .end local v44    # "url":Ljava/net/URL;
    .restart local v7    # "buff":[B
    .restart local v10    # "contentLengtth":J
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v20    # "hasRead":F
    .restart local v24    # "iStream":Ljava/io/InputStream;
    .restart local v27    # "lastProgress":I
    .restart local v30    # "limit":J
    .restart local v32    # "numRead":I
    .restart local v42    # "totalSize":J
    .restart local v45    # "url":Ljava/net/URL;
    :cond_12
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_13

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcn/nubia/upgrade/http/DownloadRequest;->getIspatch()Z

    move-result v46

    if-eqz v46, :cond_15

    .line 294
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ".patch"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 296
    .local v34, "pathName":Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v29, "newFile":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 306
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_13

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    .line 311
    .end local v29    # "newFile":Ljava/io/File;
    .end local v34    # "pathName":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 312
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 539
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v20    # "hasRead":F
    .end local v24    # "iStream":Ljava/io/InputStream;
    .end local v27    # "lastProgress":I
    .end local v30    # "limit":J
    .end local v32    # "numRead":I
    .end local v42    # "totalSize":J
    :cond_14
    :goto_7
    if-eqz v21, :cond_29

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v44, v45

    .end local v45    # "url":Ljava/net/URL;
    .restart local v44    # "url":Ljava/net/URL;
    goto/16 :goto_5

    .line 300
    .end local v44    # "url":Ljava/net/URL;
    .restart local v7    # "buff":[B
    .restart local v10    # "contentLengtth":J
    .restart local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .restart local v20    # "hasRead":F
    .restart local v24    # "iStream":Ljava/io/InputStream;
    .restart local v27    # "lastProgress":I
    .restart local v30    # "limit":J
    .restart local v32    # "numRead":I
    .restart local v42    # "totalSize":J
    .restart local v45    # "url":Ljava/net/URL;
    :cond_15
    :try_start_6
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 302
    .restart local v34    # "pathName":Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v29    # "newFile":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 521
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v20    # "hasRead":F
    .end local v24    # "iStream":Ljava/io/InputStream;
    .end local v27    # "lastProgress":I
    .end local v29    # "newFile":Ljava/io/File;
    .end local v30    # "limit":J
    .end local v32    # "numRead":I
    .end local v34    # "pathName":Ljava/lang/String;
    .end local v42    # "totalSize":J
    :catch_1
    move-exception v15

    move-object/from16 v44, v45

    .line 523
    .end local v18    # "file":Ljava/io/File;
    .end local v45    # "url":Ljava/net/URL;
    .local v15, "e":Ljava/io/FileNotFoundException;
    .restart local v44    # "url":Ljava/net/URL;
    :goto_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_16

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3f0

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 528
    :cond_16
    const/16 v8, 0x8

    .line 539
    if-eqz v21, :cond_10

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 314
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v44    # "url":Ljava/net/URL;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v45    # "url":Ljava/net/URL;
    :cond_17
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v46

    const/16 v47, 0xc8

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1a

    .line 315
    const/16 v22, 0x0

    .line 316
    .local v22, "httpContent":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 317
    .local v25, "iStrem":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v6, "bs":Ljava/io/BufferedInputStream;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v38, "str":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v46, Ljava/io/InputStreamReader;

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v4, "bReader":Ljava/io/BufferedReader;
    :goto_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v39

    .local v39, "temp":Ljava/lang/String;
    if-eqz v39, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_18

    .line 324
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v46, "\n"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    .line 529
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v22    # "httpContent":Ljava/lang/String;
    .end local v25    # "iStrem":Ljava/io/InputStream;
    .end local v38    # "str":Ljava/lang/StringBuilder;
    .end local v39    # "temp":Ljava/lang/String;
    :catch_2
    move-exception v15

    move-object/from16 v44, v45

    .line 530
    .end local v18    # "file":Ljava/io/File;
    .end local v45    # "url":Ljava/net/URL;
    .local v15, "e":Ljava/io/IOException;
    .restart local v44    # "url":Ljava/net/URL;
    :goto_a
    :try_start_9
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 531
    const-string v46, "HttpDownLoader"

    const-string v47, "download apk io exception"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v46

    if-eqz v46, :cond_28

    .line 533
    const/4 v8, 0x7

    .line 539
    :goto_b
    if-eqz v21, :cond_10

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 328
    .end local v15    # "e":Ljava/io/IOException;
    .end local v44    # "url":Ljava/net/URL;
    .restart local v4    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "bs":Ljava/io/BufferedInputStream;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v22    # "httpContent":Ljava/lang/String;
    .restart local v25    # "iStrem":Ljava/io/InputStream;
    .restart local v38    # "str":Ljava/lang/StringBuilder;
    .restart local v39    # "temp":Ljava/lang/String;
    .restart local v45    # "url":Ljava/net/URL;
    :cond_18
    :try_start_a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 329
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 332
    :try_start_b
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    .local v26, "jsonObject":Lorg/json/JSONObject;
    const-string v46, "code"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 334
    .local v36, "resCode":I
    const/16 v46, 0x7d5

    move/from16 v0, v36

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    .line 336
    const-string v46, "HttpDownLoader"

    const-string v47, "patch down sign key usless"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 337
    const/4 v8, 0x3

    goto/16 :goto_7

    .line 340
    .end local v26    # "jsonObject":Lorg/json/JSONObject;
    .end local v36    # "resCode":I
    :catch_3
    move-exception v15

    .line 342
    .local v15, "e":Lorg/json/JSONException;
    :try_start_c
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 344
    const-string v46, "HttpDownLoader"

    const-string v47, "download ERROR_DNS_HIJACK_DOUBT"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v8, 0x2

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_14

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3e8

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7

    .line 539
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v22    # "httpContent":Ljava/lang/String;
    .end local v25    # "iStrem":Ljava/io/InputStream;
    .end local v38    # "str":Ljava/lang/StringBuilder;
    .end local v39    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v46

    move-object/from16 v44, v45

    .end local v18    # "file":Ljava/io/File;
    .end local v45    # "url":Ljava/net/URL;
    .restart local v44    # "url":Ljava/net/URL;
    :goto_c
    if-eqz v21, :cond_19

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    throw v46

    .line 355
    .end local v44    # "url":Ljava/net/URL;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v45    # "url":Ljava/net/URL;
    :cond_1a
    :try_start_d
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 359
    const/4 v8, 0x5

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_14

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3ec

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_7

    .line 369
    :cond_1b
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v46

    const/16 v47, 0xc8

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_25

    const-string v46, "Content-Type"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "application/ausp"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_25

    .line 374
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v46

    move/from16 v0, v46

    int-to-long v10, v0

    .line 375
    .restart local v10    # "contentLengtth":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v30

    .line 376
    .restart local v30    # "limit":J
    const-wide/16 v46, 0x0

    cmp-long v46, v30, v46

    if-gez v46, :cond_1c

    .line 377
    const-wide/16 v30, 0x0

    .line 379
    :cond_1c
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v46

    move-object/from16 v0, v46

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v46

    if-nez v46, :cond_1e

    .line 381
    const-string v46, "HttpDownLoader"

    const-string v47, "down complete apk space not enough"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1d

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3ef

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 389
    :cond_1d
    const/16 v46, 0x1

    .line 539
    if-eqz v21, :cond_1

    .line 540
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 393
    :cond_1e
    add-long v42, v10, v16

    .line 395
    .restart local v42    # "totalSize":J
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_1f

    if-nez p2, :cond_1f

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 400
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_20

    if-eqz p2, :cond_20

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 405
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 407
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v46, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .restart local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 411
    .restart local v24    # "iStream":Ljava/io/InputStream;
    const v46, 0xa000

    move/from16 v0, v46

    new-array v7, v0, [B

    .line 412
    .restart local v7    # "buff":[B
    const/16 v32, -0x1

    .line 413
    .restart local v32    # "numRead":I
    const/16 v20, 0x0

    .line 414
    .restart local v20    # "hasRead":F
    const/16 v28, 0x0

    .line 416
    .local v28, "latProgress":I
    :cond_21
    :goto_d
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v32

    const/16 v46, -0x1

    move/from16 v0, v32

    move/from16 v1, v46

    if-eq v0, v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_22

    .line 417
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v32

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 418
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v46, v0

    add-float v20, v20, v46

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_21

    .line 420
    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v46, v0

    add-float v46, v46, v20

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v47, v0

    div-float v46, v46, v47

    const/high16 v47, 0x42c80000    # 100.0f

    mul-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v35, v0

    .line 421
    .restart local v35    # "progress":I
    move/from16 v0, v35

    move/from16 v1, v28

    if-eq v0, v1, :cond_21

    .line 422
    move/from16 v28, v35

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_d

    .line 432
    .end local v35    # "progress":I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_23

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcn/nubia/upgrade/http/DownloadRequest;->getIspatch()Z

    move-result v46

    if-eqz v46, :cond_24

    .line 436
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ".patch"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 438
    .restart local v34    # "pathName":Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v29    # "newFile":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 449
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_23

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    .line 454
    .end local v29    # "newFile":Ljava/io/File;
    .end local v34    # "pathName":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 455
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    goto/16 :goto_7

    .line 442
    :cond_24
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 444
    .restart local v34    # "pathName":Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v29    # "newFile":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_e

    .line 460
    .end local v7    # "buff":[B
    .end local v10    # "contentLengtth":J
    .end local v19    # "fileOutputStream":Ljava/io/RandomAccessFile;
    .end local v20    # "hasRead":F
    .end local v24    # "iStream":Ljava/io/InputStream;
    .end local v28    # "latProgress":I
    .end local v29    # "newFile":Ljava/io/File;
    .end local v30    # "limit":J
    .end local v32    # "numRead":I
    .end local v34    # "pathName":Ljava/lang/String;
    .end local v42    # "totalSize":J
    :cond_25
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v46

    const/16 v47, 0xc8

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_27

    .line 461
    const/16 v22, 0x0

    .line 462
    .restart local v22    # "httpContent":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 463
    .restart local v25    # "iStrem":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 464
    .restart local v6    # "bs":Ljava/io/BufferedInputStream;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .restart local v38    # "str":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v46, Ljava/io/InputStreamReader;

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 468
    .restart local v4    # "bReader":Ljava/io/BufferedReader;
    :goto_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v39

    .restart local v39    # "temp":Ljava/lang/String;
    if-eqz v39, :cond_26

    .line 469
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v46, "\n"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 473
    :cond_26
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 474
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 477
    :try_start_f
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    .restart local v26    # "jsonObject":Lorg/json/JSONObject;
    const-string v46, "code"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 479
    .restart local v36    # "resCode":I
    const/16 v46, 0x7d5

    move/from16 v0, v36

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    .line 481
    const-string v46, "HttpDownLoader"

    const-string v47, "sign key usless"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 482
    const/4 v8, 0x3

    goto/16 :goto_7

    .line 485
    .end local v26    # "jsonObject":Lorg/json/JSONObject;
    .end local v36    # "resCode":I
    :catch_4
    move-exception v15

    .line 487
    .restart local v15    # "e":Lorg/json/JSONException;
    :try_start_10
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 489
    const-string v46, "HttpDownLoader"

    const-string v47, "ERROR_DNSHIJACK_DOUBT"

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v8, 0x2

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_14

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3e8

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_7

    .line 498
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v6    # "bs":Ljava/io/BufferedInputStream;
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v22    # "httpContent":Ljava/lang/String;
    .end local v25    # "iStrem":Ljava/io/InputStream;
    .end local v38    # "str":Ljava/lang/StringBuilder;
    .end local v39    # "temp":Ljava/lang/String;
    :cond_27
    const-string v46, "HttpDownLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Complete Down HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    move-object/from16 v46, v0

    sget-object v47, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    iput-object v0, v1, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 501
    const/4 v8, 0x5

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v46

    if-nez v46, :cond_14

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    move-object/from16 v46, v0

    const/16 v47, 0x3ec

    invoke-interface/range {v46 .. v47}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    .line 535
    .end local v18    # "file":Ljava/io/File;
    .end local v45    # "url":Ljava/net/URL;
    .local v15, "e":Ljava/io/IOException;
    .restart local v44    # "url":Ljava/net/URL;
    :cond_28
    const/4 v8, 0x6

    goto/16 :goto_b

    .line 539
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v46

    goto/16 :goto_c

    .line 529
    :catch_5
    move-exception v15

    goto/16 :goto_a

    .line 521
    :catch_6
    move-exception v15

    goto/16 :goto_8

    .line 512
    :catch_7
    move-exception v15

    goto/16 :goto_4

    .end local v44    # "url":Ljava/net/URL;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v45    # "url":Ljava/net/URL;
    :cond_29
    move-object/from16 v44, v45

    .end local v45    # "url":Ljava/net/URL;
    .restart local v44    # "url":Ljava/net/URL;
    goto/16 :goto_5
.end method

.method private handleDownload(Ljava/lang/String;)I
    .locals 10
    .param p1, "downLoadUrl"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 648
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    const/4 v3, 0x7

    .line 717
    :cond_0
    :goto_0
    return v3

    .line 651
    :cond_1
    invoke-direct {p0, p1, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->doApkDownLoad(Ljava/lang/String;Z)I

    move-result v3

    .line 652
    .local v3, "res":I
    :goto_1
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 653
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    const/4 v3, 0x7

    .line 655
    goto :goto_0

    .line 659
    :cond_2
    :try_start_0
    const-string v4, "HttpDownLoader"

    const-string v5, "wait network change!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-wide/16 v4, 0xdac

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_3
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    .line 673
    .local v1, "isMobile":Z
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    .line 675
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

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 679
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    .line 689
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    if-nez v4, :cond_8

    .line 690
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v5, v4, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 691
    const/4 v3, 0x4

    .line 692
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 693
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 661
    .end local v1    # "isMobile":Z
    .end local v2    # "isWifi":Z
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 664
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    const/4 v3, 0x7

    .line 666
    goto/16 :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "isMobile":Z
    .restart local v2    # "isWifi":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 681
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 682
    :cond_6
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 684
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 685
    :cond_7
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    if-ne v4, v8, :cond_4

    if-eqz v1, :cond_4

    .line 687
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNeedReconnect:Z

    goto :goto_2

    .line 696
    :cond_8
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    .line 697
    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mReconnectTime:I

    .line 698
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

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 700
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->doApkDownLoad(Ljava/lang/String;Z)I

    move-result v3

    .line 701
    goto/16 :goto_1

    .line 703
    :cond_9
    const/4 v3, 0x7

    .line 704
    goto/16 :goto_0

    .line 708
    :cond_a
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v5, v4, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 709
    const/4 v3, 0x4

    .line 710
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 711
    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0
.end method

.method private tryDownSignKeyUseless()V
    .locals 9

    .prologue
    const/16 v8, 0x7d5

    .line 558
    const-string v5, "HttpDownLoader"

    const-string v6, " TryDown SignKey Useless---"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v5}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/upgrade/util/InfoCollect;->getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;

    move-result-object v1

    .line 561
    .local v1, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    iget-object v5, v5, Lcn/nubia/upgrade/http/HttpDownLoader;->mHttpRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthId:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mAuthKey:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v7}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    move-result-object v0

    .line 563
    .local v0, "info":Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    if-nez v0, :cond_2

    .line 568
    const-string v5, "HttpDownLoader"

    const-string v6, " SignKey Useless PostApkInfo NULL"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 570
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v5, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v5}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v5

    if-nez v5, :cond_3

    .line 578
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 579
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 580
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v6, 0x7d4

    invoke-interface {v5, v6}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 585
    :cond_3
    iget v5, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v5, :cond_7

    .line 586
    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    .line 587
    .local v4, "versionData":Lcn/nubia/upgrade/model/VersionData;
    new-instance v2, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v2}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 589
    .local v2, "request":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 593
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 599
    :goto_1
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 602
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v5}, Lcn/nubia/upgrade/http/DownloadRequest;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v6}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 607
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getIspatch()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 608
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 609
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v5}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->handleDownload(Ljava/lang/String;)I

    move-result v3

    .line 616
    .local v3, "res":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 617
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 618
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 619
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 596
    .end local v3    # "res":I
    :cond_5
    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 597
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 625
    :cond_6
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 626
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 627
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 632
    .end local v2    # "request":Lcn/nubia/upgrade/http/DownloadRequest;
    .end local v4    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :cond_7
    const-string v5, "HttpDownLoader"

    const-string v6, "info errorCode!=0"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v6, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v6, v5, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 634
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 635
    iget-object v5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v5, v8}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "downLoadUrl":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->this$0:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    .line 125
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->handleDownload(Ljava/lang/String;)I

    move-result v1

    .line 126
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

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->tryDownSignKeyUseless()V

    .line 132
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 119
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

    .line 120
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    goto :goto_0

    .line 122
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mNetWork:I

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 723
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 724
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 725
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->mListener:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    .line 728
    :cond_0
    return-void
.end method

.method public releaseDownload()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->cancel(Z)Z

    .line 101
    return-void
.end method
