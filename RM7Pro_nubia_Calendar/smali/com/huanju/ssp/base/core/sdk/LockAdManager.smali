.class public Lcom/huanju/ssp/base/core/sdk/LockAdManager;
.super Ljava/lang/Object;
.source "LockAdManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NuController"


# instance fields
.field private mAdSlotId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mIsStart:Z

.field private mListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

.field private mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestNetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x1

    iput v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    .line 40
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    .line 41
    new-instance v1, Lcom/huanju/ssp/base/core/sdk/LockAdManager$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager$1;-><init>(Lcom/huanju/ssp/base/core/sdk/LockAdManager;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handler_thread_ssp_ad"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huanju/ssp/base/core/sdk/LockAdManager$2;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager$2;-><init>(Lcom/huanju/ssp/base/core/sdk/LockAdManager;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/sdk/LockAdManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/LockAdManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->doReceive(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/sdk/LockAdManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->checkRefreshStatus()V

    return-void
.end method

.method private checkRefreshStatus()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string v0, "---checkRefresh no network"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->setContext(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->setNetType(I)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequestNetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->requestAd(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;)V

    goto :goto_0
.end method

.method private doReceive(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---doReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---doReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->handlerCheckRefreshStatus()V

    .line 132
    :cond_1
    return-void
.end method

.method private doStart(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;
    .param p2, "adslotid"    # Ljava/lang/String;
    .param p3, "netType"    # I
    .param p4, "isRestart"    # Z

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mIsStart:Z

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "Has already started!"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->registerNetReceiver()V

    .line 82
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->registerScreenOnReceiver()V

    .line 83
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mIsStart:Z

    .line 85
    iput-object p2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mAdSlotId:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    .line 87
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 88
    .local v0, "adInf":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p2}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->createLockScreenAd(Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    .line 91
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->setContext(Landroid/content/Context;)V

    .line 92
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    invoke-interface {v1, p3}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->setNetType(I)V

    .line 96
    const-string v1, "---start succ"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlerCheckRefreshStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method

.method private registerNetReceiver()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private registerScreenOnReceiver()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method


# virtual methods
.method public adClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->handleClick(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public adShow()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->adShow()V

    .line 169
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doStart(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;Ljava/lang/String;I)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;
    .param p2, "adslotid"    # Ljava/lang/String;
    .param p3, "netType"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->doStart(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;Ljava/lang/String;IZ)V

    .line 112
    return-void
.end method

.method public getAd()Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->getAd()Lcom/huanju/ssp/sdk/inf/LockScreenAd$LockScreenResponse;

    move-result-object v0

    return-object v0
.end method

.method public reStart()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mAdSlotId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mListener:Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mAdSlotId:Ljava/lang/String;

    iget v2, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->doStart(Lcom/huanju/ssp/sdk/inf/LockScreenAdListener;Ljava/lang/String;IZ)V

    .line 74
    :cond_0
    return-void
.end method

.method public setExtend(Ljava/util/Map;)V
    .locals 1
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
    .line 120
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    if-eqz v0, :cond_0

    .line 123
    :cond_0
    return-void
.end method

.method public setRequestNetType(I)V
    .locals 2
    .param p1, "netType"    # I

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLockAdManager  setmNetType  netType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mRequestNetType:I

    .line 102
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/sdk/inf/LockScreenAd;->setNetType(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->mLockScreenAd:Lcom/huanju/ssp/sdk/inf/LockScreenAd;

    if-eqz v0, :cond_0

    .line 118
    :cond_0
    return-void
.end method
