.class public Lcn/nubia/weather/utils/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;,
        Lcn/nubia/weather/utils/NubiaTrackManager$SingleInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

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
    sput-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 25
    sput-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcn/nubia/weather/utils/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/utils/NubiaTrackManager$1;-><init>(Lcn/nubia/weather/utils/NubiaTrackManager;)V

    iput-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/utils/NubiaTrackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/weather/utils/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/utils/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/utils/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/utils/NubiaTrackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->isConn:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/weather/utils/NubiaTrackManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/weather/utils/NubiaTrackManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/weather/utils/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/weather/utils/NubiaTrackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/utils/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/utils/NubiaTrackManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindServiceInvoked()V
    .locals 5

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.owlsystem"

    const-string v4, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    :try_start_0
    iget-object v2, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcn/nubia/weather/utils/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/weather/utils/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 129
    sget-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaTrackEvent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 132
    sget-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v1, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;-><init>(Lcn/nubia/weather/utils/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    .line 135
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 264
    :try_start_0
    const-string v2, "pkgName"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 266
    sget-object v2, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 267
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    sget-object v2, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    sget-object v2, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 170
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 171
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v2}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 241
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 246
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 247
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 248
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v2}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 191
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 196
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 197
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v2}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "pkgName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 221
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 222
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 223
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v2}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    sget-object v3, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    sget-object v4, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackHandler:Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/weather/utils/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindServiceInvoked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    sget-object v1, Lcn/nubia/weather/utils/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->isConn:Z

    if-nez v0, :cond_1

    .line 146
    monitor-exit v1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mService:Landroid/os/Messenger;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->isConn:Z

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    iput-object v2, p0, Lcn/nubia/weather/utils/NubiaTrackManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
