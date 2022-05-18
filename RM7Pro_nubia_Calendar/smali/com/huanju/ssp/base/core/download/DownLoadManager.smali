.class public Lcom/huanju/ssp/base/core/download/DownLoadManager;
.super Ljava/lang/Object;
.source "DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;
    }
.end annotation


# static fields
.field protected static mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static manager:Lcom/huanju/ssp/base/core/download/DownLoadManager;

.field public static sIsFromSDK:Z


# instance fields
.field private fileDecimalFormat:Ljava/text/DecimalFormat;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/ssp/base/core/download/bean/DownloadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->sIsFromSDK:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->fileDecimalFormat:Ljava/text/DecimalFormat;

    .line 93
    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->query()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->init(Z)V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->asyncDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    return-void
.end method

.method private declared-synchronized asyncDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 7
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 173
    monitor-enter p0

    const/4 v2, 0x0

    .line 175
    .local v2, "isDeepLink":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    :cond_0
    const-string v5, "downLoadUrl is Empty"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getDownloadDir()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setSavePath(Ljava/lang/String;)V

    .line 187
    :goto_1
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->createDirs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 188
    const-string v5, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff0c\u4e2d\u65ad\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    .end local v3    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 184
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setSavePath(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 199
    .local v4, "position":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadWithShow position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 200
    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 201
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 202
    .local v1, "info":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getClickTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setClickTracker(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadedTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownloadedTracker(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getInstalledTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setInstalledTracker(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getOpenTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setOpenTracker(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLinkTracker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLinkTracker(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLink(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getNetType()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setNetType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    move-object p1, v1

    .line 222
    .end local v1    # "info":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->add(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :goto_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->start(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_0

    .line 217
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadWithShow sdk add item pkgname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method private getDownloadItemByPackName(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadItemByPackName  packName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 764
    .local v0, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadItemByPackName  item.getPackageName(mContextWeak.get()):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 765
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    .end local v0    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/huanju/ssp/base/core/download/DownLoadManager;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const-class v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadManager mContextWeak:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->manager:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->manager:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    .line 107
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->manager:Lcom/huanju/ssp/base/core/download/DownLoadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProgramNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 885
    sget-object v3, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 886
    const/4 v1, 0x0

    .line 896
    :goto_0
    return-object v1

    .line 888
    :cond_0
    sget-object v3, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 889
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 891
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 892
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private modifyFrom()V
    .locals 12

    .prologue
    .line 1071
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v9, v10, :cond_0

    .line 1073
    :try_start_0
    const-string v9, "android.app.ActivityManagerNative"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1075
    .local v0, "activityManagerNativeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "gDefault"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1076
    .local v3, "gDefaultField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1077
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1079
    .local v2, "gDefault":Ljava/lang/Object;
    const-string v9, "android.util.Singleton"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1080
    .local v8, "singleton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mInstance"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1081
    .local v5, "mInstanceField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1083
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1086
    .local v7, "rawIActivityManager":Ljava/lang/Object;
    const-string v9, "android.app.IActivityManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1087
    .local v4, "iActivityManagerInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    new-instance v11, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;

    invoke-direct {v11, p0, v7}, Lcom/huanju/ssp/base/core/download/DownLoadManager$IActivityManagerHandler;-><init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Ljava/lang/Object;)V

    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 1089
    .local v6, "proxy":Ljava/lang/Object;
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v0    # "activityManagerNativeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "gDefault":Ljava/lang/Object;
    .end local v3    # "gDefaultField":Ljava/lang/reflect/Field;
    .end local v4    # "iActivityManagerInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "mInstanceField":Ljava/lang/reflect/Field;
    .end local v6    # "proxy":Ljava/lang/Object;
    .end local v7    # "rawIActivityManager":Ljava/lang/Object;
    .end local v8    # "singleton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "trackerType"    # Ljava/lang/String;

    .prologue
    .line 1001
    if-eqz p1, :cond_1

    .line 1002
    const-string v1, ""

    .line 1003
    .local v1, "url":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1025
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    :try_start_0
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSoftSrc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_2
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1035
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->deleteTracker(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 1039
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 1003
    .restart local v1    # "url":Ljava/lang/String;
    :sswitch_0
    const-string v3, "click_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "downloaded_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "installed_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "open_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "deep_link_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "s_downloaded_tracker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 1005
    :pswitch_0
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getClickTracker()Ljava/lang/String;

    move-result-object v1

    .line 1006
    goto :goto_1

    .line 1008
    :pswitch_1
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownloadedTracker()Ljava/lang/String;

    move-result-object v1

    .line 1009
    goto :goto_1

    .line 1011
    :pswitch_2
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getInstalledTracker()Ljava/lang/String;

    move-result-object v1

    .line 1012
    goto :goto_1

    .line 1014
    :pswitch_3
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getOpenTracker()Ljava/lang/String;

    move-result-object v1

    .line 1015
    goto :goto_1

    .line 1017
    :pswitch_4
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLinkTracker()Ljava/lang/String;

    move-result-object v1

    .line 1018
    goto :goto_1

    .line 1020
    :pswitch_5
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getStartDownloadTracker()Ljava/lang/String;

    move-result-object v1

    .line 1021
    goto/16 :goto_1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u53d1\u9001\u76d1\u64ad\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1003
    nop

    :sswitch_data_0
    .sparse-switch
        -0x659ac5e0 -> :sswitch_1
        -0x3fde648d -> :sswitch_2
        -0x2a079f9a -> :sswitch_4
        -0x229945bd -> :sswitch_3
        -0x5ad3294 -> :sswitch_5
        0x4b5c3b81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onDownloadState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "soft_src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    :cond_0
    const-string v1, "\u76d1\u64ad\u5730\u5740\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1068
    :cond_1
    :goto_0
    return-void

    .line 1047
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 1048
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "urls":[Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, p2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 3
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 958
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    const-string v1, "open_tracker"

    invoke-direct {p0, p1, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 962
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 963
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 965
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onOpened(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "\u5e94\u7528\u542f\u52a8\u5931\u8d25"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 975
    const-string v1, "\u5e94\u7528\u542f\u52a8\u5931\u8d25"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 431
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 432
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 433
    return-void
.end method

.method private declared-synchronized setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 22
    .param p1, "info"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    if-nez p1, :cond_1

    .line 603
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 449
    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 451
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v9, "contentIntent":Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v12, "deleteIntent":Landroid/content/Intent;
    const/16 v18, 0x0

    .line 456
    .local v18, "progressMax":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->fileDecimalFormat:Ljava/text/DecimalFormat;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v6, v6, v20

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 457
    .local v17, "progress":I
    const-string v3, ""

    .line 458
    .local v3, "progressStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNotificationBuilder state:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_1
    const-string v11, "\u70b9\u51fb\u6682\u505c\u4e0b\u8f7d"

    .line 463
    .local v11, "contentTitle":Ljava/lang/String;
    const-string v19, "\u6b63\u5728\u4e0b\u8f7d"

    .line 464
    .local v19, "ticker":Ljava/lang/String;
    const/16 v18, 0x64

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    move/from16 v0, v17

    if-le v0, v2, :cond_5

    const/16 v2, 0x64

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v2, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;->onDownloadProcess(Ljava/lang/String;JJ)V

    .line 527
    :cond_2
    :goto_2
    const-string v2, "download_url"

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v2, "download_url"

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/high16 v5, 0x8000000

    .line 530
    invoke-static {v2, v4, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 532
    .local v10, "contentPendingIntent":Landroid/app/PendingIntent;
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/high16 v5, 0x8000000

    .line 532
    invoke-static {v2, v4, v12, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 535
    .local v13, "deletePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    if-nez v2, :cond_d

    .line 537
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_b

    .line 538
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v5, "channel_ssp"

    invoke-direct {v4, v2, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 544
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_c

    .line 545
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 549
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x1080082

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 552
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 553
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 555
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 557
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 577
    :goto_5
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 578
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .local v15, "manager":Landroid/app/NotificationManager;
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_4

    .line 583
    new-instance v8, Landroid/app/NotificationChannel;

    const-string v2, "channel_ssp"

    const-string v4, "ssp"

    const/4 v5, 0x2

    invoke-direct {v8, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 587
    .local v8, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v15, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    .end local v8    # "channel":Landroid/app/NotificationChannel;
    :cond_4
    :goto_6
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    .line 597
    .local v16, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 600
    .end local v3    # "progressStr":Ljava/lang/String;
    .end local v9    # "contentIntent":Landroid/content/Intent;
    .end local v10    # "contentPendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v12    # "deleteIntent":Landroid/content/Intent;
    .end local v13    # "deletePendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "manager":Landroid/app/NotificationManager;
    .end local v16    # "notification":Landroid/app/Notification;
    .end local v17    # "progress":I
    .end local v18    # "progressMax":I
    .end local v19    # "ticker":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 601
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 443
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 465
    .restart local v3    # "progressStr":Ljava/lang/String;
    .restart local v9    # "contentIntent":Landroid/content/Intent;
    .restart local v11    # "contentTitle":Ljava/lang/String;
    .restart local v12    # "deleteIntent":Landroid/content/Intent;
    .restart local v17    # "progress":I
    .restart local v18    # "progressMax":I
    .restart local v19    # "ticker":Ljava/lang/String;
    :cond_5
    if-gez v17, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    move/from16 v2, v17

    goto/16 :goto_1

    .line 473
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_2
    :try_start_4
    const-string v11, "\u70b9\u51fb\u7ee7\u7eed\u4e0b\u8f7d"

    .line 474
    .restart local v11    # "contentTitle":Ljava/lang/String;
    const-string v19, "\u6682\u505c\u4e0b\u8f7d"

    .line 475
    .restart local v19    # "ticker":Ljava/lang/String;
    const/16 v18, 0x64

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    move/from16 v0, v17

    if-le v0, v2, :cond_7

    const/16 v2, 0x64

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_CONTINUE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 476
    :cond_7
    if-gez v17, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    move/from16 v2, v17

    goto :goto_7

    .line 481
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_3
    const-string v11, "\u70b9\u51fb\u5b89\u88c5"

    .line 482
    .restart local v11    # "contentTitle":Ljava/lang/String;
    const-string v19, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 483
    .restart local v19    # "ticker":Ljava/lang/String;
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v2, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getReqId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;->onDownloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 490
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_4
    const-string v11, "\u7b49\u5f85\u4e0b\u8f7d\u4e2d"

    .restart local v11    # "contentTitle":Ljava/lang/String;
    move-object/from16 v19, v11

    .line 491
    .restart local v19    # "ticker":Ljava/lang/String;
    const/16 v18, 0x64

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    move/from16 v0, v17

    if-le v0, v2, :cond_9

    const/16 v2, 0x64

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v2, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 492
    :cond_9
    if-gez v17, :cond_a

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    move/from16 v2, v17

    goto :goto_8

    .line 497
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_5
    const-string v11, "\u70b9\u51fb\u6253\u5f00\u5e94\u7528"

    .line 498
    .restart local v11    # "contentTitle":Ljava/lang/String;
    const-string v19, "\u5e94\u7528\u5b89\u88c5\u5b8c\u6210"

    .line 499
    .restart local v19    # "ticker":Ljava/lang/String;
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_OPEN"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v4, "package_name"

    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v2, "notification_id"

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getReqId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;->onInstallSuccess(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 507
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_6
    const-string v11, "\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    .line 508
    .restart local v11    # "contentTitle":Ljava/lang/String;
    const-string v19, "\u51c6\u5907\u5f00\u59cb\u4e0b\u8f7d"

    .line 509
    .restart local v19    # "ticker":Ljava/lang/String;
    const-string v2, "com.ssp.download.action.ACTION_DOWNLOAD_CONTINUE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v2, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 514
    .end local v11    # "contentTitle":Ljava/lang/String;
    .end local v19    # "ticker":Ljava/lang/String;
    :pswitch_7
    const-string v11, "\u4e0b\u8f7d\u51fa\u9519\uff0c\u70b9\u51fb\u53d6\u6d88\u4e0b\u8f7d"

    .line 515
    .restart local v11    # "contentTitle":Ljava/lang/String;
    const-string v19, "\u4e0b\u8f7d\u51fa\u9519"

    .line 516
    .restart local v19    # "ticker":Ljava/lang/String;
    const-string v2, "com.ssp.download.action.ACTION_ERROR_DOWNLOAD"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->cancelDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_2

    .line 540
    .restart local v10    # "contentPendingIntent":Landroid/app/PendingIntent;
    .restart local v13    # "deletePendingIntent":Landroid/app/PendingIntent;
    :cond_b
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v4, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setBuilder(Landroid/app/Notification$Builder;)V

    goto/16 :goto_3

    .line 547
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 562
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 565
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 569
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 570
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 571
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 573
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 567
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 591
    .restart local v15    # "manager":Landroid/app/NotificationManager;
    :catch_1
    move-exception v14

    .line 592
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private start(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 6
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadWithShow item.getCurrentState():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 243
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->installApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 252
    .end local v0    # "file":Ljava/io/File;
    :pswitch_2
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 256
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 985
    if-eqz p1, :cond_0

    .line 986
    const/4 v1, 0x7

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 987
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 988
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 280
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 284
    new-instance v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;

    invoke-direct {v0, p1}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;-><init>(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 285
    .local v0, "processor":Lcom/huanju/ssp/base/core/download/DownloadProcessor;
    new-instance v1, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;-><init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->setListener(Lcom/huanju/ssp/base/core/download/listener/DownloadListener;)V

    .line 377
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->process()V

    goto :goto_0
.end method

.method public downloadWithShow(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 164
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getShortPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;-><init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public getDownloadItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 400
    :goto_0
    return-object v1

    .line 392
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 393
    .local v1, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 397
    .end local v1    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    .line 400
    goto :goto_0
.end method

.method public getVersionCode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 646
    :goto_0
    return v3

    .line 632
    :cond_0
    sget-object v3, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersionCode  mContextWeak\uff1a  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    move v3, v4

    .line 634
    goto :goto_0

    .line 636
    :cond_1
    sget-object v3, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 637
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 639
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x4000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 640
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 641
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    move v3, v4

    .line 646
    goto :goto_0

    .line 643
    :catch_1
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public init(Z)V
    .locals 11
    .param p1, "isNetChange"    # Z

    .prologue
    const/4 v10, 0x1

    .line 115
    :try_start_0
    sget-object v4, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 116
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 117
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 118
    .local v3, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 142
    :cond_1
    :pswitch_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v10, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 151
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :catch_0
    move-exception v4

    .line 155
    :cond_2
    return-void

    .line 120
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :pswitch_1
    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 123
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 124
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v10, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 127
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 128
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_0

    .line 132
    .end local v1    # "file":Ljava/io/File;
    :pswitch_2
    sget-object v4, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_0

    .line 138
    :pswitch_3
    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 145
    :cond_5
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 146
    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public installApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 668
    const-string v2, "installApp"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 670
    if-nez p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 673
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install item.getSavePath():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u81ea\u52a8\u8c03\u8d77\u5b89\u88c5\u754c\u9762\u5931\u8d25"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->sIsFromSDK:Z

    .line 680
    invoke-virtual {p0, p1, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->normalInstall(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public installedApp(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 876
    :goto_0
    return-void

    .line 781
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getDownloadItemByPackName(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-result-object v3

    .line 782
    .local v3, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk installedApp  item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    if-nez v3, :cond_1

    .line 785
    :try_start_1
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getProgramNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->recordInstallFailedInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :goto_1
    :try_start_2
    const-string v5, "sdk \u6ca1\u6709\u627e\u5230AppName : %s \u7684\u4e0b\u8f7d\u4efb\u52a1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getProgramNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 871
    .end local v3    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 786
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    :catch_1
    move-exception v2

    .line 787
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 793
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 795
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v5

    invoke-direct {v5, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->setNotificationBuilder(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 798
    const-string v5, "installed_tracker"

    invoke-direct {p0, v3, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 799
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 800
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onInstalled(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 803
    :cond_2
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong()Z

    move-result v5

    if-nez v5, :cond_7

    .line 804
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "deepLink":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-nez v5, :cond_6

    .line 807
    const/4 v5, 0x1

    :try_start_4
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 808
    .local v1, "deepLinkIntent":Landroid/content/Intent;
    const-string v5, "http"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v5

    const-string v6, "cn.nubia.browser"

    invoke-virtual {v5, v6}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 809
    const-string v5, "cn.nubia.browser"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    :cond_3
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    .line 813
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_5

    .line 815
    const-wide/16 v6, 0x3e8

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 819
    :goto_2
    :try_start_6
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepLink 2 \u8df3\u8f6c\u6210\u529f   \uff1a  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 822
    const-string v5, "deep_link_tracker"

    invoke-direct {p0, v3, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 825
    const-string v5, "open_tracker"

    invoke-direct {p0, v3, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 827
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 829
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 832
    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onOpened(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 835
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepLink 2 \u8df3\u8f6c\u6210\u529f   \uff1a  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 841
    .end local v1    # "deepLinkIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v2

    .line 843
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepLink 2 NotFound  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 816
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "deepLinkIntent":Landroid/content/Intent;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_3
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 844
    .end local v1    # "deepLinkIntent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_4
    move-exception v2

    .line 845
    .local v2, "e":Ljava/net/URISyntaxException;
    :try_start_9
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 847
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepLink 2 NotFound  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 838
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "deepLinkIntent":Landroid/content/Intent;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepLink 2 NotFound  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 852
    .end local v1    # "deepLinkIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    :try_start_b
    const-string v5, "open_tracker"

    invoke-direct {p0, v3, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->onDownloadState(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 854
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 855
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 856
    :catch_5
    move-exception v2

    .line 857
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 864
    .end local v0    # "deepLink":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_d
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->delete(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 866
    iget-object v5, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 867
    :catch_6
    move-exception v2

    .line 868
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 625
    :goto_0
    return v2

    .line 614
    :cond_0
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppInstalled  mContextWeak\uff1a  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    move v2, v3

    .line 616
    goto :goto_0

    .line 618
    :cond_1
    sget-object v2, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 619
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 620
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 621
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move v2, v3

    .line 625
    goto :goto_0
.end method

.method public normalInstall(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/io/File;)V
    .locals 7
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 690
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Build.VERSION.SDK_INT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 694
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 695
    const-string v5, "install sdk N"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 697
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".fileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "providerName":Ljava/lang/String;
    sget-object v5, Lcom/huanju/ssp/base/core/common/Config;->mPorviderName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 699
    sget-object v4, Lcom/huanju/ssp/base/core/common/Config;->mPorviderName:Ljava/lang/String;

    .line 701
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install providerName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 702
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v4, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 704
    .local v0, "contentUri":Landroid/net/Uri;
    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 706
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "providerName":Ljava/lang/String;
    :goto_0
    return-void

    .line 711
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 712
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 727
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 717
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_3
    const-string v5, "install sdk not N"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 718
    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 719
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public openApp(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notificationId"    # I

    .prologue
    const/4 v9, 0x0

    .line 908
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 944
    :goto_0
    return v8

    .line 911
    :cond_0
    sget-object v8, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 912
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 913
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 914
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v6, v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 915
    .local v6, "resolveIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 919
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    move v8, v9

    .line 920
    goto :goto_0

    .line 923
    :cond_1
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 924
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 925
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 931
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v6    # "resolveIntent":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 932
    sget-object v8, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    const/4 v8, 0x1

    goto :goto_0

    .line 934
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 935
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, -0x1

    if-eq p2, v8, :cond_3

    .line 936
    invoke-direct {p0, p2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->removeNotification(I)V

    .line 943
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    .line 944
    goto :goto_0
.end method

.method public pauseDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    goto :goto_0
.end method

.method public slientInstall(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/io/File;)V
    .locals 8
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x1

    .line 735
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slientInstall item.getSavePath():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 736
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 738
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 739
    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huanju/ssp/base/utils/InstallUtil;->installAPI28(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 740
    .local v4, "result":I
    if-ne v4, v7, :cond_0

    .line 753
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "result":I
    :goto_0
    return-void

    .line 744
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slientInstall getPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 745
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pm"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "install"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, "-r"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "-i"

    aput-object v6, v0, v5

    const/4 v6, 0x4

    sget-object v5, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 746
    .local v0, "command":[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 747
    .local v3, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    .end local v0    # "command":[Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "processBuilder":Ljava/lang/ProcessBuilder;
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->normalInstall(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/io/File;)V

    goto :goto_0
.end method
