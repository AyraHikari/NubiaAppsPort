.class public Lcn/nubia/touping/Utils/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;,
        Lcn/nubia/touping/Utils/NubiaTrackManager$SingleInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

.field static sTrackThread:Landroid/os/HandlerThread;


# instance fields
.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 25
    sput-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcn/nubia/touping/Utils/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/NubiaTrackManager$1;-><init>(Lcn/nubia/touping/Utils/NubiaTrackManager;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/Utils/NubiaTrackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/touping/Utils/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/touping/Utils/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/touping/Utils/NubiaTrackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->isConn:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/touping/Utils/NubiaTrackManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/touping/Utils/NubiaTrackManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/touping/Utils/NubiaTrackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/touping/Utils/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindServiceInvoked()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 115
    :cond_0
    return-void
.end method

.method public static getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/touping/Utils/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 125
    sget-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaTrackEvent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 128
    sget-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;-><init>(Lcn/nubia/touping/Utils/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    .line 131
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 242
    const-string v1, "pkgName"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v1, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 244
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 246
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 165
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 167
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    const/4 v4, 0x2

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 228
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 230
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 186
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 187
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    const/4 v4, 0x2

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 207
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 208
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 209
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    sget-object v2, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/touping/Utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void
.end method

.method public unbindServiceInvoked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    sget-object v1, Lcn/nubia/touping/Utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->isConn:Z

    if-nez v0, :cond_1

    .line 142
    monitor-exit v1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->isConn:Z

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    iput-object v2, p0, Lcn/nubia/touping/Utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
