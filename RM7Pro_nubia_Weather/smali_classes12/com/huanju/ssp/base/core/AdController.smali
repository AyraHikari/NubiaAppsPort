.class public Lcom/huanju/ssp/base/core/AdController;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;


# instance fields
.field private adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

.field private clickListener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

.field protected mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

.field private trackerListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/AdController;Lorg/json/JSONObject;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->parseClickRecommend(Lorg/json/JSONObject;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "x2"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->executeDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/core/AdController;->openWebPage(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "x2"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->toDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/AdController;->toAppStore(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "x2"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huanju/ssp/base/core/AdController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/AdController;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "x2"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->downLoadApp(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    return-void
.end method

.method private checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 5
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 887
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dwlconfirm"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 889
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->downLoadApp(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 893
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 897
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u662f\u5426\u5728\u975ewifi\u73af\u5883\u4e0b\u8f7d\uff1f"

    .line 898
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/huanju/ssp/base/core/AdController$16;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/base/core/AdController$16;-><init>(Lcom/huanju/ssp/base/core/AdController;)V

    .line 899
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u8ba4"

    new-instance v4, Lcom/huanju/ssp/base/core/AdController$15;

    invoke-direct {v4, p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController$15;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 905
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/huanju/ssp/base/core/AdController$14;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/base/core/AdController$14;-><init>(Lcom/huanju/ssp/base/core/AdController;)V

    .line 913
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 919
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 921
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 925
    const-string v2, "SSP_SDK"

    const-string v3, "ASDK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 926
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 927
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_3

    .line 928
    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 931
    .end local v1    # "window":Landroid/view/Window;
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 932
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 935
    :cond_4
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    goto :goto_0
.end method

.method private checkInstalled(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 946
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 949
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {p0, p2, v1}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 956
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00 \u5df2\u5b89\u88c5 app--->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 960
    goto :goto_0
.end method

.method private createDownloadItem(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .locals 7
    .param p1, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    const/4 v6, 0x1

    .line 970
    new-instance v0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;-><init>()V

    .line 971
    .local v0, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 972
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setName(Ljava/lang/String;)V

    .line 981
    :goto_0
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownLoadUrl(Ljava/lang/String;)V

    .line 982
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLink(Ljava/lang/String;)V

    .line 983
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->downloadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownloadName(Ljava/lang/String;)V

    .line 985
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownloadedTracker(Ljava/lang/String;)V

    .line 986
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setInstalledTracker(Ljava/lang/String;)V

    .line 987
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setOpenTracker(Ljava/lang/String;)V

    .line 988
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setStartDownloadTracker(Ljava/lang/String;)V

    .line 989
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDeepLinkTracker(Ljava/lang/String;)V

    .line 990
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setAdDownLoadListener(Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;)V

    .line 991
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setReqId(Ljava/lang/String;)V

    .line 992
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v3, "guangdiantong"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 993
    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setGuangdiantong(Z)V

    .line 999
    :cond_0
    :goto_1
    iget-wide v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1001
    invoke-virtual {p1, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setClickTracker(Ljava/lang/String;)V

    .line 1003
    :cond_1
    new-instance v2, Lcom/huanju/ssp/base/core/AdController$17;

    invoke-direct {v2, p0, p2}, Lcom/huanju/ssp/base/core/AdController$17;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setListener(Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 1044
    return-object v0

    .line 974
    :cond_2
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "urlMd5":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 976
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 978
    :cond_3
    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    .end local v1    # "urlMd5":Ljava/lang/String;
    :cond_4
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v3, "adhub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setSoftSrc(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private downLoadApp(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 4
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 1066
    iget-wide v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1067
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->createDownloadItem(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->downloadWithShow(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 1071
    return-void
.end method

.method private executeDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 3
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 784
    iget v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Lcom/huanju/ssp/base/core/AdController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController$10;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 805
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto :goto_0

    .line 803
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto :goto_0
.end method

.method private onClickAdStateChang(I)V
    .locals 1
    .param p1, "clickAdState"    # I

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController;->clickListener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-nez v0, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController;->clickListener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    goto :goto_0
.end method

.method private openDownloadDialog(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 8
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    const/4 v7, 0x0

    .line 808
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    new-instance v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/huanju/ssp/base/core/view/DownloadDialog;-><init>(Landroid/content/Context;)V

    .line 813
    .local v1, "downloadDialog":Lcom/huanju/ssp/base/core/view/DownloadDialog;
    iget-object v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "apkName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    .line 815
    const/16 v5, 0x10

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "fileName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->setMessage(Ljava/lang/String;)V

    .line 823
    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/huanju/ssp/base/core/AdController$11;

    invoke-direct {v6, p0, v1}, Lcom/huanju/ssp/base/core/AdController$11;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/view/DownloadDialog;)V

    invoke-virtual {v1, v5, v6}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->setNoOnclickListener(Ljava/lang/String;Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;)V

    .line 832
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/huanju/ssp/base/core/AdController$12;

    invoke-direct {v6, p0, v1, p1, p2}, Lcom/huanju/ssp/base/core/AdController$12;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/view/DownloadDialog;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-virtual {v1, v5, v6}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->setYesOnclickListener(Ljava/lang/String;Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;)V

    .line 859
    new-instance v5, Lcom/huanju/ssp/base/core/AdController$13;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/base/core/AdController$13;-><init>(Lcom/huanju/ssp/base/core/AdController;)V

    invoke-virtual {v1, v5}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 866
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 867
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->show()V

    .line 868
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 869
    .local v4, "window":Landroid/view/Window;
    if-eqz v4, :cond_0

    .line 870
    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 871
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 872
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 873
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x1

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 874
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 875
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 876
    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 877
    const v5, 0x20008

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 878
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 820
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "window":Landroid/view/Window;
    :cond_3
    move-object v2, v0

    .restart local v2    # "fileName":Ljava/lang/String;
    goto :goto_1
.end method

.method private openWebPage(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "click_url"    # Ljava/lang/String;
    .param p3, "isReport"    # Z

    .prologue
    const/4 v6, 0x1

    .line 758
    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const-string v1, "SSP_SDK"

    const-string v2, "SSP_SDK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    iget-wide v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 763
    const-string v1, "web \u9875\u52a0\u8f7d\u5b8c\u6bd5   \u9875\u9762\u52a0\u8f7d\u5b8c\u6bd5\u4e4b\u540e\u53d1\u9001\u70b9\u51fb\u76d1\u64ad"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 764
    iput-boolean v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    .line 765
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    invoke-virtual {p1, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 767
    :cond_2
    new-instance v0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;-><init>(Ljava/lang/ref/WeakReference;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 768
    .local v0, "browserPag":Lcom/huanju/ssp/base/core/view/web/BrowserDialog;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->clickListener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->setWebPagListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V

    .line 769
    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->setonShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 770
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->load(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private parseClickRecommend(Lorg/json/JSONObject;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 8
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 507
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 509
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 510
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "apk_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    const-string v5, "apk_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend apk_url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 514
    :cond_0
    const-string v5, "package_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    const-string v5, "package_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend bundle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 518
    :cond_1
    const-string v5, "dwnlst"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 519
    const-string v5, "dwnlst"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 520
    .local v1, "dwnlst":Lorg/json/JSONArray;
    iput-object v1, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_dwnlst:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 522
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 524
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x2

    const-string v7, "dwnlst"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    .end local v1    # "dwnlst":Lorg/json/JSONArray;
    :cond_2
    const-string v5, "dwnltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    const-string v5, "dwnltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 528
    .local v2, "dwnltrackers":Lorg/json/JSONArray;
    iput-object v2, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_dwnl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 530
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 532
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x3

    const-string v7, "dwnltrackers"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    .end local v2    # "dwnltrackers":Lorg/json/JSONArray;
    :cond_3
    const-string v5, "intltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    const-string v5, "intltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 536
    .local v4, "intltrackers":Lorg/json/JSONArray;
    iput-object v4, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_intl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 538
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 540
    iget-object v5, p2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x4

    const-string v7, "intltrackers"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v4    # "intltrackers":Lorg/json/JSONArray;
    :cond_4
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toAppStore(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 18
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v15}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v15

    const-string v16, "cn.nubia.neostore"

    invoke-virtual/range {v15 .. v16}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getVersionCode(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x41

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 664
    const/4 v12, 0x0

    .line 747
    :goto_0
    return v12

    .line 666
    :cond_0
    const/4 v12, 0x0

    .line 667
    .local v12, "result":Z
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 668
    .local v11, "packname":Ljava/lang/String;
    const-string v14, ""

    .line 669
    .local v14, "uriContent":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start ad.dl_type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",packname:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p1

    iget v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 671
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&startDownload=true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 676
    :goto_1
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start uriContent:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 677
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "market://details?id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 678
    .local v13, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v7, v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 679
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 681
    const-string v15, "cn.nubia.neostore"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v15, "isFromNubiaAd"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const-string v15, "adSlotId"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v15, "adSource"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v15, "adInApp"

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v15, "adType"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 690
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_7

    .line 691
    const-string v15, "adms"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 692
    .local v8, "jsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_7

    .line 693
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v6, v15, :cond_6

    .line 694
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 695
    .local v10, "opt":Lorg/json/JSONObject;
    if-nez v10, :cond_3

    .line 693
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 673
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "opt":Lorg/json/JSONObject;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&startDownload=false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 698
    .restart local v6    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "opt":Lorg/json/JSONObject;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    const-string v15, "dl_url"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v15, "hasreplace"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 700
    const-string v15, "bundle"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    if-eqz v15, :cond_4

    .line 703
    const-string v15, "dwnlst"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 704
    const-string v15, "dwnlst"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    const-string v15, "dwnlst"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 706
    .local v2, "ad_dwnlst":Lorg/json/JSONArray;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start opt ad_dwnlst:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 707
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start ad.ad_dwnlst:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 709
    .end local v2    # "ad_dwnlst":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    if-eqz v15, :cond_5

    .line 710
    const-string v15, "dwnltrackers"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    const-string v15, "dwnltrackers"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v15, "dwnltrackers"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 713
    .local v3, "ad_dwnltrackers":Lorg/json/JSONArray;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start opt ad_dwnltrackers:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 714
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start ad.ad_dwnl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 716
    .end local v3    # "ad_dwnltrackers":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    if-eqz v15, :cond_1

    .line 717
    const-string v15, "intltrackers"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    const-string v15, "intltrackers"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    const-string v15, "intltrackers"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 720
    .local v4, "ad_intl":Lorg/json/JSONArray;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start opt ad_intl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 721
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "toDeeplink  start toAppStore start ad.ad_intl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 743
    .end local v4    # "ad_intl":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "opt":Lorg/json/JSONObject;
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 745
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 724
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 727
    .end local v6    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    const-string v16, "__CLICK_ID__"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 728
    const-string v15, "adContent"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clickid:="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 730
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isFromNubiaAd=true adSlotId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "adSource"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "adInApp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "adType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 731
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "adContent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_8

    .line 733
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 737
    :goto_4
    const-string v15, "toDeeplink  start toAppStore end "

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 739
    const/4 v12, 0x1

    .line 741
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    goto/16 :goto_0

    .line 735
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method private toDeeplink(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 6
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 551
    :try_start_0
    const-string v3, "toDeeplink  start\uff1a  "

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 554
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 558
    .local v2, "temp":Landroid/content/Context;
    :goto_0
    move-object v0, v2

    .line 559
    .local v0, "appcontext":Landroid/content/Context;
    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    .line 560
    new-instance v3, Lcom/huanju/ssp/base/core/AdController$9;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/huanju/ssp/base/core/AdController$9;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Landroid/content/Context;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    const-wide/16 v4, 0x32

    invoke-static {v3, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 624
    .end local v0    # "appcontext":Landroid/content/Context;
    .end local v2    # "temp":Landroid/content/Context;
    :goto_1
    return-void

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "temp":Landroid/content/Context;
    goto :goto_0

    .line 621
    .end local v2    # "temp":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 622
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeepLink NotFound  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private toDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 6
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toDownload ad.down_x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.down_y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.up_x;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.up_y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 389
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/huanju/ssp/base/core/AdController;->checkInstalled(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_2

    .line 406
    const-string v1, "\u70b9\u51fb\u65f6\u6d17\u5305"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 408
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__CLICK_TYPE__"

    const-string v3, "1"

    .line 416
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__TS__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "mUrl":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/AdController$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController$7;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 446
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    goto/16 :goto_0

    .line 450
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v2, "guangdiantong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_3

    .line 452
    const-string v1, "\u5e7f\u70b9\u901a"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 454
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .restart local v0    # "mUrl":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/AdController$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController$8;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 489
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    goto/16 :goto_0

    .line 493
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 494
    const/4 v1, 0x1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_activate:I

    if-ne v1, v2, :cond_4

    .line 495
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/AdController;->toAppStore(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    :cond_4
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/AdController;->toAppStore(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->executeDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto/16 :goto_0
.end method

.method private toIe(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 7
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, "result":Z
    :try_start_0
    const-string v4, ""

    .line 635
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 636
    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 640
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 641
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 642
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 643
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v5

    const-string v6, "cn.nubia.browser"

    invoke-virtual {v5, v6}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    const-string v5, "cn.nubia.browser"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :cond_0
    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 648
    const/4 v2, 0x1

    .line 653
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "url":Ljava/lang/String;
    :goto_1
    return v2

    .line 638
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/base/core/AdController;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 138
    return-void
.end method

.method public clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 12
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    const-wide/16 v10, 0x32

    const/16 v8, 0x23

    const/4 v7, 0x1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickAd----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 287
    sget-boolean v3, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v3, :cond_0

    .line 290
    const-string v3, "https://m.dianping.com/mobile/event/list&utm=w_nubia"

    invoke-direct {p0, p1, v3, v7}, Lcom/huanju/ssp/base/core/AdController;->openWebPage(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V

    .line 385
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v4, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 295
    const-string v3, "\u70b9\u51fb\u5e7f\u544a\u65f6\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 296
    const-string v3, "\u65e0\u7f51\u7edc"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    iget v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 301
    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    const-string v3, "\u70b9\u51fb\u5730\u5740\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    iget v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "guangdiantong"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 311
    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v4, "${down_x}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${down_y}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${up_x}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${up_y}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__REQ_WIDTH__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__REQ_HEIGHT__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__WIDTH__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__HEIGHT__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__DOWN_X__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__DOWN_Y__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__UP_X__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__UP_Y__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "url":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v3

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    if-ne v3, v4, :cond_4

    .line 319
    iput-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    invoke-virtual {p1, v7}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v1    # "url":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_1

    .line 323
    :cond_4
    invoke-direct {p0, p1, v1, v7}, Lcom/huanju/ssp/base/core/AdController;->openWebPage(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 327
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v8}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    .line 328
    new-instance v3, Lcom/huanju/ssp/base/core/AdController$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController$5;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    invoke-static {v3, v10, v11}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 337
    :pswitch_2
    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "guangdiantong"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 338
    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v4, "__REQ_WIDTH__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__REQ_HEIGHT__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__WIDTH__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__HEIGHT__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__DOWN_X__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__DOWN_Y__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__UP_X__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__UP_Y__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "url2":Ljava/lang/String;
    :goto_2
    move-object v0, v2

    .line 345
    .local v0, "clkurl2":Ljava/lang/String;
    invoke-virtual {p0, p1, v7}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 346
    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v3

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    if-ne v3, v4, :cond_6

    .line 347
    iput-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 342
    .end local v0    # "clkurl2":Ljava/lang/String;
    .end local v2    # "url2":Ljava/lang/String;
    :cond_5
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .restart local v2    # "url2":Ljava/lang/String;
    goto :goto_2

    .line 350
    .restart local v0    # "clkurl2":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v8}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    .line 351
    new-instance v3, Lcom/huanju/ssp/base/core/AdController$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/huanju/ssp/base/core/AdController$6;-><init>(Lcom/huanju/ssp/base/core/AdController;Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-static {v3, v10, v11}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 380
    .end local v0    # "clkurl2":Ljava/lang/String;
    .end local v2    # "url2":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/AdController;->toDeeplink(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto/16 :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clickAdClos(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;ILjava/lang/String;)V
    .locals 4
    .param p1, "adInfo"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "reason"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->campaign_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    .local v0, "parameter":Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-direct {v2}, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;-><init>()V

    new-instance v3, Lcom/huanju/ssp/base/core/AdController$3;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/base/core/AdController$3;-><init>(Lcom/huanju/ssp/base/core/AdController;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;)V

    .line 235
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->process()V

    .line 236
    return-void
.end method

.method public clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 6
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickAdDownload ad.down_x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.down_y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.up_x;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad.up_y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 144
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/huanju/ssp/base/core/AdController;->checkInstalled(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_1

    .line 150
    const-string v1, "\u70b9\u51fb\u65f6\u6d17\u5305"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 152
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__CLICK_TYPE__"

    const-string v3, "2"

    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__TS__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "mUrl":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/AdController$1;

    invoke-direct {v2, p0, p1}, Lcom/huanju/ssp/base/core/AdController$1;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 180
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    goto/16 :goto_0

    .line 184
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v2, "guangdiantong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "mUrl":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/AdController$2;

    invoke-direct {v2, p0, p1}, Lcom/huanju/ssp/base/core/AdController$2;-><init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 212
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    goto/16 :goto_0

    .line 218
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/huanju/ssp/base/core/AdController;->executeDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto/16 :goto_0
.end method

.method public clickToBrowser(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 6
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 241
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v3, "guangdiantong"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v3, "__REQ_WIDTH__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__REQ_HEIGHT__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__WIDTH__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__HEIGHT__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DOWN_X__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DOWN_Y__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__UP_X__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__UP_Y__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "url2":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .line 249
    .local v0, "clkurl2":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 250
    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v2

    iget v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    if-ne v2, v3, :cond_1

    .line 251
    iput-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 282
    :goto_1
    return-void

    .line 246
    .end local v0    # "clkurl2":Ljava/lang/String;
    .end local v1    # "url2":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .restart local v1    # "url2":Ljava/lang/String;
    goto :goto_0

    .line 254
    .restart local v0    # "clkurl2":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/AdController;->onClickAdStateChang(I)V

    .line 255
    new-instance v2, Lcom/huanju/ssp/base/core/AdController$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/huanju/ssp/base/core/AdController$4;-><init>(Lcom/huanju/ssp/base/core/AdController;Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    const-wide/16 v4, 0x32

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method public getAdInnerView(Landroid/content/Context;II)Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1206
    new-instance v0, Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-direct {v0, p1, p2, p3}, Lcom/huanju/ssp/base/core/view/AdInnerView;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public declared-synchronized isViewCovered(Landroid/view/View;F)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shieldRate"    # F

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1117
    .local v17, "threadName":Ljava/lang/String;
    const-string v21, "main"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-nez v21, :cond_0

    .line 1118
    const/16 v21, 0x1

    .line 1196
    :goto_0
    monitor-exit p0

    return v21

    .line 1121
    :cond_0
    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_2

    const/16 p2, 0x0

    .line 1122
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v2, v0

    .line 1123
    .local v2, "adViewArea":F
    move-object/from16 v5, p1

    .line 1124
    .local v5, "currentView":Landroid/view/View;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1125
    .local v6, "currentViewRect":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    .line 1126
    .local v12, "onScreenVisible":Z
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "currentViewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1127
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onScreenVisible:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1128
    if-nez v12, :cond_3

    .line 1129
    const/16 v21, 0x1

    goto :goto_0

    .line 1121
    .end local v2    # "adViewArea":F
    .end local v5    # "currentView":Landroid/view/View;
    .end local v6    # "currentViewRect":Landroid/graphics/Rect;
    .end local v12    # "onScreenVisible":Z
    :cond_2
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, p2, v21

    if-lez v21, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1131
    .restart local v2    # "adViewArea":F
    .restart local v5    # "currentView":Landroid/view/View;
    .restart local v6    # "currentViewRect":Landroid/graphics/Rect;
    .restart local v12    # "onScreenVisible":Z
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "currentViewRect.bottom:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",currentViewRect.top:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1132
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "currentViewRect.right:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",currentViewRect.left:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1133
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1135
    .local v20, "visibleArea":F
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "visibleArea:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",adViewArea:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",shieldRate:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1136
    div-float v21, v20, v2

    cmpg-float v21, v21, p2

    if-gez v21, :cond_5

    .line 1137
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1190
    .local v4, "currentParent":Landroid/view/ViewGroup;
    .local v9, "i":I
    .local v16, "start":I
    :cond_4
    move-object v5, v4

    .line 1140
    .end local v4    # "currentParent":Landroid/view/ViewGroup;
    .end local v9    # "i":I
    .end local v16    # "start":I
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1141
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1143
    .restart local v4    # "currentParent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_6

    .line 1145
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "start":I
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1151
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_a

    .line 1156
    :cond_7
    add-int/lit8 v9, v16, 0x1

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 1158
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1159
    .local v19, "viewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1161
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1163
    .local v13, "otherView":Landroid/view/View;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1164
    .local v14, "otherViewRect":Landroid/graphics/Rect;
    invoke-virtual {v13, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1166
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "viewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1167
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "otherViewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_b

    .line 1169
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1170
    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    if-nez v21, :cond_8

    .line 1171
    invoke-virtual {v13}, Landroid/view/View;->isClickable()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1172
    :cond_8
    const/4 v11, 0x0

    .line 1173
    .local v11, "mixArea":F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1175
    .local v10, "left":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1176
    .local v18, "top":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1178
    .local v15, "right":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 1180
    .local v3, "bottom":I
    if-ge v10, v15, :cond_9

    move/from16 v0, v18

    if-ge v0, v3, :cond_9

    .line 1181
    sub-int v21, v15, v10

    sub-int v22, v3, v18

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v11, v0

    .line 1183
    :cond_9
    div-float v8, v11, v2

    .line 1184
    .local v8, "f":F
    cmpl-float v21, v8, p2

    if-lez v21, :cond_b

    .line 1185
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1149
    .end local v3    # "bottom":I
    .end local v8    # "f":F
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v11    # "mixArea":F
    .end local v13    # "otherView":Landroid/view/View;
    .end local v14    # "otherViewRect":Landroid/graphics/Rect;
    .end local v15    # "right":I
    .end local v18    # "top":I
    .end local v19    # "viewRect":Landroid/graphics/Rect;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1156
    .restart local v9    # "i":I
    .restart local v13    # "otherView":Landroid/view/View;
    .restart local v14    # "otherViewRect":Landroid/graphics/Rect;
    .restart local v19    # "viewRect":Landroid/graphics/Rect;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1193
    .end local v2    # "adViewArea":F
    .end local v4    # "currentParent":Landroid/view/ViewGroup;
    .end local v5    # "currentView":Landroid/view/View;
    .end local v6    # "currentViewRect":Landroid/graphics/Rect;
    .end local v9    # "i":I
    .end local v12    # "onScreenVisible":Z
    .end local v13    # "otherView":Landroid/view/View;
    .end local v14    # "otherViewRect":Landroid/graphics/Rect;
    .end local v16    # "start":I
    .end local v19    # "viewRect":Landroid/graphics/Rect;
    .end local v20    # "visibleArea":F
    :catch_0
    move-exception v7

    .line 1194
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1196
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1116
    .end local v17    # "threadName":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21
.end method

.method public loadImage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1201
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->load(Landroid/view/View;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)V

    .line 1202
    return-void
.end method

.method public declared-synchronized reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V
    .locals 4
    .param p1, "info"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .param p2, "type"    # I

    .prologue
    .line 1081
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1085
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1104
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController;->trackerListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    invoke-virtual {p1, p2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(ILcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1087
    :pswitch_0
    :try_start_1
    iget-boolean v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubDisTrk:Z

    if-nez v0, :cond_0

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubDisTrk:Z

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5c55\u793a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1094
    :pswitch_1
    iget-boolean v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    if-nez v0, :cond_0

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u70b9\u51fb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V
    .locals 1
    .param p1, "adParameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .param p2, "errorInfo"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .param p3, "adStateListener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    const-string v0, "adcontroller onStartRequestAd "

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 126
    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    .line 127
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .line 118
    return-void
.end method

.method public setClickAdListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController;->clickListener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    .line 114
    return-void
.end method

.method public declared-synchronized setTrackerTaskListener(Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;)V
    .locals 1
    .param p1, "trackerListener"    # Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController;->trackerListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
