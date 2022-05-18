.class public Lcom/android/calculator2/ZteTrackManager;
.super Ljava/lang/Object;
.source "ZteTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/ZteTrackManager$ZLog;,
        Lcom/android/calculator2/ZteTrackManager$TrackHandler;,
        Lcom/android/calculator2/ZteTrackManager$ZteTrackManagerInstance;
    }
.end annotation


# static fields
.field private static final CLS:Ljava/lang/String; = "com.zte.analytics.datacollection.DataCollectionService"

.field private static final DEBUG:Z = false

.field private static final ENABLE:Z

.field private static final PKG:Ljava/lang/String; = "com.zte.analytics"

.field private static final TAG:Ljava/lang/String; = "ZteTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

.field static sTrackThread:Landroid/os/HandlerThread;


# instance fields
.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZTE_FEATURE_MINDSYNC_ANALYTICS"

    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/calculator2/ZteTrackManager;->ENABLE:Z

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 34
    sput-object v0, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/calculator2/ZteTrackManager$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/ZteTrackManager$1;-><init>(Lcom/android/calculator2/ZteTrackManager;)V

    iput-object v0, p0, Lcom/android/calculator2/ZteTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/ZteTrackManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/calculator2/ZteTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/calculator2/ZteTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/calculator2/ZteTrackManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/android/calculator2/ZteTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Message;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/calculator2/ZteTrackManager;->sendToService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calculator2/ZteTrackManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/calculator2/ZteTrackManager;->unbindServiceInvoked()V

    return-void
.end method

.method private bindServiceInvoked()V
    .locals 4

    const-string v0, "ZteTrackManager"

    const-string v1, "bindServiceInvoked"

    .line 100
    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.analytics"

    const-string v3, "com.zte.analytics.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/calculator2/ZteTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/calculator2/ZteTrackManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ZteTrackManager"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindServiceInvoked failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    const-string v0, "com.zte.feature.Feature"

    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    .line 167
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 168
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 171
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ZteTrackManager"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke FeatureClass.getBoolean()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static getInstance()Lcom/android/calculator2/ZteTrackManager;
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager$ZteTrackManagerInstance;->access$100()Lcom/android/calculator2/ZteTrackManager;

    move-result-object v0

    return-object v0
.end method

.method private sendToService(Landroid/os/Message;)V
    .locals 4

    const-string v0, "ZteTrackManager"

    const-string v1, "sendToService"

    .line 136
    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ZteTrackManager"

    const-string p1, "isUserAMonkey, not sendToService"

    .line 139
    invoke-static {p0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    iget-boolean v1, p0, Lcom/android/calculator2/ZteTrackManager;->isConn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/ZteTrackManager;->mService:Landroid/os/Messenger;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "ZteTrackManager"

    const-string v2, "need bindServiceInvoked"

    .line 146
    invoke-static {v1, v2}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/calculator2/ZteTrackManager;->bindServiceInvoked()V

    .line 148
    sget-object v1, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 151
    :cond_2
    iget-boolean v1, p0, Lcom/android/calculator2/ZteTrackManager;->isConn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calculator2/ZteTrackManager;->mService:Landroid/os/Messenger;

    if-eqz v1, :cond_3

    const-string v1, "ZteTrackManager"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 155
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 157
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unbindServiceInvoked()V
    .locals 2

    const-string v0, "ZteTrackManager"

    const-string v1, "unbindServiceInvoked"

    .line 121
    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lcom/android/calculator2/ZteTrackManager;->isConn:Z

    if-nez v1, :cond_0

    .line 124
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/android/calculator2/ZteTrackManager;->mService:Landroid/os/Messenger;

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/android/calculator2/ZteTrackManager;->isConn:Z

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/android/calculator2/ZteTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/calculator2/ZteTrackManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ZteTrackManager"

    const-string v1, "init"

    .line 189
    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-boolean v0, Lcom/android/calculator2/ZteTrackManager;->ENABLE:Z

    if-nez v0, :cond_0

    const-string p0, "ZteTrackManager"

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, init return."

    .line 191
    invoke-static {p0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/android/calculator2/ZteTrackManager;->mContext:Landroid/content/Context;

    .line 196
    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    if-nez p1, :cond_1

    .line 197
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ZteTrackEvent"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 199
    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance p1, Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    sget-object v0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;-><init>(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    :cond_1
    return-void
.end method

.method public sendEvent(Landroid/os/Bundle;)V
    .locals 2

    const-string p0, "ZteTrackManager"

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-boolean p0, Lcom/android/calculator2/ZteTrackManager;->ENABLE:Z

    if-nez p0, :cond_0

    const-string p0, "ZteTrackManager"

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, sendEvent return."

    .line 225
    invoke-static {p0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    if-nez p0, :cond_1

    const-string p0, "ZteTrackManager"

    const-string p1, "sTrackHandler is null , can not sendEvent"

    .line 230
    invoke-static {p0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_1
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->removeMessages(I)V

    .line 235
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 236
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 237
    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackHandler:Lcom/android/calculator2/ZteTrackManager$TrackHandler;

    invoke-virtual {p1, v0}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calculator2/ZteTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
