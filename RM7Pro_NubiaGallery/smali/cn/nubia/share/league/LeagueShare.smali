.class public Lcn/nubia/share/league/LeagueShare;
.super Ljava/lang/Object;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/share/league/LeagueShare$CancelSendingTask;,
        Lcn/nubia/share/league/LeagueShare$SendFileTask;,
        Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;,
        Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;,
        Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;,
        Lcn/nubia/share/league/LeagueShare$TurnOnTask;,
        Lcn/nubia/share/league/LeagueShare$OpenHelpTask;
    }
.end annotation


# static fields
.field private static final MSG_DEVICE_ARRIVED:I = 0x1

.field private static final MSG_DEVICE_STATUS_CHANGED:I = 0x2

.field private static final MSG_LEAGUE_SHARE_OFF:I = 0x4

.field private static final MSG_LEAGUE_SHARE_ON:I = 0x3

.field private static final NUBIA_SHARE_ENABLE:Ljava/lang/String; = "nb_share_enable"

.field private static final NUBIA_SHARE_PKG_NAME:Ljava/lang/String; = "cn.nubia.leagueshare"

.field private static final NUBIA_SHARE_SERVICE_NAME:Ljava/lang/String; = "cn.nubia.leagueshare.NBShareManagerService"

.field private static final TAG:Ljava/lang/String; = "NS-LeagueShare"


# instance fields
.field private data_itent:Landroid/content/Intent;

.field private mActivity:Landroid/app/Activity;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

.field private mDeviceListRV:Landroid/support/v7/widget/RecyclerView;

.field private mDevicePanel:Landroid/view/View;

.field private mHandler:Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

.field private mHelpPanel:Landroid/view/View;

.field private mIsBound:Z

.field private mIsInstalledLeagueShare:Z

.field private mIsTurnOn:Z

.field private mLeagueShareStateObserver:Landroid/database/ContentObserver;

.field private mLeagueShareStatusListener:Lcn/nubia/leagueshare/INBShareStatusListener;

.field private mParentPanel:Landroid/view/View;

.field private mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

.field private mSharePanel:Landroid/view/View;

.field private mTurnOnPanel:Landroid/view/View;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    .line 65
    iput-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    .line 376
    new-instance v0, Lcn/nubia/share/league/LeagueShare$5;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$5;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mConnection:Landroid/content/ServiceConnection;

    .line 447
    new-instance v0, Lcn/nubia/share/league/LeagueShare$6;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$6;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 87
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mActivity:Landroid/app/Activity;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    .line 89
    new-instance p1, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    invoke-direct {p1, p0}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mHandler:Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    .line 90
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->turnOnLeagueShare()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/share/league/LeagueShare;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->updateDeviceListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/INBShareManager;)Lcn/nubia/leagueshare/INBShareManager;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/share/league/LeagueShare;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->isDevicePanelGone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->setDeviceStatus(Lcn/nubia/leagueshare/NBShareDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/share/league/LeagueShare;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/share/league/LeagueShare;)Ljava/util/List;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->getRemoteDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/share/league/LeagueShare;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->checkIsLeagueShareOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->deviceClickAction(Lcn/nubia/leagueshare/NBShareDevice;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/share/league/LeagueShare;ILandroid/content/Intent;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcn/nubia/share/league/LeagueShare;->remoteSendFile(ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/share/league/LeagueShare;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->turnOnRemoteLeagueShare()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/share/league/LeagueShare;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->showHelpPanel(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/share/league/LeagueShare;Landroid/content/Context;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->isTurnOnLeagueShare(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/share/league/LeagueShare;->mHandler:Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/share/league/LeagueShare;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/share/league/LeagueShare;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/share/league/LeagueShare;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/share/league/LeagueShare;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->registerStatusListener()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->bindDeviceService()V

    return-void
.end method

.method private bindDeviceService()V
    .locals 5

    .line 712
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    const-string v1, "NS-LeagueShare"

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.nubia.leagueshare"

    .line 714
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "cn.nubia.leagueshare.NBShareManagerService"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 718
    :try_start_0
    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/share/league/LeagueShare;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "bindDeviceService, Exception"

    .line 722
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "bindDeviceService, SecurityException"

    .line 720
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDeviceService out, mIsBound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "bindDeviceService, already bound !"

    .line 726
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private checkIsLeagueShareOn()Z
    .locals 4

    .line 765
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NS-LeagueShare"

    if-ne v0, v1, :cond_0

    const-string v0, "checkIsLeagueShareOn, can not be run on main thread !"

    .line 766
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 770
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    if-nez v0, :cond_1

    const-string v0, "checkIsLeagueShareOn, mRemoteManager is null !"

    .line 771
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 777
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->isNBShareOn()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "checkIsLeagueShareOn, Exception"

    .line 781
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "checkIsLeagueShareOn, RemoteException"

    .line 779
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private createDeviceListAdapter()Lcn/nubia/share/league/DeviceListAdapter;
    .locals 3

    .line 907
    new-instance v0, Lcn/nubia/share/league/DeviceListAdapter;

    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/share/league/LeagueShare$7;

    invoke-direct {v2, p0}, Lcn/nubia/share/league/LeagueShare$7;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/share/league/DeviceListAdapter;-><init>(Landroid/content/Context;Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;)V

    return-object v0
.end method

.method private deviceClickAction(Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 4

    const-string v0, "NS-LeagueShare"

    if-nez p1, :cond_0

    const-string p1, "deviceClickAction, input device is null !"

    .line 921
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 925
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceClickAction, not supported ! status="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    :pswitch_0
    new-instance v0, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 940
    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 933
    :pswitch_1
    new-instance v0, Lcn/nubia/share/league/LeagueShare$SendFileTask;

    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getId()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcn/nubia/share/league/LeagueShare$SendFileTask;-><init>(Lcn/nubia/share/league/LeagueShare;I)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Landroid/content/Intent;

    .line 934
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcn/nubia/share/league/LeagueShare$SendFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "NS-LeagueShare"

    const-string v0, "deviceToStr, input device is null !"

    .line 528
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeagueShareDevice id="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/leagueshare/NBShareDevice;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/leagueshare/NBShareDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/leagueshare/NBShareDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", send progress="

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/leagueshare/NBShareDevice;->getSendProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", send status="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRemoteDeviceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;"
        }
    .end annotation

    .line 742
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NS-LeagueShare"

    if-ne v0, v1, :cond_0

    const-string v0, "getRemoteDeviceList, can not be run on main thread !"

    .line 743
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 747
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    if-nez v0, :cond_1

    const-string v0, "getRemoteDeviceList, mRemoteManager is null !"

    .line 748
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 754
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->getDeviceList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getRemoteDeviceList, Exception"

    .line 758
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "getRemoteDeviceList, RemoteException"

    .line 756
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method private getTargetIntent()Landroid/content/Intent;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getData_itent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 313
    new-instance p1, Lcn/nubia/share/league/LeagueShare$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcn/nubia/share/league/LeagueShare$3;-><init>(Lcn/nubia/share/league/LeagueShare;Landroid/os/Handler;)V

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStateObserver:Landroid/database/ContentObserver;

    .line 327
    new-instance p1, Lcn/nubia/share/league/LeagueShare$4;

    invoke-direct {p1, p0}, Lcn/nubia/share/league/LeagueShare$4;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStatusListener:Lcn/nubia/leagueshare/INBShareStatusListener;

    return-void
.end method

.method private initDeviceListView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "NS-LeagueShare"

    const-string v0, "initDeviceListView, parentPanel is null !"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x7f0900d2

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListRV:Landroid/support/v7/widget/RecyclerView;

    .line 118
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 119
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListRV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->createDeviceListAdapter()Lcn/nubia/share/league/DeviceListAdapter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    .line 121
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListRV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initPanelView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0900db

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    const v0, 0x7f0900d6

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    const v0, 0x7f0900d3

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    const v0, 0x7f0900dd

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mSharePanel:Landroid/view/View;

    .line 129
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/nubia/share/league/LeagueShare;->isTurnOnLeagueShare(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "NS-LeagueShare"

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const-string p1, "initPanelView state ON and show helpPanel"

    .line 130
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "initPanelView state OFF and don\'t show OpenPanel"

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    const v0, 0x7f0900da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 143
    new-instance v0, Lcn/nubia/share/league/LeagueShare$1;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$1;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    const v0, 0x7f0900d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 152
    new-instance v0, Lcn/nubia/share/league/LeagueShare$2;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$2;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private installLeagueShard()Z
    .locals 4

    const-string v0, "NS-LeagueShare"

    .line 697
    :try_start_0
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.nubia.leagueshare"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 699
    iput-boolean v1, p0, Lcn/nubia/share/league/LeagueShare;->mIsInstalledLeagueShare:Z

    const-string v1, "mIsInstalledLeagueShare already installed!"

    .line 700
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/share/league/LeagueShare;->mIsInstalledLeagueShare:Z

    const-string v1, "mIsInstalledLeagueShare don\'t installed!"

    .line 703
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Can\'t find package cn.nubia.leagueshare"

    .line 706
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsInstalledLeagueShare:Z

    return v0
.end method

.method private isDevicePanelGone()Z
    .locals 3

    .line 542
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isItemVisible(I)Z
    .locals 6

    .line 632
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListRV:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "NS-LeagueShare"

    if-nez v0, :cond_0

    const-string p1, "isItemVisible, mDeviceListRV is null !"

    .line 633
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 637
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 638
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 639
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isItemVisible, adapterPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastVisiblePosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", firstVisiblePosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p1, v3, :cond_1

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private isTurnOnLeagueShare(Landroid/content/Context;)Z
    .locals 2

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "nb_share_enable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private registerStatusListener()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    const-string v1, "NS-LeagueShare"

    if-nez v0, :cond_0

    const-string v0, "registerStatusListener, mRemoteManager is null !"

    .line 415
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStatusListener:Lcn/nubia/leagueshare/INBShareStatusListener;

    invoke-interface {v0, v2}, Lcn/nubia/leagueshare/INBShareManager;->registerListener(Lcn/nubia/leagueshare/INBShareStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "registerStatusListener, Exception"

    .line 424
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "registerStatusListener, RemoteException"

    .line 422
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private remoteSendFile(ILandroid/content/Intent;)Z
    .locals 11

    .line 789
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NS-LeagueShare"

    if-ne v0, v1, :cond_0

    const-string p1, "remoteSendFile, can not be run on main thread !"

    .line 790
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "remoteSendFile, shareIntent is null !"

    .line 795
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 799
    :cond_1
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    if-nez v0, :cond_2

    const-string p1, "remoteSendFile, mRemoteManager is null !"

    .line 800
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 805
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 808
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEnablePrivacyStatus(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    move p2, v2

    move v1, p2

    move v5, v1

    .line 810
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_6

    .line 811
    iget-object v6, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v6, v7}, Lcn/nubia/improve/share/NubiaShareUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 812
    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    .line 813
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 814
    iget-object v7, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, p2}, Lcn/nubia/improve/share/NubiaShareUtils;->getOutFilePatch(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 816
    :try_start_1
    iget-object v8, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-static {v8, v9}, Lcn/nubia/improve/share/NubiaShareUtils;->IsImage(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v8, :cond_4

    .line 818
    :try_start_2
    invoke-static {v6, v7}, Lcn/nubia/improve/share/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcn/nubia/improve/share/NubiaShareUtils;->getLocalUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 821
    iget-object v7, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    const-string v8, "cn.nubia.leagueshare"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v1, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 822
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "getLocalUri have error occurs"

    .line 825
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    move v1, v4

    goto :goto_3

    :catch_0
    move-exception v1

    move v7, v5

    move v5, v4

    goto :goto_2

    .line 829
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/share/league/LeagueShare;->getmUris()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    move v5, v4

    goto :goto_3

    :catch_1
    move-exception v5

    move v7, v4

    move-object v10, v5

    move v5, v1

    move-object v1, v10

    goto :goto_2

    :catch_2
    move-exception v7

    move v10, v5

    move v5, v1

    move-object v1, v7

    move v7, v10

    .line 832
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processImage failed: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    move v5, v7

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 837
    :cond_6
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v6, "*/*"

    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    .line 839
    :try_start_5
    invoke-virtual {p2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    if-nez v5, :cond_8

    const-string v1, "image/*"

    .line 841
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    if-eqz v5, :cond_9

    const-string v1, "video/*"

    .line 843
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 845
    :cond_9
    invoke-virtual {p2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v5, "android.intent.extra.STREAM"

    if-ne v1, v4, :cond_a

    :try_start_6
    const-string v1, "android.intent.action.SEND"

    .line 850
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 853
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 857
    :cond_b
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    invoke-interface {v0, p1, p2}, Lcn/nubia/leagueshare/INBShareManager;->sendFile(ILandroid/content/Intent;)V

    goto :goto_6

    .line 860
    :cond_c
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    invoke-interface {v0, p1, p2}, Lcn/nubia/leagueshare/INBShareManager;->sendFile(ILandroid/content/Intent;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    return v4

    :catch_3
    move-exception p1

    const-string p2, "remoteSendFile, Exception"

    .line 866
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_4
    move-exception p1

    const-string p2, "remoteSendFile, RemoteException"

    .line 864
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return v2
.end method

.method private sendShareUsed()V
    .locals 4

    .line 622
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 623
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type_success"

    const-string v3, "send"

    .line 624
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "brand"

    .line 625
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event"

    const-string v2, "nubia_share_used"

    .line 626
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v0

    const-string v2, "cn.nubia.leagueshare"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NS-LeagueShare"

    const-string v1, "sendShareUsed out"

    .line 628
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDeviceStatus(Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 4

    const-string v0, "NS-LeagueShare"

    if-nez p1, :cond_0

    const-string p1, "setDeviceStatus, input Device is null !"

    .line 583
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    if-nez v1, :cond_1

    const-string p1, "setDeviceStatus, mDeviceListAdapter is null !"

    .line 588
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 592
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    invoke-virtual {v2, v1}, Lcn/nubia/share/league/DeviceListAdapter;->copyLocalDeviceList(Ljava/util/List;)V

    .line 594
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "setDeviceStatus, deviceList is null or empty !"

    .line 595
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 599
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    const-string p1, "setDeviceStatus, index < 0 !"

    .line 601
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 605
    :cond_3
    invoke-direct {p0, v2}, Lcn/nubia/share/league/LeagueShare;->isItemVisible(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceStatus, item not visible ! index="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 610
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/leagueshare/NBShareDevice;

    .line 611
    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getSendProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/leagueshare/NBShareDevice;->setSendProgress(I)V

    .line 612
    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/leagueshare/NBShareDevice;->setSendStatus(I)V

    .line 613
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    invoke-virtual {p1, v0}, Lcn/nubia/share/league/DeviceListAdapter;->setSendStatusByDevice(Lcn/nubia/leagueshare/NBShareDevice;)V

    .line 615
    invoke-virtual {v0}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 617
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->sendShareUsed()V

    :cond_5
    return-void
.end method

.method private showHelpPanel(Z)V
    .locals 3

    .line 651
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    if-eq p1, v0, :cond_1

    .line 653
    iput-boolean p1, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    .line 654
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 658
    new-instance v0, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showHelpPanel out, mIsTurnOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NS-LeagueShare"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private turnOnLeagueShare()V
    .locals 3

    .line 203
    new-instance v0, Lcn/nubia/share/league/LeagueShare$TurnOnTask;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$TurnOnTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnLeagueShare out, click, mIsBind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NS-LeagueShare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private turnOnRemoteLeagueShare()Z
    .locals 4

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NS-LeagueShare"

    if-ne v0, v1, :cond_0

    const-string v0, "turnOnRemoteLeagueShare, can not be run on main thread !"

    .line 246
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    if-nez v0, :cond_1

    const-string v0, "turnOnRemoteLeagueShare, mRemoteManager is null !"

    .line 251
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 257
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->turnOnNBShare()V

    .line 258
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->isNBShareOn()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "turnOnRemoteLeagueShare, Exception"

    .line 262
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "turnOnRemoteLeagueShare, RemoteException"

    .line 260
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private unbindDeviceService()V
    .locals 3

    const-string v0, "NS-LeagueShare"

    .line 732
    :try_start_0
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 733
    iput-boolean v1, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    const-string v1, "unbindDeviceService out"

    .line 734
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unbindDeviceService, Exception"

    .line 736
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterStatusListener()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    const-string v1, "NS-LeagueShare"

    if-nez v0, :cond_0

    const-string v0, "unregisterStatusListener, mRemoteManager is null !"

    .line 430
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 434
    :cond_0
    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mRemoteManager:Lcn/nubia/leagueshare/INBShareManager;

    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStatusListener:Lcn/nubia/leagueshare/INBShareStatusListener;

    invoke-interface {v0, v2}, Lcn/nubia/leagueshare/INBShareManager;->unregisterListener(Lcn/nubia/leagueshare/INBShareStatusListener;)V

    const-string v0, "unregisterStatusListener out"

    .line 437
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "unregisterStatusListener, Exception"

    .line 441
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "unregisterStatusListener, RemoteException"

    .line 439
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDeviceListView(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .line 551
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "NS-LeagueShare"

    if-eq v0, v1, :cond_0

    const-string p1, "updateDeviceListView, can only be run on main thread !"

    .line 552
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "updateDeviceListView, devices is null !"

    .line 557
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 561
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    const-string p1, "updateDeviceListView, size <= 0 !"

    .line 563
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 567
    :cond_2
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mHelpPanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-boolean v1, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 569
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    if-eqz v1, :cond_4

    .line 572
    invoke-virtual {v1, p1}, Lcn/nubia/share/league/DeviceListAdapter;->updateLocalDeviceList(Ljava/util/List;)V

    goto :goto_0

    .line 575
    :cond_3
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mDevicePanel:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mTurnOnPanel:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDeviceListView out, size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public activityOnDestroy()V
    .locals 5

    const-string v0, "NS-LeagueShare"

    const-string v1, "activityOnDestroy"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mHandler:Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 363
    invoke-virtual {v1, v2}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v1, "onDestroy, mHandler removeCallbacksAndMessages"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mDeviceListAdapter:Lcn/nubia/share/league/DeviceListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/share/league/DeviceListAdapter;->isDeviceInSendingStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    :cond_1
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->unregisterStatusListener()V

    .line 372
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->unbindDeviceService()V

    return-void
.end method

.method public activityOnPause()V
    .locals 2

    const-string v0, "NS-LeagueShare"

    const-string v1, "activityOnPause"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public activityOnResume()V
    .locals 4

    const-string v0, "NS-LeagueShare"

    const-string v1, "activityOnResume"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nb_share_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/share/league/LeagueShare;->mLeagueShareStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public createLeagueShareView()Landroid/view/View;
    .locals 4

    .line 94
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0061

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mParentPanel:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getData_itent()Landroid/content/Intent;
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->data_itent:Landroid/content/Intent;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mHandler:Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    return-object v0
.end method

.method public getmUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsBound:Z

    return v0
.end method

.method public isTurnOn()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcn/nubia/share/league/LeagueShare;->mIsTurnOn:Z

    return v0
.end method

.method public load()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mParentPanel:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "NS-LeagueShare"

    const-string v1, "load mParentPanel == null"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->installLeagueShard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcn/nubia/share/league/LeagueShare;->bindDeviceService()V

    .line 106
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mParentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/share/league/LeagueShare;->initPanelView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare;->mParentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/share/league/LeagueShare;->initDeviceListView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public openLeagueShareHelp()V
    .locals 3

    .line 161
    new-instance v0, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;

    invoke-direct {v0, p0}, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "NS-LeagueShare"

    const-string v1, "openLeagueShareHelp, click"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setData_itent(Landroid/content/Intent;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->data_itent:Landroid/content/Intent;

    return-void
.end method

.method public setmUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare;->mUris:Ljava/util/ArrayList;

    return-void
.end method
