.class public Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;


# static fields
.field private static final MAX_TRYBIND:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LelinkSourceSDK"

.field private static mBindHander:Landroid/os/Handler;

.field private static mLelinkSDKController:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# instance fields
.field authListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field private bindCount:I

.field bindStatusListener:Lcom/hpplay/sdk/source/process/d$a;

.field private isBind:Z

.field private mAppSecret:Ljava/lang/String;

.field private mAppVer:Ljava/lang/String;

.field private mAppid:Ljava/lang/String;

.field private mAuthListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

.field private mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

.field private mBrowserThread:Lcom/hpplay/sdk/source/process/a;

.field private mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private mContext:Landroid/content/Context;

.field private mDebugVideoFile:Ljava/lang/String;

.field private mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

.field private mOaid:Ljava/lang/String;

.field private mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private mRelevantInfoListener:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field private mSdkInterface:Lcom/hpplay/sdk/source/n;

.field private mSdkManager:Lcom/hpplay/sdk/source/process/c;

.field private mServiceConnection:Lcom/hpplay/sdk/source/process/d;

.field private mUserId:Ljava/lang/String;

.field pLogCallback:Lcom/hpplay/sdk/source/j;

.field private startBrowserTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->startBrowserTime:J

    .line 173
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$2;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindStatusListener:Lcom/hpplay/sdk/source/process/d$a;

    .line 210
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->authListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    .line 763
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$5;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$5;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->pLogCallback:Lcom/hpplay/sdk/source/j;

    return-void
.end method

.method static synthetic access$000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/process/d;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/process/d;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/AuthListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAuthListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IBindSdkListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mRelevantInfoListener:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/ILogCallback;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    return v0
.end method

.method static synthetic access$202(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    return p1
.end method

.method static synthetic access$300(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    return p1
.end method

.method static synthetic access$304(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Lcom/hpplay/sdk/source/n;)Lcom/hpplay/sdk/source/n;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    return-object p1
.end method

.method static synthetic access$500(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IConnectListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mDebugVideoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    return-void
.end method

.method private currentPorcessBind()V
    .locals 7

    .prologue
    .line 201
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    const v1, 0x10004

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->authListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppid:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppVer:Ljava/lang/String;

    iget-object v6, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mOaid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 207
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mDebugVideoFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mLelinkSDKController:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mLelinkSDKController:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    .line 71
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mLelinkSDKController:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private retryBind()V
    .locals 4

    .prologue
    .line 771
    sget-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 772
    sget-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 773
    sget-object v0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    new-instance v1, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$6;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    :cond_0
    return-void
.end method


# virtual methods
.method public addPinCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 579
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->addPinCodeToLelinkServiceInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    goto :goto_0
.end method

.method public addQRCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 2

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 565
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->addQRCodeToLelinkServiceInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    goto :goto_0
.end method

.method public addVolume()V
    .locals 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->addVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->d()V

    goto :goto_0
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 78
    return-void
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 83
    return-void
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 12

    .prologue
    .line 125
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppid:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppSecret:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mUserId:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAppVer:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mOaid:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    .line 132
    sget-object v2, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    .line 135
    :cond_0
    sget-object v2, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    sget-object v11, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBindHander:Landroid/os/Handler;

    new-instance v2, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$1;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v11, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method

.method public canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 639
    :goto_0
    return v0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 625
    :goto_0
    return v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 364
    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->b(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getConnectInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->getConnectInfos()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 737
    :try_start_0
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v1, p1}, Lcom/hpplay/sdk/source/n;->getOption(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 746
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/process/c;->c(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 2

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/n;->onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    goto :goto_0
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/n;->onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->h()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->g()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->b(I)V

    goto :goto_0
.end method

.method public setBrowseResultListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 3

    .prologue
    .line 240
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 241
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSourceSdkImp setBrowseResultListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 3

    .prologue
    .line 255
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 257
    :try_start_0
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSourceSdkImp setConnectListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDebugAVListener(Lcom/hpplay/sdk/source/api/IDebugAVListener;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->setDebugMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Z)V

    goto :goto_0
.end method

.method public setDebugTimestamp(Z)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setDebugVideoFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mDebugVideoFile:Ljava/lang/String;

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/d;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDisplayListener(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setInteractiveListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 652
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/d;->i:Lcom/hpplay/sdk/source/f;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setInteractiveListener(Lcom/hpplay/sdk/source/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    goto :goto_0
.end method

.method public setLogCallback(Lcom/hpplay/sdk/source/api/ILogCallback;)V
    .locals 2

    .prologue
    .line 751
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

    .line 752
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->pLogCallback:Lcom/hpplay/sdk/source/j;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setLogCallback(Lcom/hpplay/sdk/source/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->pLogCallback:Lcom/hpplay/sdk/source/j;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/j;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 665
    const v1, 0x10004

    if-ne v1, p1, :cond_1

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    if-eqz v1, :cond_1

    .line 666
    aget-object v0, p2, v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AuthListener;

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAuthListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    .line 667
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mAuthListener:Lcom/hpplay/sdk/source/browse/api/AuthListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v1, :cond_3

    .line 674
    sparse-switch p1, :sswitch_data_0

    .line 712
    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    .line 714
    :try_start_1
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    .line 715
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 716
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    :sswitch_0
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p2, v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;

    .line 677
    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/util/List;

    .line 678
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 679
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;)V

    .line 680
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    iget-object v2, v2, Lcom/hpplay/sdk/source/process/d;->c:Lcom/hpplay/sdk/source/i;

    invoke-interface {v0, v2, v1}, Lcom/hpplay/sdk/source/n;->startOnlineCheck(Lcom/hpplay/sdk/source/i;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 684
    :sswitch_1
    const/4 v0, 0x0

    :try_start_3
    aget-object v0, p2, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 685
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/n;->setSystemApp(Z)V

    goto :goto_0

    .line 690
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    if-eqz v0, :cond_0

    .line 691
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mRelevantInfoListener:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 692
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    new-instance v1, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$4;-><init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/n;->setRelevantInfoListener(Lcom/hpplay/sdk/source/m;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 718
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, v1}, Lcom/hpplay/sdk/source/n;->setOption(I[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    .line 720
    :try_start_5
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x10003 -> :sswitch_0
        0x100029 -> :sswitch_1
        0x120002 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPlayListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 3

    .prologue
    .line 270
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 271
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSourceSdkImp setPlayListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->setVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(I)V

    goto :goto_0
.end method

.method public startBrowse(ZZ)V
    .locals 3

    .prologue
    .line 286
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSourceSdkImp startBrowse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/n;->browse(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->startBrowseThread(ZZ)V

    goto :goto_0
.end method

.method public startBrowseThread(ZZ)V
    .locals 4

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->startBrowserTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/process/a;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/process/a;-><init>(ZZ)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    .line 323
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->start()V

    .line 325
    :cond_2
    const-string v0, "threadTs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/process/a;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->a()V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->startBrowserTime:J

    goto :goto_0
.end method

.method public startMirror(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->startMirrorForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "LelinkSourceSDK"

    const-string v1, "unsupported of mirror"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    goto :goto_0
.end method

.method public startPlayMedia(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/n;->startPlayMediaForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    goto :goto_0
.end method

.method public startPlayMedia(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/n;->startPlayMedia(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;-><init>()V

    .line 531
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 532
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLoaclUri(Landroid/net/Uri;)V

    .line 533
    invoke-virtual {v0, p3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setType(I)V

    .line 534
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v1, :cond_1

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/n;->startPlayMediaForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    goto :goto_0
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/n;->startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public stopBrowse()V
    .locals 3

    .prologue
    .line 302
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LelinkSourceSdkImp stopBrowse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->stopBrowse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->stopBrowseThread()V

    goto :goto_0
.end method

.method public stopBrowseThread()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->startBrowserTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mBrowserThread:Lcom/hpplay/sdk/source/process/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/a;->b()V

    .line 335
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->j()V

    goto :goto_0
.end method

.method public subVolume()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkInterface:Lcom/hpplay/sdk/source/n;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/n;->subVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    invoke-direct {p0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->retryBind()V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->e()V

    goto :goto_0
.end method

.method public unBindSdk()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->isBind:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mServiceConnection:Lcom/hpplay/sdk/source/process/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/d;->b()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->mSdkManager:Lcom/hpplay/sdk/source/process/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updatePCMData(III[BII)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method
