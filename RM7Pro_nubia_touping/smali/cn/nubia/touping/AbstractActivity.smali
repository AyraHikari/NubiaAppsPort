.class public abstract Lcn/nubia/touping/AbstractActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/AbstractActivity$UIHandler;,
        Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;
    }
.end annotation


# static fields
.field public static final ACTION_MIROCAST_TOUPING_DEVICELIST:Ljava/lang/String; = "action.MIRACAST.NubiaWirelessTouPingForDeviceList"

.field private static final CHECK_NETSTATUS:I = 0x13

.field private static final CHECK_NETSTATUS_TIME:I = 0x2bf20

.field public static final DEVICE_LINK_CLICKED:I = 0x1

.field public static final DEVICE_LINK_CONECTFAIL:I = 0x3

.field public static final DEVICE_LINK_CONECTING:I = 0x2

.field public static final DEVICE_LINK_CONECTMIRRORING:I = 0x5

.field public static final DEVICE_LINK_CONECTMIRROR_ERROR:I = 0x8

.field public static final DEVICE_LINK_CONECTMIRROR_START:I = 0x6

.field public static final DEVICE_LINK_CONECTMIRROR_STOP:I = 0x7

.field public static final DEVICE_LINK_CONECTSUCESS:I = 0x4

.field public static final DEVICE_LINK_DEFUALT:I = 0x0

.field public static IPAddressAndPort:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LELINKBITRATE:I = 0xd3

.field private static final NUBIA_PC_MIRROR_FLAG:Ljava/lang/String; = "nubia"

.field public static final REQUEST_AUDIO_PERMISSION:I = 0x3

.field public static final REQUEST_CAMERA_PERMISSION_PC:I = 0x16

.field public static final REQUEST_CAMERA_PERMISSION_TV:I = 0x2

.field public static final REQUEST_FLOATING_PERMISSION_FROM_PC:I = 0x69

.field public static final REQUEST_FLOATING_PERMISSION_FROM_TV:I = 0x68

.field public static final REQUEST_FROM_NONE:I = 0x65

.field public static final REQUEST_FROM_PC:I = 0x67

.field public static final REQUEST_FROM_TV:I = 0x66

.field public static final REQUEST_LEBO_PC_VIP:I = 0x4

.field public static final REQUEST_PERMISSION_SETTINGS:I = 0x3

.field public static final REQUEST_SCAN_PC:I = 0xde

.field public static final REQUEST_SCAN_TV:I = 0x6f

.field private static final STARTFORGETPERMISSON:I = 0x5a

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_CHANGE_ACTION:Ljava/lang/String; = "cn.nubia.touping.action.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "AbstractActivity"

.field public static currentIpLinkSuccess:Ljava/lang/String;

.field public static mCurrentLinkStatus:I

.field private static mManagerLeboSDKInitUtils:Lcn/nubia/touping/Utils/ManagerLeboSDKInitUtils;

.field public static mSelectInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;


# instance fields
.field private iBrowseListener:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

.field private iConnectListener:Lcn/nubia/touping/LeBoListener/LeboConnectListener;

.field private lelinkPlayerListener:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;

.field protected mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

.field protected mHomeCancelFlag:Z

.field protected mTvVipCancelFlag:Z

.field private mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private myMiracastRevceiver:Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput v0, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 366
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    .line 107
    iput-boolean v0, p0, Lcn/nubia/touping/AbstractActivity;->mHomeCancelFlag:Z

    .line 108
    iput-boolean v0, p0, Lcn/nubia/touping/AbstractActivity;->mTvVipCancelFlag:Z

    .line 122
    new-instance v0, Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;-><init>(Lcn/nubia/touping/AbstractActivity;Lcn/nubia/touping/AbstractActivity$1;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->myMiracastRevceiver:Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;

    .line 646
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/touping/AbstractActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDevice(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDeviceForNubiaInThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/touping/AbstractActivity;)Landroid/media/projection/MediaProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/AbstractActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcn/nubia/touping/AbstractActivity;->setScanBtnEnable(Lcn/nubia/touping/AbstractActivity;Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/touping/AbstractActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->dismissDeviceListDialog()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/touping/AbstractActivity;)Lcn/nubia/touping/AbstractActivity$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    return-object v0
.end method

.method private dismissDeviceListDialog()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/DialogManager;->dismissDeviceListDialog()V

    goto :goto_0
.end method

.method public static getDeviceLinkStatus()I
    .locals 1

    .prologue
    .line 798
    sget v0, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    return v0
.end method

.method private getQRCodeDevice(ILjava/lang/String;)V
    .locals 2
    .param p1, "codeFlag"    # I
    .param p2, "qrUrl"    # Ljava/lang/String;

    .prologue
    .line 492
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 494
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 497
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/AbstractActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/touping/AbstractActivity$5;-><init>(Lcn/nubia/touping/AbstractActivity;)V

    invoke-virtual {v0, p2, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->addQRCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 532
    return-void
.end method

.method private getQRCodeDeviceForNubia(Ljava/lang/String;)V
    .locals 2
    .param p1, "qrUrl"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/AbstractActivity$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/AbstractActivity$3;-><init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method private getQRCodeDeviceForNubiaInThread(Ljava/lang/String;)V
    .locals 11
    .param p1, "qrUrl"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 378
    if-eqz p1, :cond_0

    const-string v8, "nubia"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 379
    :cond_0
    const-string v8, "AbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qrUrl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    :try_start_0
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 384
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 385
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 387
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 388
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    const-string v8, "AbstractActivity"

    const-string v9, "scan error"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :cond_3
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x6

    if-le v8, v9, :cond_4

    invoke-static {}, Lcn/nubia/touping/AbstractActivity;->isSupportDevice()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 393
    const/4 v8, 0x0

    sput-boolean v8, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    .line 394
    const-string v8, "Touping"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getQRCodeDeviceForNubiaInThread AudioRecorder.IS_LEGACY_AAC_MODE = false IPAddressAndPort.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_2
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->stopSocketLink()V

    .line 401
    const/4 v5, 0x0

    .line 403
    .local v5, "ipArrary":[Ljava/lang/String;
    :try_start_1
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 408
    :goto_3
    if-eqz v5, :cond_1

    .line 411
    array-length v0, v5

    .line 413
    .local v0, "IPNumFromPc":I
    const/4 v4, 0x0

    :goto_4
    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 414
    move v1, v4

    .line 415
    .local v1, "currentI":I
    aget-object v2, v5, v4

    .line 417
    .local v2, "currentIp":Ljava/lang/String;
    if-eqz v4, :cond_5

    :try_start_2
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 418
    const/4 v6, 0x5

    .local v6, "num":I
    move v7, v6

    .line 419
    .end local v6    # "num":I
    .local v7, "num":I
    :goto_5
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "num":I
    .restart local v6    # "num":I
    if-lez v7, :cond_5

    sget-object v8, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 420
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v6

    .end local v6    # "num":I
    .restart local v7    # "num":I
    goto :goto_5

    .line 396
    .end local v0    # "IPNumFromPc":I
    .end local v1    # "currentI":I
    .end local v2    # "currentIp":Ljava/lang/String;
    .end local v5    # "ipArrary":[Ljava/lang/String;
    .end local v7    # "num":I
    :cond_4
    sput-boolean v10, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    .line 397
    const-string v8, "Touping"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getQRCodeDeviceForNubiaInThread AudioRecorder.IS_LEGACY_AAC_MODE = true IPAddressAndPort.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 404
    .restart local v5    # "ipArrary":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 405
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    const-string v8, "changnlei_AbstractActivity"

    const-string v9, "exception"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 423
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "IPNumFromPc":I
    .restart local v1    # "currentI":I
    .restart local v2    # "currentIp":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 424
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    const-string v8, "AbstractActivity"

    const-string v9, "linkSleep"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v8, Lcn/nubia/touping/AbstractActivity;->currentIpLinkSuccess:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 428
    const-string v8, "AbstractActivity"

    const-string v9, "hasLinkSuccess"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    :cond_6
    const-string v8, "AbstractActivity"

    const-string v9, "start connection socket"

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v9

    sget-object v8, Lcn/nubia/touping/AbstractActivity;->IPAddressAndPort:Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v10, Lcn/nubia/touping/AbstractActivity$4;

    invoke-direct {v10, p0, v2, v1, v0}, Lcn/nubia/touping/AbstractActivity$4;-><init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;II)V

    invoke-virtual {v9, p0, v2, v8, v10}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public static getmSelectInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcn/nubia/touping/AbstractActivity;->mSelectInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method private initLeboListener()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->iBrowseListener:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    .line 279
    new-instance v0, Lcn/nubia/touping/LeBoListener/LeboConnectListener;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/LeBoListener/LeboConnectListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->iConnectListener:Lcn/nubia/touping/LeBoListener/LeboConnectListener;

    .line 280
    new-instance v0, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->lelinkPlayerListener:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;

    .line 281
    return-void
.end method

.method private initNubiaMirror()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/AbstractActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 163
    return-void
.end method

.method private initSDKStatusListener()V
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->iBrowseListener:Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setBrowseResultListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    .line 536
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->iConnectListener:Lcn/nubia/touping/LeBoListener/LeboConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    .line 537
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->lelinkPlayerListener:Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setPlayListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    .line 538
    return-void
.end method

.method public static isSupportDevice()Z
    .locals 3

    .prologue
    .line 484
    const-string v0, "Touping"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSupportDevice Build.DEVICE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private operateLeboSdkInit(Z)V
    .locals 0
    .param p1, "switchStatus"    # Z

    .prologue
    .line 209
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "action.MIRACAST.NubiaWirelessTouPingForDeviceList"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->myMiracastRevceiver:Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/AbstractActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private static setScanBtnEnable(Lcn/nubia/touping/AbstractActivity;Z)V
    .locals 1
    .param p0, "abstractActivity"    # Lcn/nubia/touping/AbstractActivity;
    .param p1, "enable"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v0, p1}, Lcn/nubia/touping/Utils/DialogManager;->setScanBtnEnable(Z)V

    .line 814
    :cond_0
    return-void
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->myMiracastRevceiver:Lcn/nubia/touping/AbstractActivity$MiracastRevceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/touping/AbstractActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method


# virtual methods
.method public dealWithInitSDK()Z
    .locals 1

    .prologue
    .line 802
    sget-boolean v0, Lcn/nubia/touping/Utils/LeBoOprate;->initSuccess:Z

    if-nez v0, :cond_0

    .line 803
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeBoOprate;->initLeBoSDK(Landroid/content/Context;)V

    .line 805
    const/4 v0, 0x1

    .line 807
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSomethingForLeboVIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "scanResult"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    new-instance v1, Lcn/nubia/touping/AbstractActivity$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/AbstractActivity$1;-><init>(Lcn/nubia/touping/AbstractActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/nubia/touping/AbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doSomethingWhenAgreen()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    new-instance v1, Lcn/nubia/touping/AbstractActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/AbstractActivity$2;-><init>(Lcn/nubia/touping/AbstractActivity;)V

    invoke-virtual {p0, v1}, Lcn/nubia/touping/AbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->initLeboListener()V

    .line 167
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->initSDKStatusListener()V

    .line 168
    return-void
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {v0, p0}, Lcn/nubia/touping/AbstractActivity$UIHandler;-><init>(Lcn/nubia/touping/AbstractActivity;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    .line 213
    new-instance v0, Lcn/nubia/touping/Utils/DialogManager;

    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/Utils/DialogManager;-><init>(Lcn/nubia/touping/AbstractActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    .line 214
    const-string v0, "AbstractActivity"

    const-string v1, "list.size() = initData"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xde

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult : resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-ne p2, v5, :cond_2

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_2

    .line 290
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 291
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/AbstractActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    .line 296
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startMediaCodec(Landroid/content/Context;Z)V

    .line 297
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto :goto_0

    .line 301
    :cond_2
    if-ne p2, v5, :cond_4

    .line 302
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 333
    :sswitch_0
    const-string v2, "AbstractActivity"

    const-string v3, "REQUEST_LEBO_PC_VIP = 4"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-eqz p3, :cond_0

    const-string v2, "MirrorActivityqrUrl"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "MirrorActivityqrUrl"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "scanResult":Ljava/lang/String;
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v8, v0}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDevice(ILjava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "scanResult":Ljava/lang/String;
    :sswitch_1
    if-eqz p3, :cond_0

    const-string v2, "qr_scan_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    const-string v2, "qr_scan_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "scanResult":Ljava/lang/String;
    const/16 v2, 0x6f

    invoke-direct {p0, v2, v0}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDevice(ILjava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v0    # "scanResult":Ljava/lang/String;
    :sswitch_2
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz p3, :cond_0

    const-string v2, "qr_scan_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const-string v2, "qr_scan_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "scanResult2":Ljava/lang/String;
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " scanResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {v1}, Lcn/nubia/touping/Utils/DecodeAndencodeUtils;->getDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "scanResult":Ljava/lang/String;
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-eqz v0, :cond_3

    const-string v2, "nubia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-direct {p0, v0}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDeviceForNubia(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_3
    move-object v0, v1

    .line 325
    invoke-direct {p0, v8, v0}, Lcn/nubia/touping/AbstractActivity;->getQRCodeDevice(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v0    # "scanResult":Ljava/lang/String;
    .end local v1    # "scanResult2":Ljava/lang/String;
    :cond_4
    const-string v2, "AbstractActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 344
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 359
    :sswitch_3
    iput-boolean v6, p0, Lcn/nubia/touping/AbstractActivity;->mTvVipCancelFlag:Z

    goto/16 :goto_0

    .line 346
    :sswitch_4
    if-ne p2, v7, :cond_0

    goto/16 :goto_0

    .line 351
    :sswitch_5
    if-ne p2, v7, :cond_5

    .line 352
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto/16 :goto_0

    .line 354
    :cond_5
    iput-boolean v6, p0, Lcn/nubia/touping/AbstractActivity;->mHomeCancelFlag:Z

    goto/16 :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6f -> :sswitch_1
        0xde -> :sswitch_2
    .end sparse-switch

    .line 344
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x6f -> :sswitch_4
        0xde -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->initData()V

    .line 152
    const-string v1, "HASAGREECTAAGREEMENT"

    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, "ctaFlag":Z
    if-nez v0, :cond_0

    .line 154
    iget-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/DialogManager;->showCtaDialog()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->init()V

    .line 158
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->initNubiaMirror()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mUIHandler:Lcn/nubia/touping/AbstractActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/touping/AbstractActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/DialogManager;->releaseDialogInfo()V

    .line 199
    iput-object v1, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    .line 200
    const-string v0, "AbstractActivity"

    const-string v1, "list.size() =  onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/touping/AbstractActivity;->operateLeboSdkInit(Z)V

    .line 202
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onPause()V

    .line 189
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->unRegisterBroadcastReceiver()V

    .line 190
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/16 v8, 0x68

    const/4 v6, 0x0

    .line 542
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 543
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    .line 544
    const/4 v5, 0x1

    .line 545
    .local v5, "requestResult":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p3

    if-ge v1, v7, :cond_0

    .line 546
    aget v7, p3, v1

    if-eqz v7, :cond_2

    .line 547
    const/4 v5, 0x0

    .line 551
    :cond_0
    if-eqz v5, :cond_4

    .line 552
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v0

    .line 553
    .local v0, "floatPermission":Z
    if-nez v0, :cond_3

    .line 554
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6, v8}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    .line 644
    .end local v0    # "floatPermission":Z
    .end local v1    # "i":I
    .end local v5    # "requestResult":Z
    :cond_1
    :goto_1
    return-void

    .line 545
    .restart local v1    # "i":I
    .restart local v5    # "requestResult":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .restart local v0    # "floatPermission":Z
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 559
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v2, "intent":Landroid/content/Intent;
    const/16 v6, 0x6f

    invoke-virtual {p0, v2, v6}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 564
    .end local v0    # "floatPermission":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    .line 565
    .local v3, "jumpSettings":Z
    array-length v7, p2

    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v4, p2, v6

    .line 566
    .local v4, "permission":Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 567
    const/4 v3, 0x1

    .line 568
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6}, Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialog()V

    .line 572
    .end local v4    # "permission":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_1

    .line 573
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto :goto_1

    .line 565
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 576
    .end local v1    # "i":I
    .end local v3    # "jumpSettings":Z
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "requestResult":Z
    :cond_7
    const/16 v7, 0x16

    if-ne p1, v7, :cond_e

    .line 577
    const/4 v5, 0x1

    .line 578
    .restart local v5    # "requestResult":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v7, p3

    if-ge v1, v7, :cond_8

    .line 579
    aget v7, p3, v1

    if-eqz v7, :cond_9

    .line 580
    const/4 v5, 0x0

    .line 584
    :cond_8
    if-eqz v5, :cond_b

    .line 585
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v0

    .line 586
    .restart local v0    # "floatPermission":Z
    if-nez v0, :cond_a

    .line 587
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto :goto_1

    .line 578
    .end local v0    # "floatPermission":Z
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 591
    .restart local v0    # "floatPermission":Z
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 592
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .restart local v2    # "intent":Landroid/content/Intent;
    const/16 v6, 0xde

    invoke-virtual {p0, v2, v6}, Lcn/nubia/touping/AbstractActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 597
    .end local v0    # "floatPermission":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v3, 0x0

    .line 598
    .restart local v3    # "jumpSettings":Z
    array-length v7, p2

    :goto_4
    if-ge v6, v7, :cond_c

    aget-object v4, p2, v6

    .line 599
    .restart local v4    # "permission":Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 600
    const/4 v3, 0x1

    .line 601
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6}, Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialog()V

    .line 605
    .end local v4    # "permission":Ljava/lang/String;
    :cond_c
    if-nez v3, :cond_1

    .line 606
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto :goto_1

    .line 598
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 609
    .end local v1    # "i":I
    .end local v3    # "jumpSettings":Z
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "requestResult":Z
    :cond_e
    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    .line 610
    const/4 v5, 0x1

    .line 611
    .restart local v5    # "requestResult":Z
    array-length v7, p3

    if-eqz v7, :cond_1

    .line 614
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v7, p3

    if-ge v1, v7, :cond_f

    .line 615
    aget v7, p3, v1

    if-eqz v7, :cond_10

    .line 616
    const/4 v5, 0x0

    .line 620
    :cond_f
    if-eqz v5, :cond_12

    .line 621
    const-string v6, "CHOOSEN_DEVICE"

    const-string v7, "TV"

    invoke-static {p0, v6, v7}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v0

    .line 623
    .restart local v0    # "floatPermission":Z
    if-nez v0, :cond_11

    .line 624
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6, v8}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto/16 :goto_1

    .line 614
    .end local v0    # "floatPermission":Z
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 627
    .restart local v0    # "floatPermission":Z
    :cond_11
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    goto/16 :goto_1

    .line 630
    .end local v0    # "floatPermission":Z
    :cond_12
    const/4 v3, 0x0

    .line 631
    .restart local v3    # "jumpSettings":Z
    array-length v7, p2

    :goto_6
    if-ge v6, v7, :cond_13

    aget-object v4, p2, v6

    .line 632
    .restart local v4    # "permission":Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 633
    iget-object v6, p0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v6}, Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialog()V

    .line 634
    const/4 v3, 0x1

    .line 638
    .end local v4    # "permission":Ljava/lang/String;
    :cond_13
    if-nez v3, :cond_1

    .line 639
    invoke-virtual {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto/16 :goto_1

    .line 631
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 173
    const-string v1, "HASAGREECTAAGREEMENT"

    invoke-static {p0, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 174
    .local v0, "ctaFlag":Z
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/touping/AbstractActivity;->operateLeboSdkInit(Z)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->initSDKStatusListener()V

    .line 182
    invoke-static {p0}, Lcn/nubia/touping/Utils/OtherAppEnterUtils;->setCurrentStartType(Landroid/app/Activity;)V

    .line 183
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->registerBroadcastReceiver()V

    .line 184
    return-void
.end method

.method protected abstract refreshViewByHandleMessage(Landroid/os/Message;)V
.end method

.method public restoreAllStatusValue()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput v0, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 262
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;->dismissDeviceListDialog()V

    .line 264
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 267
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 268
    return-void
.end method
