.class public Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mConnectStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

.field private mIsConnecting:Z

.field private mIsServiceAvailable:Z

.field private mIsSystemUid:Z

.field private mRequestCacheHandler:Landroid/os/Handler;

.field private mRequestCacheHandlerThread:Landroid/os/HandlerThread;

.field private mWaitingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/nubia/trafficcontrol/service/ServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private recheckNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    .line 48
    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    .line 49
    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    .line 55
    iput-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    .line 57
    iput-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsSystemUid:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mConnectStartTime:J

    .line 59
    iput v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->recheckNo:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->initData()V

    .line 64
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstance() mIsServiceAvailable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsConnecting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private close()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    iput-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    .line 265
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 266
    iput-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    .line 268
    :cond_0
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 269
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close() mIsServiceAvailable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsConnecting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private connect()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 129
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect mIsConnecting:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDataTransfe:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mConnectStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->recheckNo:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 132
    :cond_0
    sget-object v2, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v3, "connect"

    invoke-static {v2, v3}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput-boolean v6, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    .line 134
    iput-wide v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mConnectStartTime:J

    .line 135
    iget v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->recheckNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->recheckNo:I

    .line 136
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 137
    const-string v0, "cn.nubia.trafficcontrol.service.TrafficControlService"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/analytic/util/AppUtil;->getSendBy(Landroid/content/Context;)I

    move-result v0

    .line 139
    if-ne v7, v0, :cond_3

    .line 140
    const-string v0, "cn.nubia.neopush"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsSystemUid:Z

    if-eqz v0, :cond_6

    .line 150
    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    .line 151
    const-string v2, "bindServiceAsUser"

    .line 152
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 153
    const-class v5, Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 154
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v3, v4

    .line 151
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 156
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 157
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    aput-object v5, v3, v4

    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_2
    :goto_1
    return-void

    .line 141
    :cond_3
    if-ne v6, v0, :cond_4

    .line 142
    const-string v0, "cn.nubia.trafficcontrol"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 143
    :cond_4
    if-ne v8, v0, :cond_5

    .line 144
    const-string v0, "cn.nubia.neopush"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 145
    :cond_5
    if-ne v9, v0, :cond_1

    .line 146
    const-string v0, "com.zte.neopush"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    .line 163
    :cond_6
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method private handleWaitingQueue()V
    .locals 3

    .prologue
    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/trafficcontrol/service/ServiceRequest;

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleWaitingQueue have no ServiceRequest"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 116
    :cond_1
    sget-object v1, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v2, "handleWaitingQueue"

    invoke-static {v1, v2}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->getInstance(Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;)Lcn/nubia/trafficcontrol/service/DisconnectTask;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->trigger(Landroid/content/Context;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    invoke-virtual {v0, v1}, Lcn/nubia/trafficcontrol/service/ServiceRequest;->setDataTransfer(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V

    .line 119
    iget-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 242
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sdk-request-cache"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    .line 243
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 244
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    .line 246
    :cond_0
    return-void
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    .line 182
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->close()V

    .line 183
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "client receive binderDied"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "disconnect unbindService"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectionFree()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isServiceAvailable()Z
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getServiceAvailable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    return v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->initData()V

    .line 225
    iput-object p2, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 227
    invoke-static {p2}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 233
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->handleWaitingQueue()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->binderDied()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 255
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    .line 257
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->close()V

    .line 258
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "reconnect After Upgrad or crash"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsConnecting:Z

    .line 104
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->initData()V

    .line 106
    :cond_0
    return-void
.end method

.method public declared-synchronized sendRequest(Lcn/nubia/trafficcontrol/service/ServiceRequest;)Z
    .locals 4

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x1

    .line 75
    :try_start_0
    sget-object v1, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsServiceAvailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-boolean v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsServiceAvailable:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "service is connected,post request to handler"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->getInstance(Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;)Lcn/nubia/trafficcontrol/service/DisconnectTask;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->trigger(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mDataTransfe:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    invoke-virtual {p1, v0}, Lcn/nubia/trafficcontrol/service/ServiceRequest;->setDataTransfer(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mRequestCacheHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    const/4 v0, 0x0

    .line 92
    :goto_1
    monitor-exit p0

    return v0

    .line 83
    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->TAG:Ljava/lang/String;

    const-string v1, "service is not connected,put request to mWaitingQueue"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->reconnect()V

    .line 90
    invoke-virtual {p0, p1}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->sendRequest(Lcn/nubia/trafficcontrol/service/ServiceRequest;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setIsSystemUid(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->mIsSystemUid:Z

    .line 274
    return-void
.end method
