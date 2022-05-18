.class Lcn/nubia/upgrade/http/HttpDownLoader$a;
.super Landroid/os/AsyncTask;
.source "HttpDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/HttpDownLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final synthetic a:Lcn/nubia/upgrade/http/HttpDownLoader;

.field private b:Lcn/nubia/upgrade/http/DownloadRequest;

.field private c:Lcn/nubia/upgrade/http/IDownLoadListener;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/http/HttpDownLoader;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->f:I

    .line 104
    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 105
    iput-object p3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 106
    iput-object p4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->g:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->h:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/16 v9, 0x3e8

    const/4 v1, 0x4

    const/4 v8, 0x1

    const/4 v0, 0x7

    const/4 v7, 0x0

    .line 575
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    invoke-direct {p0, p1, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 579
    :goto_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    .line 580
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    :try_start_0
    const-string v2, "HttpDownLoader"

    const-string v3, "wait network change!!!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-wide/16 v2, 0xdac

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_2
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 599
    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    .line 598
    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    .line 600
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 601
    invoke-static {v4}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v4

    .line 600
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    .line 602
    const-string v4, "HttpDownLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle IoException:isWifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":isMobile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 606
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    .line 616
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    if-nez v2, :cond_7

    .line 617
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v2, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 619
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 620
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    move v0, v1

    goto :goto_0

    .line 588
    :catch_0
    move-exception v2

    .line 590
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 591
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 607
    :cond_4
    if-eqz v3, :cond_5

    .line 608
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    goto :goto_2

    .line 609
    :cond_5
    iget v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    .line 611
    iput-boolean v8, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    goto :goto_2

    .line 612
    :cond_6
    iget v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    if-ne v3, v8, :cond_3

    if-eqz v2, :cond_3

    .line 614
    iput-boolean v7, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->e:Z

    goto :goto_2

    .line 623
    :cond_7
    iget v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->f:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 624
    iget v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->f:I

    .line 625
    const-string v2, "HttpDownLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReconnectTime---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a(Ljava/lang/String;Z)I

    move-result v2

    goto/16 :goto_1

    .line 635
    :cond_8
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v2, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 637
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 638
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0, v9}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 17

    .prologue
    .line 140
    const/4 v5, 0x0

    .line 141
    const-string v2, "HttpDownLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v6}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "HttpDownLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v6}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v3}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 147
    const/4 v2, 0x4

    .line 148
    const-string v3, "HttpDownLoader"

    const-string v4, "no available network, download cancel."

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3e8

    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    .line 478
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    const/4 v3, 0x0

    .line 157
    const-wide/16 v6, 0x0

    .line 159
    const/4 v2, 0x0

    .line 160
    :try_start_0
    new-instance v10, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v8}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 161
    invoke-virtual {v8}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".temp"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    const/4 v2, 0x1

    move v4, v2

    .line 174
    :goto_1
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 179
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 181
    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 182
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 184
    if-eqz v4, :cond_2

    .line 185
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 187
    const-string v3, "RANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-wide v8, v6

    .line 190
    if-eqz v4, :cond_16

    .line 192
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_12

    const-string v3, "Content-Type"

    .line 193
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/ausp"

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 197
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v12, v3

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v6

    .line 199
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-gtz v3, :cond_3

    .line 200
    const-wide/16 v6, 0x0

    .line 202
    :cond_3
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v3

    if-nez v3, :cond_8

    .line 204
    const-string v3, "HttpDownLoader"

    const-string v4, "break continue down space not enough"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3ef

    .line 209
    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_4
    const/4 v3, 0x1

    .line 470
    if-eqz v2, :cond_5

    .line 471
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v2, v3

    .line 211
    goto/16 :goto_0

    .line 165
    :cond_6
    :try_start_2
    const-string v4, "HttpDownLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 166
    invoke-virtual {v9}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 167
    invoke-virtual {v9}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-static {v4, v8}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    move v4, v2

    goto/16 :goto_1

    .line 214
    :cond_8
    add-long/2addr v12, v8

    .line 216
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    iget-object v3, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v3, v4, :cond_9

    if-nez p2, :cond_9

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 220
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    iget-object v3, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v3, v4, :cond_a

    if-eqz p2, :cond_a

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 224
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 226
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v7, v10, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 230
    const/16 v3, 0x1000

    new-array v14, v3, [B

    .line 232
    const/4 v3, 0x0

    .line 233
    const/4 v4, 0x0

    .line 234
    :goto_2
    invoke-virtual {v11, v14}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_b

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_b

    .line 236
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 237
    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_2b

    .line 239
    long-to-float v3, v8

    add-float/2addr v3, v6

    long-to-float v15, v12

    div-float/2addr v3, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v3, v15

    float-to-int v3, v3

    .line 240
    if-eq v4, v3, :cond_2a

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    :goto_3
    move v4, v3

    move v3, v6

    .line 245
    goto :goto_2

    .line 247
    :cond_b
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 248
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 255
    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".patch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v10, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 264
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_c

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    move v3, v5

    .line 470
    :cond_d
    :goto_5
    if-eqz v2, :cond_27

    .line 471
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v2, v3

    .line 474
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 475
    const/4 v2, 0x7

    .line 477
    :cond_f
    const-string v3, "HttpDownLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doapkDownLoad return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_10
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 260
    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v10, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 443
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    .line 444
    :goto_7
    :try_start_5
    const-string v4, "HttpDownLoader"

    const-string v5, "MalformedURLException"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 446
    const/4 v2, 0x4

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v5, v4, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_11

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v5, 0x3e8

    invoke-interface {v4, v5}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 470
    :cond_11
    if-eqz v3, :cond_e

    .line 471
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 268
    :cond_12
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_15

    .line 270
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 271
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    :goto_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_14

    .line 278
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 452
    :catch_1
    move-exception v3

    move-object v3, v2

    .line 453
    :goto_9
    :try_start_7
    const-string v2, "HttpDownLoader"

    const-string v4, "FileNotFoundException"

    invoke-static {v2, v4}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3f0

    .line 457
    invoke-interface {v2, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 459
    :cond_13
    const/16 v2, 0x8

    .line 470
    if-eqz v3, :cond_e

    .line 471
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 281
    :cond_14
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 285
    :try_start_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 287
    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_25

    .line 289
    const-string v3, "HttpDownLoader"

    const-string v4, "patch down sign key usless"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 290
    const/4 v3, 0x3

    goto/16 :goto_5

    .line 293
    :catch_2
    move-exception v3

    .line 294
    :try_start_a
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 296
    const-string v3, "HttpDownLoader"

    const-string v4, "download JSONException ERROR_DNS_HIJACK_DOUBT"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v3, 0x2

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v5, 0x3e8

    invoke-interface {v4, v5}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 460
    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    .line 461
    :goto_a
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 462
    const-string v2, "HttpDownLoader"

    const-string v4, "download apk io exception"

    invoke-static {v2, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v2

    if-eqz v2, :cond_26

    .line 464
    const/4 v2, 0x7

    .line 470
    :goto_b
    if-eqz v3, :cond_e

    .line 471
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 303
    :cond_15
    :try_start_c
    const-string v3, "HttpDownLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 305
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 307
    const/4 v5, 0x5

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_25

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3ec

    .line 310
    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    move v3, v5

    goto/16 :goto_5

    .line 316
    :cond_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_21

    const-string v3, "Content-Type"

    .line 317
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/ausp"

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 320
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v12, v3

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getStorageLimit()J

    move-result-wide v6

    .line 322
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-gez v3, :cond_17

    .line 323
    const-wide/16 v6, 0x0

    .line 325
    :cond_17
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcn/nubia/upgrade/util/CommonUtils;->isStorageEnough(J)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 327
    const-string v3, "HttpDownLoader"

    const-string v4, "down complete apk space not enough"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_18

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3ef

    .line 332
    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 334
    :cond_18
    const/4 v3, 0x1

    .line 470
    if-eqz v2, :cond_19

    .line 471
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    move v2, v3

    .line 334
    goto/16 :goto_0

    .line 338
    :cond_1a
    add-long/2addr v12, v8

    .line 339
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    iget-object v3, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v3, v4, :cond_1b

    if-nez p2, :cond_1b

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 344
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    iget-object v3, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v3, v4, :cond_1c

    if-eqz p2, :cond_1c

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 348
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 350
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v7, v10, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 353
    const v3, 0xa000

    new-array v14, v3, [B

    .line 355
    const/4 v3, 0x0

    .line 356
    const/4 v4, 0x0

    .line 357
    :goto_c
    invoke-virtual {v11, v14}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_1d

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_1d

    .line 359
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 360
    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 362
    long-to-float v3, v8

    add-float/2addr v3, v6

    long-to-float v15, v12

    div-float/2addr v3, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v3, v15

    float-to-int v3, v3

    .line 363
    if-eq v3, v4, :cond_28

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    :goto_d
    move v4, v3

    move v3, v6

    .line 368
    goto :goto_c

    .line 371
    :cond_1d
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 380
    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".patch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v10, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 389
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_1e

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    :cond_1e
    move v3, v5

    .line 393
    goto/16 :goto_5

    .line 384
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 385
    invoke-virtual {v4}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v10, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_e

    .line 470
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_f
    if-eqz v3, :cond_20

    .line 471
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    throw v2

    .line 396
    :cond_21
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_24

    .line 398
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 399
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 404
    :goto_10
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 405
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 409
    :cond_22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 413
    :try_start_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 415
    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_23

    .line 417
    const-string v3, "HttpDownLoader"

    const-string v4, "sign key usless"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 418
    const/4 v5, 0x3

    :cond_23
    :goto_11
    move v3, v5

    .line 430
    goto/16 :goto_5

    .line 421
    :catch_4
    move-exception v3

    .line 422
    :try_start_10
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 424
    const-string v3, "HttpDownLoader"

    const-string v4, "ERROR_DNSHIJACK_DOUBT"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v5, 0x2

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_23

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3e8

    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_11

    .line 431
    :cond_24
    const-string v3, "HttpDownLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Complete Down HTTP_RESPONSE_CODE_ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 432
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v4, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v4, v3, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 434
    const/4 v5, 0x5

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_25

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v4, 0x3ec

    .line 437
    invoke-interface {v3, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_25
    move v3, v5

    goto/16 :goto_5

    .line 466
    :cond_26
    const/4 v2, 0x6

    goto/16 :goto_b

    .line 470
    :catchall_1
    move-exception v2

    goto/16 :goto_f

    .line 460
    :catch_5
    move-exception v2

    goto/16 :goto_a

    .line 452
    :catch_6
    move-exception v2

    goto/16 :goto_9

    .line 443
    :catch_7
    move-exception v2

    goto/16 :goto_7

    :cond_27
    move v2, v3

    goto/16 :goto_6

    :cond_28
    move v3, v4

    goto/16 :goto_d

    :cond_29
    move v3, v6

    goto/16 :goto_c

    :cond_2a
    move v3, v4

    goto/16 :goto_3

    :cond_2b
    move v3, v6

    goto/16 :goto_2
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v4, 0x7d5

    .line 487
    const-string v0, "HttpDownLoader"

    const-string v1, " TryDown SignKey Useless---"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v0}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/upgrade/util/InfoCollect;->getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    iget-object v1, v1, Lcn/nubia/upgrade/http/HttpDownLoader;->mHttpRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-nez v0, :cond_2

    .line 496
    const-string v0, "HttpDownLoader"

    const-string v1, " SignKey Useless PostApkInfo NULL"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 498
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v1}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 507
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v1, 0x7d4

    invoke-interface {v0, v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 513
    :cond_3
    iget v1, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->erorCode:I

    if-nez v1, :cond_7

    .line 514
    iget-object v0, v0, Lcn/nubia/upgrade/http/HttpRequestManager$ResultInfo;->versionData:Lcn/nubia/upgrade/model/VersionData;

    .line 515
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 517
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 520
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 526
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 532
    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 534
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 535
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a(Ljava/lang/String;)I

    move-result v0

    .line 543
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 545
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 547
    invoke-interface {v0, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 523
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 524
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 552
    :cond_6
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 553
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0

    .line 559
    :cond_7
    const-string v0, "HttpDownLoader"

    const-string v1, "info errorCode!=0"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 561
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0, v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->cancel(Z)Z

    .line 100
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v2}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    .line 121
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a(Ljava/lang/String;)I

    move-result v0

    .line 122
    const-string v1, "HttpDownLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloader res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_1
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->a:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-static {v2}, Lcn/nubia/upgrade/http/HttpDownLoader;->access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    goto :goto_0

    .line 119
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->d:I

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 650
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 651
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->b:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 652
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader$a;->c:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    .line 655
    :cond_0
    return-void
.end method
