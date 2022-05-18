.class public Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field public static final ACTION_CANCEL_DOWNLOAD:Ljava/lang/String; = "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

.field public static final ACTION_DOWNLOAD_CONTINUE:Ljava/lang/String; = "com.ssp.download.action.ACTION_DOWNLOAD_CONTINUE"

.field public static final ACTION_DOWNLOAD_INSTALL:Ljava/lang/String; = "com.ssp.download.action.ACTION_DOWNLOAD_INSTALL"

.field public static final ACTION_DOWNLOAD_OPEN:Ljava/lang/String; = "com.ssp.download.action.ACTION_DOWNLOAD_OPEN"

.field public static final ACTION_DOWNLOAD_PAUSE:Ljava/lang/String; = "com.ssp.download.action.ACTION_DOWNLOAD_PAUSE"

.field public static final ACTION_ERROR_DOWNLOAD:Ljava/lang/String; = "com.ssp.download.action.ACTION_ERROR_DOWNLOAD"

.field public static final DOWNLOAD_PACKAGE:Ljava/lang/String; = "download_package"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PROXY_BEGIN_DOWNLOAD:Ljava/lang/String; = "com.ssp.download.action.BEGIN_DOWNLOAD"

.field public static final PROXY_CANCEL_DOWNLOAD:Ljava/lang/String; = "com.ssp.download.action.CANCEL_DOWNLOAD"

.field public static final PROXY_DOWNLOAD_COMPLETE:Ljava/lang/String; = "com.ssp.download.action.DOWNLOAD_COMPLETE"

.field public static final PROXY_INSTALL_COMPLETE:Ljava/lang/String; = "com.ssp.download.action.INSTALL_COMPLETE"

.field public static final PROXY_OPEN_APP:Ljava/lang/String; = "com.ssp.download.action.OPEN_APP"

.field private static mDownloadIntentFilter:Landroid/content/IntentFilter;

.field private static mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

.field private static mPackageIntentFilter:Landroid/content/IntentFilter;

.field private static mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-class v2, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    .line 63
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    sget-object v3, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    :cond_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    .line 70
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_DOWNLOAD_CONTINUE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_DOWNLOAD_OPEN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.ACTION_ERROR_DOWNLOAD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.BEGIN_DOWNLOAD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.INSTALL_COMPLETE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.OPEN_APP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.ssp.download.action.CANCEL_DOWNLOAD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    sget-object v3, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    :cond_1
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_2

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    .line 88
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    sget-object v3, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized unregisterReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-class v2, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x0

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mPackageIntentFilter:Landroid/content/IntentFilter;

    .line 101
    :cond_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x0

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mDownloadIntentFilter:Landroid/content/IntentFilter;

    .line 104
    :cond_1
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_2

    .line 105
    const/4 v1, 0x0

    sput-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mNetWorkChangeIntentFilter:Landroid/content/IntentFilter;

    .line 107
    :cond_2
    sget-object v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->mReceiver:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit v2

    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getShortPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;-><init>(Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
