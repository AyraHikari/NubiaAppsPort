.class public Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;,
        Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$SingleInstance;
    }
.end annotation


# static fields
.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

.field static sTrackThread:Landroid/os/HandlerThread;


# instance fields
.field public isBind:Z

.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;-><init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isConn:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private bindServiceInvoked()V
    .locals 4

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;
    .locals 1

    .line 32
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 128
    iput-object p1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 129
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    if-nez p1, :cond_0

    .line 130
    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "NubiaTrackEvent"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;-><init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pkgName"

    .line 246
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 248
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 249
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    sget-object p2, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 169
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 171
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 228
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 232
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    sget-object p3, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 187
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 190
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    sget-object p3, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 207
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 208
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 211
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    sget-object p3, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    sget-object p1, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public unbindServiceInvoked()V
    .locals 3

    .line 144
    sget-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isConn:Z

    if-nez v1, :cond_0

    .line 146
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 149
    iput-boolean v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->isConn:Z

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 152
    iget-object v2, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    iput-object v1, p0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
