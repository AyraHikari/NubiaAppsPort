.class public Lcn/nubia/deskclock/util/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;,
        Lcn/nubia/deskclock/util/NubiaTrackManager$SingleInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

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
    sput-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 25
    sput-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcn/nubia/deskclock/util/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/util/NubiaTrackManager$1;-><init>(Lcn/nubia/deskclock/util/NubiaTrackManager;)V

    iput-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/util/NubiaTrackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/deskclock/util/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/util/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/util/NubiaTrackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->isConn:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/util/NubiaTrackManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/util/NubiaTrackManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/deskclock/util/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/util/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/util/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindServiceInvoked()V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v1, "NubiaTrackManager"

    const-string v2, "bindServiceInvoked: mContext is null "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcn/nubia/deskclock/util/NubiaTrackManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/deskclock/util/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 131
    sget-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaTrackEvent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 134
    sget-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;-><init>(Lcn/nubia/deskclock/util/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    .line 137
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 248
    const-string v1, "pkgName"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v1, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 250
    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 252
    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 254
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 171
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 172
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 173
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
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

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 234
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 236
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
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

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 192
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
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

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "event"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 213
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 215
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    sget-object v2, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackHandler:Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/deskclock/util/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    return-void
.end method

.method public unbindServiceInvoked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    sget-object v1, Lcn/nubia/deskclock/util/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->isConn:Z

    if-nez v0, :cond_1

    .line 148
    monitor-exit v1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mService:Landroid/os/Messenger;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->isConn:Z

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 155
    iput-object v2, p0, Lcn/nubia/deskclock/util/NubiaTrackManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
