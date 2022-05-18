.class public Lcn/nubia/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/common/NetworkConnectivityListener$State;,
        Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcn/nubia/common/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->UNKNOWN:Lcn/nubia/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mState:Lcn/nubia/common/NetworkConnectivityListener$State;

    .line 129
    new-instance v0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcn/nubia/common/NetworkConnectivityListener;Lcn/nubia/common/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReceiver:Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/common/NetworkConnectivityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/common/NetworkConnectivityListener;)Lcn/nubia/common/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mState:Lcn/nubia/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/common/NetworkConnectivityListener;Lcn/nubia/common/NetworkConnectivityListener$State;)Lcn/nubia/common/NetworkConnectivityListener$State;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p1, "x1"    # Lcn/nubia/common/NetworkConnectivityListener$State;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mState:Lcn/nubia/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcn/nubia/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcn/nubia/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcn/nubia/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcn/nubia/common/NetworkConnectivityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcn/nubia/common/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mState:Lcn/nubia/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_0

    .line 138
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReceiver:Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReceiver:Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mIsFailover:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
