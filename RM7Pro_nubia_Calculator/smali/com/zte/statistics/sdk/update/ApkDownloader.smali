.class public Lcom/zte/statistics/sdk/update/ApkDownloader;
.super Ljava/lang/Object;
.source "ApkDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultDownLoad(Lcom/zte/statistics/sdk/update/UpdateApkInfo;Landroid/content/Context;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static downloadBackupApk(Lcom/zte/statistics/sdk/update/UpdateApkInfo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 15
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    :cond_0
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 20
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p1, "download"

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 23
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-static {p0, p2}, Lcom/zte/statistics/sdk/update/ApkDownloader;->defaultDownLoad(Lcom/zte/statistics/sdk/update/UpdateApkInfo;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
