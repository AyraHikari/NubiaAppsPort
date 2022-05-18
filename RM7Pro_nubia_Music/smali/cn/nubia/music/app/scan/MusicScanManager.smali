.class public Lcn/nubia/music/app/scan/MusicScanManager;
.super Ljava/lang/Object;
.source "MusicScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;,
        Lcn/nubia/music/app/scan/MusicScanManager$a;
    }
.end annotation


# static fields
.field private static final MSG_AUTO_SCAN_MUSIC:I = 0x10


# instance fields
.field private mAutoScan:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasScanned:Z

.field private mHasServiceBind:Z

.field private mIsNeedScan:Z

.field private mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

.field private mScanCallback:Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

.field private mScanDelayTime:I

.field private mScanServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/app/scan/MusicScanManager;-><init>(Landroid/content/Context;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/app/scan/MusicScanManager;-><init>(Landroid/content/Context;ZLcn/nubia/music/app/scan/MusicScanManager$ScanCallback;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcn/nubia/music/app/scan/MusicScanManager$ScanCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mContext:Landroid/content/Context;

    .line 21
    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasServiceBind:Z

    .line 22
    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mIsNeedScan:Z

    .line 23
    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasScanned:Z

    .line 24
    iput v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanDelayTime:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mAutoScan:Z

    .line 26
    iput-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanCallback:Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

    .line 66
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/scan/MusicScanManager$1;-><init>(Lcn/nubia/music/app/scan/MusicScanManager;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanServiceConnection:Landroid/content/ServiceConnection;

    .line 38
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanManager$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/app/scan/MusicScanManager$a;-><init>(Lcn/nubia/music/app/scan/MusicScanManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean p2, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mAutoScan:Z

    .line 41
    iput-object p3, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanCallback:Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

    .line 42
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanManager;->bindMusicScanService()V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/music/app/scan/MusicScanManager;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasServiceBind:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/IMusicScanService;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/music/app/scan/MusicScanManager;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/music/app/scan/MusicScanManager;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mAutoScan:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/scan/MusicScanManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/app/scan/MusicScanManager;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mIsNeedScan:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/music/app/scan/MusicScanManager;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasScanned:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/music/app/scan/MusicScanManager;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanDelayTime:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/music/app/scan/MusicScanManager;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/music/app/scan/MusicScanManager;->scanLocalMusic(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/music/app/scan/MusicScanManager;)Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanCallback:Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;

    return-object v0
.end method

.method private bindMusicScanService()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "bindMusicScanService() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasServiceBind:Z

    .line 96
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanService;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    .line 97
    return-void
.end method

.method private declared-synchronized scanLocalMusic(I)V
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    const-string v0, "scanLocalMusic"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mIsNeedScan:Z

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasScanned:Z

    .line 147
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->clear()V

    .line 148
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanProgress;->showScanProgress(Landroid/content/Context;Lcn/nubia/music/app/scan/IMusicScanService;)V

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/music/app/scan/MusicScanManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/app/scan/MusicScanManager$2;-><init>(Lcn/nubia/music/app/scan/MusicScanManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unbindMusicScanService()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "unbindMusicScanService() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasServiceBind:Z

    .line 102
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanService;->unbindFromService(Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;)V

    .line 103
    return-void
.end method


# virtual methods
.method public clearMusicScan()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanManager;->unbindMusicScanService()V

    .line 59
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->clear()V

    .line 60
    return-void
.end method

.method public startMusicScan(I)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mIsNeedScan:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasScanned:Z

    .line 48
    iput p1, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mScanDelayTime:I

    .line 49
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasServiceBind:Z

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanManager;->bindMusicScanService()V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mIsNeedScan:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanManager;->mHasScanned:Z

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/music/app/scan/MusicScanManager;->scanLocalMusic(I)V

    .line 55
    :cond_1
    return-void
.end method
