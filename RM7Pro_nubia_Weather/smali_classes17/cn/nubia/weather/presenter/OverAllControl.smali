.class public final Lcn/nubia/weather/presenter/OverAllControl;
.super Ljava/lang/Object;
.source "OverAllControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;,
        Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;,
        Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_UPGRADE:I = 0x16000014

.field private static final MESSAGE_CLOSE_LOCATION_CLIENT:I = 0x16000012

.field private static final MESSAGE_LOCATION_END_SCAN:I = 0x16000016

.field private static final MESSAGE_LOCATION_QUERY_DELAY:I = 0x16000013

.field private static final MESSAGE_QUERY_MANUAL_WEATHER:I = 0x16000011

.field private static final MESSAGE_START_APP_UPDATE:I = 0x16000010

.field private static final MESSAGE_START_APP_UPDATE2:I = 0x16000015

.field private static final TAG:Ljava/lang/String; = "OverAllControl"

.field private static mInstance:Lcn/nubia/weather/presenter/OverAllControl;


# instance fields
.field private mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

.field private mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mSearchKeywords:Ljava/lang/String;

.field private mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field private mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

.field private mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

.field private refreshCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 102
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    .line 483
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 485
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 102
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    .line 483
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 485
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 112
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/weather/presenter/OverAllControl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->isInstallMsgNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(ILcn/nubia/weather/app/Constant$OperationType;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/weather/presenter/OverAllControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/weather/task/WeatherTask$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->checkUpgradeV2()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    return-object v0
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 1152
    const/4 v1, 0x0

    .line 1153
    .local v1, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x0

    .line 1155
    .local v2, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/app/Notification$Builder;

    .end local v1    # "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1157
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    const v3, 0x7f0200ef

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Location"

    .line 1158
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u540e\u53f0\u8fd0\u884c"

    .line 1159
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1161
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1162
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1163
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 1164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1165
    .local v0, "b1":Landroid/os/Bundle;
    const-string v3, "nubiaSort"

    const-string v4, "Notify"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1167
    const-string v3, "z0"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1169
    .end local v0    # "b1":Landroid/os/Bundle;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 1170
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v3, v2

    .line 1174
    :goto_0
    return-object v3

    .line 1172
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    goto :goto_0
.end method

.method private checkUpdateWithCondition()Z
    .locals 8

    .prologue
    .line 191
    const/4 v4, 0x0

    .line 192
    .local v4, "result":Z
    iget-object v5, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v3

    .line 193
    .local v3, "networkType":I
    iget-object v5, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    const-string v5, "OverAllControl"

    const-string v6, "no network"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return v4

    .line 196
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 198
    .local v1, "day":I
    const-string v5, "OverAllControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "day "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 200
    iget-object v5, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v6, "UPGRADE_CHECK"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "lastCheck":I
    const-string v5, "OverAllControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastCheck"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eq v1, v2, :cond_0

    .line 203
    const-string v5, "OverAllControl"

    const-string v6, "day != lastCheck"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v4, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "lastCheck":I
    :cond_2
    const-string v5, "OverAllControl"

    const-string v6, "WIFI"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private final checkUpgradeV2()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f090047

    const/4 v4, 0x0

    .line 247
    invoke-static {v4}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    .line 250
    .local v2, "networkType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 251
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    const v4, 0x7f0200e5

    .line 253
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    .line 256
    const-string v3, "OverAllControl"

    const-string v4, "builder NETWORN_MOBILE"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    .line 264
    .local v1, "mUpdateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "OBYNXVE5dad0be55"

    const-string v5, "abc5862651ac8e45"

    invoke-static {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 267
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v3, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    .line 269
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    new-instance v5, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;

    invoke-direct {v5, p0}, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 270
    return-void

    .line 258
    .end local v1    # "mUpdateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    :cond_1
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 259
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-class v1, Lcn/nubia/weather/presenter/OverAllControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;

    .line 124
    :cond_0
    sget-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocationClientOption(Landroid/content/Context;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 627
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 628
    .local v0, "option":Lcom/amap/api/location/AMapLocationClientOption;
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 629
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 630
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 631
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 640
    return-object v0
.end method

.method private getLocationInfo(ZLcn/nubia/weather/app/Constant$OperationType;)V
    .locals 3
    .param p1, "isRetry"    # Z
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 466
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 468
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->getLocationClientOption(Landroid/content/Context;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 469
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 472
    :cond_0
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v0, :cond_2

    .line 473
    :cond_1
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mListenerOperationType in getLocationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 476
    :cond_2
    const-string v0, "OverAllControl"

    const-string v1, "BaiDu LocationClient start"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 480
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 481
    return-void
.end method

.method private isInstallMsgNeeded()Z
    .locals 12

    .prologue
    .line 215
    const/4 v6, 0x0

    .line 217
    .local v6, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "currentTime":J
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 219
    .local v2, "lastTime":J
    const-wide/32 v4, 0x5265c00

    .line 220
    .local v4, "oneDayTime":J
    sub-long v8, v0, v2

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 221
    const-string v7, "OverAllControl"

    const-string v8, "day != lastCheck"

    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v6, 0x1

    .line 224
    :cond_0
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    invoke-static {v7, v8, v0, v1}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 225
    return v6
.end method

.method private queryManualFirstCityWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 8
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 386
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 387
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 393
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v2

    .line 394
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 395
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 396
    const-string v1, "OverAllControl"

    const-string v4, "Short Skip"

    invoke-static {v1, v4}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method private queryManualWeatherInfo2(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 12
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 361
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    .line 364
    .local v3, "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 367
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v7

    .line 371
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v8

    .line 370
    invoke-virtual {v7, v8}, Lcn/nubia/weather/data/DataCenter;->getWeatherByAreaID(Ljava/lang/String;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 372
    .local v1, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v4

    .line 374
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 375
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v7

    if-nez v7, :cond_1

    .line 376
    const-string v7, "OverAllControl"

    const-string v8, "Short Skip"

    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p0, v1, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 383
    .end local v1    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v3    # "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    .end local v4    # "time":J
    :cond_2
    return-void
.end method

.method private registerWifiScanBroadcast()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    if-nez v1, :cond_0

    .line 172
    const-string v1, "OverAllControl"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcn/nubia/weather/utils/WifiReceiver;

    invoke-direct {v1}, Lcn/nubia/weather/utils/WifiReceiver;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendMessage(ILcn/nubia/weather/app/Constant$OperationType;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 922
    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v1, :cond_1

    .line 923
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 924
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 927
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 941
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 942
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 943
    .local v1, "msg":Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 944
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 945
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 946
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 947
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 949
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 2
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 460
    const-string v0, "OverAllControl"

    const-string v1, "startLocation"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->getLocationInfo(ZLcn/nubia/weather/app/Constant$OperationType;)V

    .line 462
    return-void
.end method


# virtual methods
.method public addActivityHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 954
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    return-void
.end method

.method public addEmptyLocModel()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 827
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v1, "isLocationOpen"

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 829
    .local v6, "isLocationOpen":Z
    if-eqz v6, :cond_0

    .line 830
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/presenter/OverAllControl;->createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 835
    :cond_0
    return-void
.end method

.method public appStartUpdate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 787
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    const-string v1, "OverAllControl"

    const-string v2, "NotPrepare  Delay update"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v2, 0x16000015

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 790
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    :goto_0
    return-void

    .line 793
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v2, 0x16000010

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 794
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public appStartUpdate(Z)V
    .locals 8
    .param p1, "isDelay"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 805
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v1, 0x16000010

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 808
    .local v7, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 824
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v1, "isLocationOpen"

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 814
    .local v6, "isLocationOpen":Z
    if-eqz v6, :cond_2

    .line 815
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    const-string v1, ""

    const-string v2, ""

    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/presenter/OverAllControl;->createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 819
    :cond_1
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 821
    :cond_2
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->queryManualWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method public final checkUpgrade()V
    .locals 4

    .prologue
    const v1, 0x16000014

    .line 229
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, "OverAllControl"

    const-string v1, "do not support upgrade"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public cloaseLocationClient()V
    .locals 2

    .prologue
    .line 930
    const-string v0, "OverAllControl"

    const-string v1, "cloaseLocationClient"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 932
    const-string v0, "OverAllControl"

    const-string v1, "LocationClient Stop"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 934
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 935
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 938
    :cond_0
    return-void
.end method

.method public createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "gmtOffSet"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 840
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 841
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 846
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 865
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    if-nez p4, :cond_0

    .line 848
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lcn/nubia/weather/data/DataCenter;->getWeater(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 849
    .restart local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    if-nez v0, :cond_2

    .line 850
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 851
    .restart local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 856
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    goto :goto_0
.end method

.method public downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 3
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 1024
    const-string v1, "OverAllControl"

    const-string v2, "downloadNewVersion "

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    new-instance v2, Lcn/nubia/weather/presenter/OverAllControl$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/weather/presenter/OverAllControl$2;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 1071
    if-eqz p1, :cond_0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "ex":Ljava/util/ConcurrentModificationException;
    const-string v1, "OverAllControl"

    const-string v2, " download weather version error "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAreaIDByLocation(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 9
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "type"    # Lcn/nubia/weather/app/Constant$OperationType;
    .param p6, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 345
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "OverAllControl"

    const-string v3, "NETWORN_NONE)"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, "message":Landroid/os/Message;
    const/high16 v2, 0x100000

    iput v2, v0, Landroid/os/Message;->what:I

    .line 349
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v8, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "KEY_MAP_AREAID"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v2, "KEY_MAP_CITYNAME"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 358
    .end local v0    # "message":Landroid/os/Message;
    .end local v8    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v1, Lcn/nubia/weather/task/GeoTask;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcn/nubia/weather/task/GeoTask;-><init>(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 357
    .local v1, "task":Lcn/nubia/weather/task/GeoTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getWifiScanResults()I
    .locals 7

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "size":I
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 131
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 133
    :cond_0
    const-string v4, "OverAllControl"

    const-string v5, "getWifiScanResults = 0"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return v1

    .line 135
    .restart local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "OverAllControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWifiScanResults"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 1018
    if-eqz p1, :cond_0

    .line 1019
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 1021
    :cond_0
    return-void
.end method

.method public isWifiScanEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 163
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 164
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 166
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 8
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    const v7, 0x16000016

    const v6, 0x16000013

    .line 416
    const-string v3, "OverAllControl"

    const-string v4, "Enter locationAndQueryWeatherInfo"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p1, v3, :cond_1

    .line 419
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "message":Landroid/os/Message;
    const/high16 v3, 0x100000

    iput v3, v1, Landroid/os/Message;->what:I

    .line 421
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v2, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "KEY_MAP_AREAID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "KEY_MAP_CITYNAME"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 457
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "isLocationOpen"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 431
    const-string v3, "OverAllControl"

    const-string v4, "Location is Turn OFF"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {}, Lcn/nubia/weather/data/GarbageCache;->getInstance()Lcn/nubia/weather/data/GarbageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/GarbageCache;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 436
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v0, :cond_4

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p1, v3, :cond_4

    .line 437
    const-string v3, "OverAllControl"

    const-string v4, "Get Weather model From garbage. "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 441
    :cond_4
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p1, v3, :cond_5

    .line 442
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 446
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getWifiScanResults()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->isWifiScanEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 447
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->registerWifiScanBroadcast()V

    .line 448
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->startScan()V

    .line 449
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 454
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method public onReceiveScanResult()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getWifiScanResults()I

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->unRegisterWifiScanBroadCast()V

    .line 159
    :cond_0
    return-void
.end method

.method public queryManualWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 4
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 404
    const-string v1, "OverAllControl"

    const-string v2, "Enter queryManualWeatherInfo"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryManualFirstCityWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "message":Landroid/os/Message;
    const v1, 0x16000011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 410
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public queryWeatherInfo(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 1
    .param p1, "areadID"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 340
    const-string v0, "Asia/Shanghai"

    invoke-virtual {p0, p1, p1, v0, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 341
    return-void
.end method

.method public queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 14
    .param p1, "areadID"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "gmtOffset"    # Ljava/lang/String;
    .param p4, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 289
    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 290
    const-string v11, "OverAllControl"

    const-string v12, "NETWORN_NONE)"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v11, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    move-object/from16 v0, p4

    if-eq v0, v11, :cond_0

    sget-object v11, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_1

    .line 292
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 293
    .local v7, "message":Landroid/os/Message;
    const/high16 v11, 0x100000

    iput v11, v7, Landroid/os/Message;->what:I

    .line 294
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v9, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "KEY_MAP_AREAID"

    invoke-interface {v9, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v11, "KEY_MAP_CITYNAME"

    const-string v12, ""

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    invoke-direct {p0, v7}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 337
    .end local v7    # "message":Landroid/os/Message;
    .end local v9    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 303
    :cond_3
    const-string v11, "OverAllControl"

    const-string v12, "QueryWeatherInfo  But areadID is Null"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 307
    :cond_5
    move-object/from16 p2, p1

    .line 309
    :cond_6
    const-string v11, "TYPE_NWS_SERVER"

    const-string v12, "TYPE_NWS_SERVER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    const-string v11, "OverAllControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "queryWeatherInfo areadID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcn/nubia/weather/task/AirTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v1, p1, v0, v11}, Lcn/nubia/weather/task/AirTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 312
    .local v1, "airTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v2, Lcn/nubia/weather/task/AlarmTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v2, p1, v0, v11}, Lcn/nubia/weather/task/AlarmTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 313
    .local v2, "alarmTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v3, Lcn/nubia/weather/task/Forecast5dTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v3, p1, v0, v11}, Lcn/nubia/weather/task/Forecast5dTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 314
    .local v3, "forecast5dTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v4, Lcn/nubia/weather/task/HourfcTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v4, p1, v0, v11}, Lcn/nubia/weather/task/HourfcTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 315
    .local v4, "hourfcTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v5, Lcn/nubia/weather/task/IndexTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v5, p1, v0, v11}, Lcn/nubia/weather/task/IndexTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 316
    .local v5, "indexTask":Lcn/nubia/weather/task/WeatherTask;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcn/nubia/weather/task/WeatherTask;->setmParentId(Ljava/lang/String;)V

    .line 317
    new-instance v10, Lcn/nubia/weather/task/ObserveTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v10, p1, v0, v11}, Lcn/nubia/weather/task/ObserveTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 321
    .local v10, "observeTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 322
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 323
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 324
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 325
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 326
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 328
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 329
    new-instance v6, Lcn/nubia/weather/task/LocKeyCitySearchTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v6, p1, v0, v11}, Lcn/nubia/weather/task/LocKeyCitySearchTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 331
    .local v6, "locKeyCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "airTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v2    # "alarmTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v3    # "forecast5dTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v4    # "hourfcTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v5    # "indexTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v6    # "locKeyCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v10    # "observeTask":Lcn/nubia/weather/task/WeatherTask;
    :cond_7
    const-string v11, "TYPE_NWS_SERVER"

    const-string v12, "TYPE_NUBIA_SERVER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 334
    new-instance v8, Lcn/nubia/weather/task/NubiaServerTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v8, p1, v0, v11}, Lcn/nubia/weather/task/NubiaServerTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 335
    .local v8, "nubiaTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 4
    .param p1, "mWeather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 273
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 279
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v0, v1, v2, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method public refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z
    .locals 10
    .param p1, "mWeather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 964
    const/4 v1, 0x0

    .line 965
    .local v1, "needNotityWithoutUpdate":Z
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 966
    const-string v6, "OverAllControl"

    const-string v7, "NETWORN_NONE)"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v6, :cond_0

    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v6, :cond_1

    .line 968
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 969
    .local v0, "message":Landroid/os/Message;
    const/high16 v6, 0x100000

    iput v6, v0, Landroid/os/Message;->what:I

    .line 970
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 971
    .local v3, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "KEY_MAP_AREAID"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v6, "KEY_MAP_CITYNAME"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 974
    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .end local v0    # "message":Landroid/os/Message;
    .end local v3    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move v2, v1

    .line 1014
    .end local v1    # "needNotityWithoutUpdate":Z
    .local v2, "needNotityWithoutUpdate":I
    :goto_0
    return v2

    .line 978
    .end local v2    # "needNotityWithoutUpdate":I
    .restart local v1    # "needNotityWithoutUpdate":Z
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 980
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 981
    const-string v6, "OverAllControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 983
    .local v4, "timeDiff":J
    const-wide/32 v6, 0x927c0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 985
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 984
    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 986
    invoke-virtual {v6, p2}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 987
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 998
    :goto_1
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 999
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .end local v4    # "timeDiff":J
    :cond_3
    :goto_2
    move v2, v1

    .line 1014
    .restart local v2    # "needNotityWithoutUpdate":I
    goto :goto_0

    .line 988
    .end local v2    # "needNotityWithoutUpdate":I
    .restart local v4    # "timeDiff":J
    :cond_4
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_5

    const-wide/32 v6, 0x2bf20

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 989
    const-string v6, "OverAllControl"

    const-string v7, "do refresh"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 990
    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 992
    invoke-virtual {v6, p2}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 993
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    goto :goto_1

    .line 995
    :cond_5
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    .line 996
    const/4 v1, 0x1

    goto :goto_1

    .line 1002
    .end local v4    # "timeDiff":J
    :cond_6
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 1003
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    .line 1004
    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq v6, p2, :cond_7

    .line 1005
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    .line 1007
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 1009
    :cond_8
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 1010
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v8

    .line 1011
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v9

    .line 1010
    invoke-virtual {v6, v7, v8, v9, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_2
.end method

.method public removeActivityHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 958
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 959
    return-void
.end method

.method public searchCities(Ljava/lang/String;)V
    .locals 5
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 1137
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    const-string v3, "OverAllControl"

    const-string v4, "NETWORN_NONE)"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1140
    .local v1, "message":Landroid/os/Message;
    const v3, 0x100009

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1141
    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 1148
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 1144
    :cond_0
    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    .line 1145
    .local v2, "type":Lcn/nubia/weather/app/Constant$OperationType;
    new-instance v0, Lcn/nubia/weather/task/CitySearchTask;

    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    invoke-direct {v0, p1, v2, v3}, Lcn/nubia/weather/task/CitySearchTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 1146
    .local v0, "citySearchTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 1147
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    goto :goto_0
.end method

.method public startScan()V
    .locals 6

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "size":I
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 148
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterWifiScanBroadCast()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "OverAllControl"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    .line 186
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 188
    :cond_0
    return-void
.end method
