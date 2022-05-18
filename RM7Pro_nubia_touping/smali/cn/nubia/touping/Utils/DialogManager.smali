.class public Lcn/nubia/touping/Utils/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DialogManager]"

.field private static final TIMEOUT_DURATION:I = 0x7530


# instance fields
.field private mActivity:Lcn/nubia/touping/AbstractActivity;

.field private mActivityForWiredTouPing:Landroid/app/Activity;

.field private mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

.field private mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

.field private mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

.field private mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

.field private mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

.field private mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

.field private mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

.field private mSearchTimeOutTask:Ljava/lang/Runnable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUIHandler:Landroid/os/Handler;

.field private mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

.field private mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivityForWiredTouPing:Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcn/nubia/touping/AbstractActivity;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/touping/AbstractActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    .line 62
    iput-object p2, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/DialogManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivityForWiredTouPing:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/Utils/DialogManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/Dialog/ChooseDeviceDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/touping/Utils/DialogManager;->doSearchTimeout()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/touping/Utils/DialogManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/touping/Utils/DialogManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/View/ListViewDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    return-object v0
.end method

.method private doSearchTimeout()V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 287
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Lcn/nubia/touping/View/ListViewDialog;->setTitle(I)V

    .line 289
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->onSearchTimeOut()V

    .line 291
    :cond_0
    return-void
.end method

.method public static showPrivacyPolicyDialogNubiaTouPing(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 479
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "mPrivacyDialog":Lcn/nubia/touping/Dialog/NubiaDialog;
    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 481
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 482
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 483
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCancelable(Z)V

    .line 484
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCanceledOnTouchOutside(Z)V

    .line 485
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$17;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$17;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 497
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$18;

    invoke-direct {v1}, Lcn/nubia/touping/Utils/DialogManager$18;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 502
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 504
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dialogList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "browseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    .local p2, "miracastBeanList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "[DialogManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogList : LeBoOprate.getStatusBrowse(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getStatusBrowse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getMiracastTouPingService()Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->getMiracastTouPingStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->updateListView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_2
    if-eqz p1, :cond_6

    .line 308
    :try_start_1
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getStatusBrowse()I

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/touping/View/ListViewDialog;->updateListView(Ljava/util/List;)V

    .line 313
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    :cond_4
    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-nez v0, :cond_5

    .line 325
    new-instance v0, Lcn/nubia/touping/View/ListViewDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/View/ListViewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    .line 327
    :cond_5
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->show()V

    .line 328
    const-string v0, "[DialogManager]"

    const-string v1, "mListViewDialog.show()"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/touping/View/ListViewDialog;->updateListView(Ljava/util/List;)V

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Utils/DialogManager;->setScanBtnEnable(Z)V

    .line 356
    :goto_1
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->getListview()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$12;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$12;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 392
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->getCancleButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$13;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$13;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->getResearchBtn()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$14;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$14;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 332
    :cond_6
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getMiracastTouPingService()Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->getMiracastTouPingStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 336
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0, p2}, Lcn/nubia/touping/View/ListViewDialog;->updateListViewForMiracast(Ljava/util/List;)V

    .line 337
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 338
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 340
    :cond_7
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 344
    :cond_8
    if-eqz p2, :cond_1

    .line 346
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-nez v0, :cond_9

    .line 347
    new-instance v0, Lcn/nubia/touping/View/ListViewDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/View/ListViewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    .line 349
    :cond_9
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->show()V

    .line 350
    const-string v0, "[DialogManager]"

    const-string v1, "mListViewDialog.show()"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0, p2}, Lcn/nubia/touping/View/ListViewDialog;->updateListViewForMiracast(Ljava/util/List;)V

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Utils/DialogManager;->setScanBtnEnable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public dismissDeviceListDialog()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->dismiss()V

    .line 447
    :cond_0
    return-void
.end method

.method public getDialogByFlag(I)Lcn/nubia/touping/Dialog/BaseDialog;
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    return-object v0
.end method

.method public help2ClickCancleBtn()V
    .locals 3

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 429
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-virtual {v1}, Lcn/nubia/touping/AbstractActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    const-string v1, "[DialogManager]"

    const-string v2, "help2ClickCancleBtn EXCEPTION"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseDialogInfo()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public setScanBtnEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mDeviceListDialog:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->getResearchBtn()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public showChangeWifiDialog(I)V
    .locals 3
    .param p1, "from"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-nez v1, :cond_0

    .line 124
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "dialog":Lcn/nubia/touping/Dialog/NubiaDialog;
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 126
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 127
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 128
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setNegativeBnText(I)V

    .line 129
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCancelable(Z)V

    .line 130
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$5;-><init>(Lcn/nubia/touping/Utils/DialogManager;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 137
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$6;-><init>(Lcn/nubia/touping/Utils/DialogManager;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 158
    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 160
    .end local v0    # "dialog":Lcn/nubia/touping/Dialog/NubiaDialog;
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 163
    :cond_1
    return-void
.end method

.method public showChooseDeviceDialog()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    .line 194
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$9;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$9;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->setOnClickListener(Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$10;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$10;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChooseDeviceDialog:Lcn/nubia/touping/Dialog/ChooseDeviceDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->show()V

    .line 255
    :cond_1
    return-void
.end method

.method public showCtaDialog()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcn/nubia/touping/Dialog/CTADialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    .line 83
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$1;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$2;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/CTADialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/CTADialog;->show()V

    .line 99
    :cond_1
    return-void
.end method

.method public showCtaDialogForWiredTouPing()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcn/nubia/touping/Dialog/CTADialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivityForWiredTouPing:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    .line 104
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$3;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$4;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/CTADialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/CTADialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mCtaDialog:Lcn/nubia/touping/Dialog/CTADialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/CTADialog;->show()V

    .line 120
    :cond_1
    return-void
.end method

.method public showDeviceList()V
    .locals 6

    .prologue
    .line 258
    const/4 v1, 0x0

    sput v1, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 260
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 261
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v1}, Lcn/nubia/touping/Utils/LeBoOprate;->startBrowse(Landroid/content/Context;)V

    .line 265
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$11;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$11;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    iput-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    .line 277
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/touping/Utils/DialogManager;->mSearchTimeOutTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V

    .line 282
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-static {v1}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->searchMiracastTouPingDevice(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public showFloatingPermissionDialog(I)V
    .locals 3
    .param p1, "from"    # I

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-nez v1, :cond_0

    .line 592
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, "dialog":Lcn/nubia/touping/Dialog/NubiaDialog;
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 594
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 595
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 596
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setNegativeBnText(I)V

    .line 597
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCancelable(Z)V

    .line 598
    invoke-virtual {v0, v2}, Lcn/nubia/touping/Dialog/NubiaDialog;->setCanceledOnTouchOutside(Z)V

    .line 599
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$25;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$25;-><init>(Lcn/nubia/touping/Utils/DialogManager;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 607
    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$26;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$26;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 613
    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 615
    .end local v0    # "dialog":Lcn/nubia/touping/Dialog/NubiaDialog;
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mChangeWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 618
    :cond_1
    return-void
.end method

.method public showJumpSettingsDialog()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 511
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 512
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 513
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 514
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$19;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$19;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 524
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$20;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$20;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 532
    return-void
.end method

.method public showJumpSettingsDialogForWired(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 535
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-direct {v0, p1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 537
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 538
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 539
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 540
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$21;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$21;-><init>(Lcn/nubia/touping/Utils/DialogManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 550
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$22;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$22;-><init>(Lcn/nubia/touping/Utils/DialogManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mJumpSettingsDialogForWired:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 558
    return-void
.end method

.method public showPrivacyPolicyDialog()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 452
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 453
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 454
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 455
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$15;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$15;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 466
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$16;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$16;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mPrivacyDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 476
    :cond_1
    return-void
.end method

.method public showWifiConnectDialog(I)V
    .locals 2
    .param p1, "from"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->dismiss()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 570
    :cond_0
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 571
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 572
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 573
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setPositiveBnText(I)V

    .line 574
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$23;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$23;-><init>(Lcn/nubia/touping/Utils/DialogManager;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 580
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$24;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$24;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 587
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiConnectDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 588
    return-void
.end method

.method public showWifiDialog(I)V
    .locals 2
    .param p1, "from"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->dismiss()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 170
    :cond_0
    new-instance v0, Lcn/nubia/touping/Dialog/NubiaDialog;

    iget-object v1, p0, Lcn/nubia/touping/Utils/DialogManager;->mActivity:Lcn/nubia/touping/AbstractActivity;

    invoke-direct {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    .line 171
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setTitle(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setMessage(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/DialogManager$7;-><init>(Lcn/nubia/touping/Utils/DialogManager;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    new-instance v1, Lcn/nubia/touping/Utils/DialogManager$8;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/DialogManager$8;-><init>(Lcn/nubia/touping/Utils/DialogManager;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/NubiaDialog;->setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager;->mWifiDialog:Lcn/nubia/touping/Dialog/NubiaDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->show()V

    .line 189
    return-void
.end method
