.class public Lcom/nubia/reyun/sdk/ReYunSDKManager;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;,
        Lcom/nubia/reyun/sdk/ReYunSDKManager$EventName;,
        Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;
    }
.end annotation


# static fields
.field private static mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

.field private static mDeviceIdType:Ljava/lang/String;

.field private static mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private static mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

.field private static mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

.field public static sPolicy:I

.field private static sPostBatchCount:I

.field private static sPostBatchInterval:I

.field private static sSendBySelf:Z

.field public static sSwitch:I


# instance fields
.field private mAccountId:Ljava/lang/String;

.field mAesKey:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentDomain:Ljava/lang/String;

.field private mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

.field private mDisableEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mElapsedRealtime:J

.field private mExpiredTime:I

.field private mGeocoder:Landroid/location/Geocoder;

.field private mGpsAnalyze:Z

.field private mGpsCallback:Lcom/nubia/reyun/sdk/LocationCallback;

.field mGpsLocationListener:Landroid/location/LocationListener;

.field private mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

.field private mIllegalChars:[C

.field private mIsEncrypt:Z

.field private mIsInit:Z

.field private mIsInternetApp:Z

.field private mIsMostEffort:Z

.field private mIsSendByNubia:Z

.field private mIsSystemUid:Z

.field private mIsUseNet:Z

.field private mIsVistor:Z

.field private mIsfirst:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetAnalyze:Z

.field private mNetCallback:Lcom/nubia/reyun/sdk/LocationCallback;

.field mNetLocationListener:Landroid/location/LocationListener;

.field private mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

.field private mPrivacy:Z

.field private mServerTime:J

.field mSessionStartTime:J

.field private mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

.field private mUploadSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "imei"

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceIdType:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Dev:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 86
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 87
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSendBySelf:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    .line 62
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsMostEffort:Z

    .line 63
    iput-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mUploadSwitch:Z

    .line 65
    iput-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPrivacy:Z

    .line 71
    const v0, 0x54600

    iput v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mExpiredTime:I

    .line 73
    iput-wide v4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    .line 74
    iput-wide v4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    .line 95
    iput-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsfirst:Z

    .line 97
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInternetApp:Z

    .line 98
    iput-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsEncrypt:Z

    .line 99
    iput-boolean v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsUseNet:Z

    .line 100
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSystemUid:Z

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAesKey:Ljava/lang/String;

    .line 915
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIllegalChars:[C

    .line 1780
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$1;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$1;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetLocationListener:Landroid/location/LocationListener;

    .line 1850
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 107
    return-void

    .line 915
    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x9s
        0xas
    .end array-data
.end method

.method private IsIllegalCharInString(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 918
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIllegalChars:[C

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 922
    :goto_1
    return v0

    .line 918
    :cond_0
    aget-char v4, v2, v1

    .line 919
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 920
    const/4 v0, 0x1

    goto :goto_1

    .line 918
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetCallback:Lcom/nubia/reyun/sdk/LocationCallback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInternetApp:Z

    return v0
.end method

.method static synthetic access$12(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkFetchPolice()V

    return-void
.end method

.method static synthetic access$13(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSystemUid:Z

    return v0
.end method

.method static synthetic access$14(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    return-object v0
.end method

.method static synthetic access$15(Lcom/nubia/reyun/sdk/ReYunSDKManager;Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    return-void
.end method

.method static synthetic access$16(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1077
    invoke-direct {p0, p1, p2, p3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/nubia/reyun/sdk/ReYunSDKManager;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1090
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    return-object v0
.end method

.method static synthetic access$19(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfile(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetAnalyze:Z

    return v0
.end method

.method static synthetic access$20(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsfirst:Z

    return v0
.end method

.method static synthetic access$21(Lcom/nubia/reyun/sdk/ReYunSDKManager;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsfirst:Z

    return-void
.end method

.method static synthetic access$22(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->initFirstSend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23()Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    return-object v0
.end method

.method static synthetic access$24(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->fetchPolicyFromServer()V

    return-void
.end method

.method static synthetic access$25(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->fetchTimeFromServer()V

    return-void
.end method

.method static synthetic access$26(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct/range {p0 .. p6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/location/Geocoder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGeocoder:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsCallback:Lcom/nubia/reyun/sdk/LocationCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsAnalyze:Z

    return v0
.end method

.method static synthetic access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nubia/reyun/sdk/ReYunSDKManager;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSendByNubia:Z

    return-void
.end method

.method static synthetic access$8(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static addPolicy(I)V
    .locals 1

    .prologue
    .line 1269
    sget v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    or-int/2addr v0, p0

    sput v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    .line 1270
    return-void
.end method

.method static addSwitch(I)V
    .locals 1

    .prologue
    .line 1252
    sget v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    or-int/2addr v0, p0

    sput v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    .line 1253
    return-void
.end method

.method private checkFetchPolice()V
    .locals 6

    .prologue
    .line 336
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-ne v0, v1, :cond_0

    .line 337
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v0

    .line 339
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getFetchPoliceTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 340
    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->saveFetchTime(Landroid/content/Context;J)V

    .line 342
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->fetchPolicyFromServer()V

    .line 343
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->fetchTimeFromServer()V

    .line 346
    :cond_0
    return-void
.end method

.method private checkInitNull()V
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1899
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    if-nez v0, :cond_1

    .line 1902
    invoke-static {p0}, Lcom/nubia/reyun/sdk/PointTrackerFactory;->getDefaultPointTracker(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    .line 1904
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v0, :cond_2

    .line 1905
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 1907
    :cond_2
    return-void
.end method

.method static clearPolicy()V
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    sput v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    .line 1274
    return-void
.end method

.method static clearSwitch()V
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x0

    sput v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    .line 1266
    return-void
.end method

.method private fetchPolicyFromServer()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    const-string v1, "fetchpolicy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private fetchTimeFromServer()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    const-string v1, "fetchtime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1091
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1092
    const-string v0, "deviceid"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1093
    const-string v0, "deviceid_type"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    const-string v0, "timestamp"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1095
    const-string v2, "isvistor"

    .line 1096
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 1097
    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1096
    :goto_0
    iput-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsVistor:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1098
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBaseContextData timestamp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accountId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v2, "channelid"

    .line 1101
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "unknown"

    .line 1100
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1103
    const-string v0, "version"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1104
    const-string v0, "sdkversion"

    const-string v2, "1.6.1_05191"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1105
    const-string v0, "imei"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewImei()Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1110
    :cond_0
    const-string v2, "imei"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getRemoteImeis()Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1113
    const-string v2, "imeis"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getMeids()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    const-string v0, "meids"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getMeids()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1121
    const-string v0, "unknown"

    .line 1123
    :cond_3
    const-string v2, "udid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    :cond_4
    const-string v0, "androidid"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getAndroidid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getVaid()Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1129
    const-string v0, "unknown"

    .line 1131
    :cond_5
    const-string v2, "vaid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getOaid()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1135
    const-string v0, "unknown"

    .line 1137
    :cond_6
    const-string v2, "oaid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1139
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getHasProvider()Z

    move-result v0

    .line 1140
    if-eqz v0, :cond_7

    .line 1141
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1142
    const-string v3, "provider_authority"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    :cond_7
    const-string v2, "has_provider"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1146
    return-object v1

    .line 1097
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1102
    :cond_9
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1079
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1080
    const-string v1, "appid"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    const-string v1, "who"

    if-eqz p1, :cond_0

    .line 1083
    const-string v2, "unknown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, p3

    .line 1082
    :cond_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1085
    const-string v1, "what"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1086
    const-string v1, "when"

    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1087
    return-object v0
.end method

.method private getFetchPoliceTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return-wide v0

    .line 364
    :cond_0
    const-string v2, "ry"

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 365
    const-string v3, "fetch_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getIdType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1682
    .line 1683
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1682
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1684
    const-string v1, "p_did_type"

    const-string v2, "imei"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    const-string v1, "ReYunSDKManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIdType idType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    return-object v0
.end method

.method public static getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-direct {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;-><init>()V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static hasPolicy(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1277
    sget-boolean v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSendBySelf:Z

    if-eqz v1, :cond_1

    .line 1278
    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasSwitch(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1256
    sget-boolean v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSendBySelf:Z

    if-eqz v1, :cond_1

    .line 1257
    if-ne v0, p0, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFirstSend(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getHttpHandler()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$9;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$9;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 703
    invoke-virtual {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackStartup(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkSessionTime()V

    .line 705
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setAccountId()V

    .line 706
    return-void
.end method

.method private isIllegalEventName(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1319
    if-nez p1, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->IsIllegalCharInString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1326
    const-class v2, Lcom/nubia/reyun/sdk/ReYunSDKManager$EventName;

    .line 1327
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1328
    array-length v5, v4

    move v3, v1

    :goto_1
    if-lt v3, v5, :cond_2

    move v0, v1

    .line 1339
    goto :goto_0

    .line 1328
    :cond_2
    aget-object v2, v4, v3

    .line 1330
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 1328
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1333
    :catch_0
    move-exception v2

    .line 1334
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1335
    :catch_1
    move-exception v2

    .line 1336
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static readPolicy(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1672
    .line 1673
    const-string v0, "ry"

    .line 1672
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1674
    const-string v1, "p"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    .line 1675
    const-string v1, "switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    .line 1676
    const-string v1, "p_count"

    const/16 v2, 0x2710

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchCount:I

    .line 1677
    const-string v1, "p_time"

    .line 1678
    const/16 v2, 0x5460

    .line 1677
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchInterval:I

    .line 1679
    return-void
.end method

.method private saveFetchTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 351
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 354
    const-string v1, "fetch_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    :cond_0
    return-void
.end method

.method private setAccountId()V
    .locals 6

    .prologue
    .line 1015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1016
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->readProfileTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 1017
    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storeSendProfileTime(Landroid/content/Context;J)V

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1021
    :try_start_0
    const-string v1, "device_info_mac_address"

    .line 1022
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v1, "device_info_imei"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v1, "device_info_telephone"

    .line 1025
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nubia/reyun/utils/CommonUtil;->getTelNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v1, "device_info_device_manutime"

    .line 1027
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getDeviceManutime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1026
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v1, "device_info_os"

    .line 1029
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getOs()Ljava/lang/String;

    move-result-object v2

    .line 1028
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v1, "device_info_os_version"

    .line 1031
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v1, "zone_info_country"

    .line 1033
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v1, "zone_info_time_zone"

    .line 1035
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getTimeZone()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1034
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v1, "zone_info_ip"

    .line 1037
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string v1, "zone_info_language"

    .line 1039
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v1, "net_info_access_type"

    .line 1041
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getAccessType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string v1, "net_info_carrier"

    .line 1043
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string v1, "net_info_access_subtype"

    .line 1045
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getSubAccessType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string v1, "device_info_cpu"

    .line 1047
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getCpu()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string v1, "device_info_device_board"

    .line 1049
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getDeviceBoard()Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/analytic/util/AppUtil;->getResolution(Landroid/content/Context;)[I

    move-result-object v1

    .line 1051
    const-string v2, "device_info_screenwidth"

    .line 1052
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1051
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string v2, "device_info_screenheight"

    .line 1054
    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1053
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v1, "device_info_ui_version"

    .line 1056
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getUiVersion()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v1, "device_info_rom_version"

    .line 1058
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string v1, "device_info_device_internal"

    .line 1060
    invoke-static {}, Lcn/nubia/analytic/util/AppUtil;->getDeviceInternal()Ljava/lang/String;

    move-result-object v2

    .line 1059
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_0
    invoke-direct {p0, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfile(Ljava/util/Map;)V

    .line 1068
    :cond_0
    return-void

    .line 1062
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static setEnvironment(Lcom/nubia/reyun/sdk/ReYunSDK$Environment;)V
    .locals 1

    .prologue
    .line 139
    sput-object p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 140
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->switchEnvironment()V

    .line 143
    :cond_0
    return-void
.end method

.method static storePolicy(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1690
    .line 1691
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1690
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1692
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1693
    const-string v1, "p"

    sget v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPolicy:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1694
    const-string v1, "switch"

    sget v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSwitch:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1695
    const-string v1, "p_count"

    sget v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1696
    const-string v1, "p_time"

    sget v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchInterval:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1697
    const-string v1, "p_did_type"

    sget-object v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceIdType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1698
    sget-object v1, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storePolicy mDeviceIdType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceIdType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1700
    return-void
.end method

.method private trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 842
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackCustomEvent + ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 845
    const-string v2, "] + Error: Null context! Did you call the method \'init\'?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_0
    return-void

    .line 849
    :cond_0
    if-nez p5, :cond_1

    invoke-direct {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isIllegalEventName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal event name ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    const-string v2, "], please try another name!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_1
    if-nez p5, :cond_5

    .line 856
    invoke-static {p2}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    const-string p2, "count"

    .line 859
    :cond_2
    invoke-static {p3}, Lcom/nubia/reyun/utils/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    const-string p3, "0"

    .line 862
    :cond_3
    if-nez p4, :cond_4

    .line 863
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 865
    :cond_4
    const-string v0, "type"

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v0, "value"

    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v0, :cond_6

    .line 871
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 873
    :cond_6
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceIdType()Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-direct {p0, p6, p1, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 878
    const-string v3, "when"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 877
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 879
    if-eqz p4, :cond_8

    .line 880
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 881
    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 908
    :cond_8
    const-string v0, "context"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 909
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    invoke-interface {v0, p1, v2}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 882
    :cond_9
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 884
    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    .line 885
    invoke-direct {p0, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isIllegalEventName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 886
    sget-object v4, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 887
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal event map key ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    const-string v5, "], please try another key!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-static {v4, v0}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 891
    :cond_a
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 892
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->IsIllegalCharInString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 893
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal event map value ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 895
    const-string v5, "], please try another value!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 894
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-static {v0, v4}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 898
    :cond_b
    const-string v5, "imei"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "deviceid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 899
    const-string v5, "sdkversion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 900
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 903
    :cond_c
    sget-object v5, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "trackCustomEvent + ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] with null parameter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v5, v0}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private trackProfile(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storeAccount(Landroid/content/Context;)V

    .line 616
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 617
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 618
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 619
    if-nez p1, :cond_1

    .line 620
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 622
    :goto_1
    const-string v5, "device_info_device_brand"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v3, "device_info_model"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v0, "device_info_device_manufacturer"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "profile"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p1

    goto :goto_1
.end method


# virtual methods
.method alreadyInstalled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1198
    .line 1199
    const-string v0, "ry"

    .line 1198
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1200
    const-string v1, "ai"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1201
    return v0
.end method

.method calculateRealTime()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1150
    iget-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1151
    :cond_0
    iput-wide v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    .line 1152
    iput-wide v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    .line 1153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1157
    :goto_0
    return-wide v0

    .line 1155
    :cond_1
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calculateRealTime currentTimeMillis:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calculateRealTime mServerTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mElapsedRealtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",SystemClock.elapsedRealtime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iget-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method checkDisableEvent(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 828
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDisableEvents:Ljava/util/List;

    .line 829
    if-eqz v1, :cond_0

    .line 830
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 832
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 835
    :cond_0
    return v0

    .line 830
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method checkSessionTime()V
    .locals 8

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-eq v0, v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->calculateRealTime()J

    move-result-wide v6

    .line 754
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getStoredPauseTime()J

    move-result-wide v4

    .line 755
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getStoredSessionStartTime()J

    move-result-wide v0

    .line 756
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 759
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getStoredSessionStartTime()J

    move-result-wide v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSession(Ljava/lang/String;JJ)V

    .line 761
    invoke-virtual {p0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedPauseTime(J)V

    .line 762
    invoke-virtual {p0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedSessionStartTime(J)V

    goto :goto_0

    .line 764
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedSessionStartTime(J)V

    .line 765
    invoke-virtual {p0, v6, v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storedPauseTime(J)V

    goto :goto_0
.end method

.method getAccountId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 1011
    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 1010
    :goto_0
    return-object v0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    goto :goto_0
.end method

.method getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1343
    const-string v0, ""

    .line 1345
    :try_start_0
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v1, :cond_0

    .line 1346
    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 1348
    :cond_0
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    .line 1349
    :catch_0
    move-exception v1

    .line 1350
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getDisableEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDisableEvents:Ljava/util/List;

    return-object v0
.end method

.method getExpiredTime()I
    .locals 1

    .prologue
    .line 1703
    iget v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mExpiredTime:I

    return v0
.end method

.method getGpsLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V
    .locals 6

    .prologue
    .line 1838
    :try_start_0
    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsCallback:Lcom/nubia/reyun/sdk/LocationCallback;

    .line 1839
    iput-boolean p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsAnalyze:Z

    .line 1840
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    .line 1842
    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    .line 1843
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1841
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getHttpHandler()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 945
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIsMostEffort()Z
    .locals 1

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsMostEffort:Z

    return v0
.end method

.method getIsSendByNubia()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1071
    sget-boolean v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSendBySelf:Z

    if-eqz v2, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSendByNubia:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getIsSystemUid()Z
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSystemUid:Z

    return v0
.end method

.method getNLPLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V
    .locals 6

    .prologue
    .line 1767
    :try_start_0
    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetCallback:Lcom/nubia/reyun/sdk/LocationCallback;

    .line 1768
    iput-boolean p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetAnalyze:Z

    .line 1769
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    .line 1770
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    .line 1772
    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    .line 1773
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mNetLocationListener:Landroid/location/LocationListener;

    .line 1771
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getNubiaUserExperiencePlan()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1732
    .line 1735
    :try_start_0
    const-string v0, "android.provider.Settings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1736
    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 1737
    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1736
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1738
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1739
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_experience_plan"

    aput-object v6, v4, v5

    .line 1738
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1740
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 1741
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v2, v0

    .line 1753
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 1741
    goto :goto_0

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1744
    :catch_1
    move-exception v0

    .line 1745
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 1746
    :catch_2
    move-exception v0

    .line 1747
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 1748
    :catch_3
    move-exception v0

    .line 1749
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPostBatchCount()I
    .locals 1

    .prologue
    .line 963
    sget v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchCount:I

    return v0
.end method

.method public getPostBatchInterval()I
    .locals 1

    .prologue
    .line 955
    sget v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchInterval:I

    return v0
.end method

.method getPrivacy()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPrivacy:Z

    return v0
.end method

.method getRecordTrackCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1612
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1613
    const-string v1, "ry"

    .line 1612
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1614
    const-string v1, "tc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1615
    return v0
.end method

.method getRetryCountLimit()I
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x2

    return v0
.end method

.method getRryDelay()J
    .locals 2

    .prologue
    .line 1298
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method getSdkIsEncrypt()Z
    .locals 1

    .prologue
    .line 1920
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsEncrypt:Z

    return v0
.end method

.method getSdkIsUseNet()Z
    .locals 1

    .prologue
    .line 1927
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsUseNet:Z

    return v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 1719
    iget-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    return-wide v0
.end method

.method getStoredPauseTime()J
    .locals 4

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1628
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1627
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1629
    const-string v1, "pt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1630
    return-wide v0
.end method

.method getStoredResumeTime()J
    .locals 4

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1664
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1663
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1665
    const-string v1, "rt"

    .line 1666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1665
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1667
    return-wide v0
.end method

.method getStoredSessionStartTime()J
    .locals 4

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1643
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1642
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1644
    const-string v1, "sst"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1645
    return-wide v0
.end method

.method getUploadSwitch()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mUploadSwitch:Z

    return v0
.end method

.method getUploadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    .line 1241
    const-string v1, "fetchtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/stat/fetch_sys_time.do"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    :goto_0
    return-object v0

    .line 1243
    :cond_0
    const-string v1, "fetchpolicy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/stat/fetch_report_policy.do"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1245
    :cond_1
    const-string v1, "checkwhite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/stat/check_white.do"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1248
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/stat/upload_data.do"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWorkHandler()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getmDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1992
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceIdType:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    sput-object p5, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 252
    sput-object p6, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 254
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsfirst:Z

    .line 256
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 257
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 259
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppId:Ljava/lang/String;

    .line 263
    const-string v0, "unknown"

    .line 264
    const-string v1, "method init:param [channelId] is Null or empty!"

    .line 262
    invoke-static {p4, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    .line 266
    const-string v0, "unknown"

    const-string v1, "Set accountId is null!"

    .line 265
    invoke-static {p7, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    .line 269
    invoke-static {p0}, Lcom/nubia/reyun/sdk/PointTrackerFactory;->getDefaultPointTracker(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    .line 271
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 273
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 274
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 273
    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mLocationManager:Landroid/location/LocationManager;

    .line 275
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGeocoder:Landroid/location/Geocoder;

    .line 276
    iput-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    .line 278
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 222
    sget-object v5, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v6, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method isCcUpload()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v0

    return v0
.end method

.method public isDataEncrypt()Z
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public isInWhiteList()Z
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v0

    return v0
.end method

.method isOutOfMaxCount(I)Z
    .locals 1

    .prologue
    .line 1236
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSdkUpload()Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasSwitch(I)Z

    move-result v0

    return v0
.end method

.method isStoredSessionStartTime()Z
    .locals 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1650
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1649
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1651
    const-string v1, "sst"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isUpload()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPrivacy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mUploadSwitch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVistor()Z
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsVistor:Z

    return v0
.end method

.method makeParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v2, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;

    invoke-direct {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;-><init>()V

    .line 1163
    if-eqz p1, :cond_0

    .line 1164
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1170
    :cond_0
    invoke-static {p2}, Lcom/nubia/reyun/utils/CommonUtil;->isNeedGzip(Ljava/lang/String;)Z

    move-result v1

    .line 1171
    const-string v0, "app_id"

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    if-eqz p2, :cond_3

    .line 1174
    if-eqz v1, :cond_1

    .line 1175
    :try_start_0
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data before zip: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1175
    invoke-static {v0, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/nubia/reyun/utils/CommonUtil;->compress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1178
    :cond_2
    const-string v0, "data"

    invoke-virtual {v2, v0, p2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1185
    :cond_3
    :goto_1
    const-string v0, "device_id"

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getApiDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    const-string v0, "is_debug"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :cond_4
    const-string v3, "is_gzip"

    if-eqz v1, :cond_6

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v0, "rid"

    invoke-static {}, Lcom/nubia/reyun/utils/CommonUtil;->getRid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v0, "up_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v0, "version"

    const-string v1, "V1.0.2"

    invoke-virtual {v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v0, "checksum"

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->sortParamsAndSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1166
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$NubiaAPIParams;->AddParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1181
    :catch_1
    move-exception v0

    .line 1182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1189
    :cond_6
    const-string v0, "0"

    goto :goto_2
.end method

.method readAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1213
    .line 1214
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1213
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1215
    const-string v1, "accountId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readProfileTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 1226
    .line 1227
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1226
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1228
    const-string v1, "profile_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    invoke-interface {v0}, Lcom/nubia/reyun/sdk/IPointTracker;->release()V

    .line 929
    :cond_0
    return-void
.end method

.method setDisableEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDisableEvents:Ljava/util/List;

    .line 1000
    return-void
.end method

.method setElapsedRealtime(J)V
    .locals 1

    .prologue
    .line 1715
    iput-wide p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mElapsedRealtime:J

    .line 1716
    return-void
.end method

.method setExpiredTime(I)V
    .locals 0

    .prologue
    .line 1707
    iput p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mExpiredTime:I

    .line 1708
    return-void
.end method

.method setIsInternetApp(Z)V
    .locals 0

    .prologue
    .line 1914
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInternetApp:Z

    .line 1915
    return-void
.end method

.method public setIsMostEffort(Z)V
    .locals 0

    .prologue
    .line 2000
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsMostEffort:Z

    .line 2001
    return-void
.end method

.method setIsSystemUid(Z)V
    .locals 0

    .prologue
    .line 1931
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsSystemUid:Z

    .line 1932
    return-void
.end method

.method public setIsVistor(Z)V
    .locals 0

    .prologue
    .line 1290
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsVistor:Z

    .line 1291
    return-void
.end method

.method setPostBatchCount(I)V
    .locals 0

    .prologue
    .line 959
    sput p1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchCount:I

    .line 960
    return-void
.end method

.method setPostBatchInterval(I)V
    .locals 0

    .prologue
    .line 951
    sput p1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sPostBatchInterval:I

    .line 952
    return-void
.end method

.method setPrivacy(Z)V
    .locals 0

    .prologue
    .line 987
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPrivacy:Z

    .line 988
    return-void
.end method

.method setRecordTrackCount(I)V
    .locals 3

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1620
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1619
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1621
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1622
    const-string v1, "tc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1623
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1624
    return-void
.end method

.method setSdkIsEncrypt(Z)V
    .locals 0

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsEncrypt:Z

    .line 1918
    return-void
.end method

.method setSdkIsUseNet(Z)V
    .locals 0

    .prologue
    .line 1924
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsUseNet:Z

    .line 1925
    return-void
.end method

.method setSendBySelf(Z)V
    .locals 0

    .prologue
    .line 1910
    sput-boolean p1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->sSendBySelf:Z

    .line 1911
    return-void
.end method

.method setServerTime(J)V
    .locals 1

    .prologue
    .line 1723
    iput-wide p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mServerTime:J

    .line 1724
    return-void
.end method

.method setUploadSwitch(Z)V
    .locals 0

    .prologue
    .line 979
    iput-boolean p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mUploadSwitch:Z

    .line 980
    return-void
.end method

.method public setmDeviceIdType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1996
    sput-object p1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceIdType:Ljava/lang/String;

    .line 1997
    return-void
.end method

.method storeAccount(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1205
    .line 1206
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1205
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1207
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1208
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1210
    return-void
.end method

.method storeSendProfileTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 1219
    .line 1220
    const-string v0, "ry"

    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1222
    const-string v1, "profile_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1224
    return-void
.end method

.method storedPauseTime(J)V
    .locals 3

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1635
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1634
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1636
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1637
    const-string v1, "pt"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1639
    return-void
.end method

.method storedSessionStartTime(J)V
    .locals 3

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 1656
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 1655
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1657
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1658
    const-string v1, "sst"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1660
    return-void
.end method

.method switchEnvironment()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Dev:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    if-ne v0, v1, :cond_0

    .line 111
    const-string v0, "http://api-data-test.nubia.com"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Debug:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    if-ne v0, v1, :cond_1

    .line 113
    const-string v0, "http://api-data-test.nubia.com"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Release:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    if-ne v0, v1, :cond_2

    .line 115
    const-string v0, "https://api-data.nubia.com"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_2
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentEnvironment:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Test:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    if-ne v0, v1, :cond_3

    .line 117
    const-string v0, "http://api-data-test.nubia.com"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "http://api-data-test.nubia.com"

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mCurrentDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 784
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 785
    const-string v1, "trackCustomEvent Error: mIsInit false! Did you call the method \'init\'?"

    .line 784
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 789
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 790
    const-string v1, "trackCustomEvent Error: Null context! Did you call the method \'init\'?"

    .line 789
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 794
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkDisableEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method trackEventByDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 1952
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 1953
    const-string v1, "trackCustomEvent Error: mIsInit false! Did you call the method \'init\'?"

    .line 1952
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    :goto_0
    return-void

    .line 1956
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1957
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 1958
    const-string v1, "trackCustomEvent Error: Null context! Did you call the method \'init\'?"

    .line 1957
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1961
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 1962
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager$12;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackInstall()V
    .locals 6

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-eq v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 380
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 381
    const-string v1, "trackInstall Error: Null context! Did you call the method \'init\'?"

    .line 380
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 386
    const-string v1, "unknown"

    .line 387
    const-string v2, "method trackInstall:param [accountId] is Null or empty!"

    .line 385
    invoke-static {v0, v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v1, :cond_3

    .line 389
    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceIdType()Ljava/lang/String;

    move-result-object v2

    .line 393
    const-string v3, "install"

    invoke-direct {p0, v0, v3, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 395
    const-string v3, "when"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 394
    invoke-direct {p0, v4, v5, v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 396
    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    const-string v2, "install"

    invoke-interface {v1, v2, v0}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method trackLogin(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 499
    const-string v1, "method trackLogin:param [accountId] is Null or empty!"

    .line 498
    invoke-static {p1, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 500
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_1

    .line 501
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 502
    const-string v1, "trackLogin Error: mIsInit false! Did you call the method \'init\'?"

    .line 501
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 506
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 507
    const-string v1, "trackLogin Error: Null context! Did you call the method \'init\'?"

    .line 506
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 511
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$6;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$6;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackProfile(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .line 582
    const-string v0, "unknown"

    const-string v1, "Set accountId is null!"

    .line 581
    invoke-static {p1, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_1

    .line 587
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 588
    const-string v1, "trackProfile Error: mIsInit false! Did you call the method \'init\'?"

    .line 587
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 592
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 593
    const-string v1, "trackProfile Error: Null context! Did you call the method \'init\'?"

    .line 592
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 597
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;

    invoke-direct {v1, p0, p2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackProfileSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    .line 162
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 163
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mHttpSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    .line 165
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppKey:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAppId:Ljava/lang/String;

    .line 169
    const-string v0, "unknown"

    .line 170
    const-string v1, "method init:param [channelId] is Null or empty!"

    .line 168
    invoke-static {p4, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mChannelId:Ljava/lang/String;

    .line 172
    const-string v0, "unknown"

    const-string v1, "Set accountId is null!"

    .line 171
    invoke-static {p5, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lcom/nubia/reyun/sdk/PointTrackerFactory;->getDefaultPointTracker(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/IPointTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    .line 177
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 179
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Release:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setEnvironment(Lcom/nubia/reyun/sdk/ReYunSDK$Environment;)V

    .line 181
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;

    invoke-direct {v1, p0, p6}, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method trackRegister(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 449
    const-string v1, "method trackRegister:param [accountId] is Null or empty!"

    .line 448
    invoke-static {p1, v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 450
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 451
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 452
    const-string v1, "trackRegister Error: mIsInit false! Did you call the method \'init\'?"

    .line 451
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 456
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 457
    const-string v1, "trackRegister Error: Null context! Did you call the method \'init\'?"

    .line 456
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 461
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$5;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public trackSession(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 548
    :cond_0
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 550
    :try_start_0
    iput-wide p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSessionStartTime:J

    .line 551
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceIdType()Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "session"

    invoke-direct {p0, p1, v2, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 557
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 558
    const-string v1, "when"

    invoke-virtual {v2, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 559
    const-string v1, "devicebrand"

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v1, "deviceversion"

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v1, "start_time"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 562
    const-string v1, "end_time"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 563
    const-string v1, "duration"

    .line 564
    invoke-static {p2, p3, p4, p5}, Lcom/nubia/reyun/utils/CommonUtil;->getMillisSecondsString(JJ)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v1, "context"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    const-string v1, "session"

    invoke-interface {v0, v1, v2}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method trackSessionEnd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 716
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 717
    const-string v1, "trackSessionEnd Error: mIsInit false! Did you call the method \'init\'?"

    .line 716
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 722
    const-string v1, "trackSessionEnd Error: Null context! Did you call the method \'init\'?"

    .line 721
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 726
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$10;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackSessionStart(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 635
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackSessionStart sessionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getContext():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-boolean v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 638
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 639
    const-string v1, "trackSessionStart Error: mIsInit false! Did you call the method \'init\'?"

    .line 638
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 643
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 644
    const-string v1, "trackSessionStart Error: Null context! Did you call the method \'init\'?"

    .line 643
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkInitNull()V

    .line 648
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mSingalTaskExeService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;

    invoke-direct {v1, p0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public trackStartup(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 407
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackStartup isUpload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mStartUpSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mStartUpSwitch:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    if-eq v0, v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 417
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 418
    const-string v1, "trackStartup Error: Null context! Did you call the method \'init\'?"

    .line 417
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mAccountId:Ljava/lang/String;

    .line 423
    const-string v1, "unknown"

    .line 424
    const-string v2, "method trackStartup:param [accountId] is Null or empty!"

    .line 422
    invoke-static {v0, v1, v2}, Lcom/nubia/reyun/utils/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    if-nez v1, :cond_3

    .line 426
    new-instance v1, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-direct {v1, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    iput-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getNewDid()Ljava/lang/String;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mDeviceInfo:Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;

    invoke-virtual {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager$BaseDeviceInfo;->getDeviceIdType()Ljava/lang/String;

    move-result-object v2

    .line 430
    const-string v3, "startup"

    invoke-direct {p0, v0, v3, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    const-string v3, "when"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 431
    invoke-direct {p0, v4, v5, v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getBaseContextData(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 433
    const-string v2, "activityname"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mPointTacker:Lcom/nubia/reyun/sdk/IPointTracker;

    const-string v2, "startup"

    invoke-interface {v1, v2, v0}, Lcom/nubia/reyun/sdk/IPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
