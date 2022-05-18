.class public Lcom/hpplay/sdk/source/common/store/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Session"

.field private static mInstance:Lcom/hpplay/sdk/source/common/store/Session;


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public contextPath:Lcom/hpplay/common/utils/ContextPath;

.field public department:Ljava/lang/String;

.field private infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

.field public isAuthSuccess:Z

.field public isFilter501Version:Z

.field public isOnlyLelink:Z

.field public jobNumber:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

.field private mDebugBean:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

.field private mDebugTimestamp:Z

.field private mDebugVideoFile:Ljava/lang/String;

.field private mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

.field private mHID:Ljava/lang/String;

.field private mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

.field private mMethod:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mRegTime:J

.field private mSocketExceptionsListener:Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

.field private mThirdPartyDataReport:Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

.field private mUID:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field private pushUri:Ljava/lang/String;

.field public scanTime:I

.field public serverPort:I

.field public serverProtocolVer:Ljava/lang/String;

.field public tUid:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/hpplay/sdk/source/common/store/Session;->mInstance:Lcom/hpplay/sdk/source/common/store/Session;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/hpplay/sdk/source/common/store/Session;->serverPort:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->serverProtocolVer:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->tid:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 60
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->scanTime:I

    .line 71
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/common/store/Session;->isOnlyLelink:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->isFilter501Version:Z

    .line 89
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugTimestamp:Z

    .line 111
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    .line 112
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/hpplay/common/utils/ContextPath;->getInstance(Landroid/content/Context;I)Lcom/hpplay/common/utils/ContextPath;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->contextPath:Lcom/hpplay/common/utils/ContextPath;

    .line 113
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hpplay/sdk/source/common/store/Session;
    .locals 2

    .prologue
    .line 101
    const-class v1, Lcom/hpplay/sdk/source/common/store/Session;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Session;->mInstance:Lcom/hpplay/sdk/source/common/store/Session;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/store/Session;->initSession(Landroid/content/Context;)V

    .line 107
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Session;->mInstance:Lcom/hpplay/sdk/source/common/store/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/hpplay/sdk/source/common/store/Session;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Session;->mInstance:Lcom/hpplay/sdk/source/common/store/Session;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/common/store/Session;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/common/store/Session;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hpplay/sdk/source/common/store/Session;->mInstance:Lcom/hpplay/sdk/source/common/store/Session;

    .line 97
    :cond_0
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readRepeatInfoFromLocal()Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;
    .locals 4

    .prologue
    .line 321
    const-string v0, "Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRepeatInfoFromLocal path ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->repeat_info_file_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/common/utils/FileUtil;->file2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form file info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "repeat_info"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form sp info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->jsonToBean(Ljava/lang/String;)Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    move-result-object v0

    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v1, "Session"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "repeat_info"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public get3rdDataReport()Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mThirdPartyDataReport:Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mThirdPartyDataReport:Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mThirdPartyDataReport:Lcom/hpplay/sdk/source/common/cloud/ThirdPartyDataReport;

    return-object v0
.end method

.method public getDebugAVListener()Lcom/hpplay/sdk/source/api/IDebugAVListener;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    return-object v0
.end method

.method public getDebugTimestamp()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugTimestamp:Z

    return v0
.end method

.method public getDebugTimestampBean()Lcom/hpplay/sdk/source/bean/DebugTimestampBean;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugBean:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    return-object v0
.end method

.method public getDebugVideoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugVideoFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayListener()Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    return-object v0
.end method

.method public getHID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/common/store/Session;->updateHID()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oaid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/hpplay/common/utils/DeviceUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "create_id"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "create_id"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogCallback()Lcom/hpplay/sdk/source/api/ILogCallback;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "mac_"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/LeboUtil;->getSourceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    .line 186
    const-string v0, "0000000000000000"

    iget-object v1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "mac_"

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPushUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->pushUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationScanTime()J
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->scanTime:I

    if-lez v0, :cond_0

    .line 315
    iget v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->scanTime:I

    int-to-long v0, v0

    .line 317
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3c

    goto :goto_0
.end method

.method public getSocketExceptionsListener()Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mSocketExceptionsListener:Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/common/store/Session;->updateUID()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUID:Ljava/lang/String;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getmNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getmRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getmRegTime()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/hpplay/sdk/source/common/store/Session;->readRepeatInfoFromLocal()Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getRegTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mRegTime:J

    .line 199
    iget-wide v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mRegTime:J

    return-wide v0
.end method

.method public getmUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugAVListener(Lcom/hpplay/sdk/source/api/IDebugAVListener;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    .line 275
    return-void
.end method

.method public setDebugTimestamp(Z)V
    .locals 0

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugTimestamp:Z

    .line 279
    return-void
.end method

.method public setDebugTimestampBean(Lcom/hpplay/sdk/source/bean/DebugTimestampBean;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugBean:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 287
    return-void
.end method

.method public setDebugVideoFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDebugVideoFile:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setDisplayListener(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    .line 267
    return-void
.end method

.method public setLogCallback(Lcom/hpplay/sdk/source/api/ILogCallback;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

    .line 259
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "mac_"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setPushUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->pushUri:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setSocketExceptionsListener(Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mSocketExceptionsListener:Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

    .line 295
    return-void
.end method

.method public setmMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mMethod:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setmNonce(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mNonce:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setmRealm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mRealm:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setmRegTime(J)V
    .locals 1

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mRegTime:J

    .line 204
    return-void
.end method

.method public setmUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUri:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public updateHID()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/hpplay/sdk/source/common/store/Session;->readRepeatInfoFromLocal()Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    .line 159
    const-string v0, "Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHID use server hid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/LeboUtil;->getNewSourceHID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    .line 162
    const-string v0, "Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHID create new hid  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/common/store/Session;->mHID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateRepeatInfo()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/hpplay/sdk/source/common/store/Session;->readRepeatInfoFromLocal()Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    .line 117
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/common/store/Session;->updateUID()V

    .line 118
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/common/store/Session;->updateHID()V

    .line 119
    return-void
.end method

.method public updateUID()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/hpplay/sdk/source/common/store/Session;->readRepeatInfoFromLocal()Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "Session"

    const-string v1, "updateUID use server uid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->infoBean:Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUID:Ljava/lang/String;

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v0, "Session"

    const-string v1, "updateUID use local uid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/LeboUtil;->getCUid64(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Session;->mUID:Ljava/lang/String;

    goto :goto_0
.end method
