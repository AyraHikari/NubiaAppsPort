.class public Lcom/zte/statistics/sdk/comm/SendProxy;
.super Ljava/lang/Object;
.source "SendProxy.java"


# static fields
.field private static mCtx:Landroid/content/Context;

.field private static mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

.field private static myBinder:Lcom/zte/zms/INetProxy;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/zte/statistics/sdk/comm/SendProxy$1;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/comm/SendProxy$1;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.zte.aliveupdate"

    const-string v1, "com.zte.zms.netproxy.NetProxyAidlBinder"

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 60
    sput-object p1, Lcom/zte/statistics/sdk/comm/SendProxy;->mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/zte/statistics/sdk/comm/SendProxy;)Lcom/zte/statistics/sdk/comm/SendProxy;
    .locals 0

    .line 16
    sput-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/zms/INetProxy;)Lcom/zte/zms/INetProxy;
    .locals 0

    .line 16
    sput-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    return-object p0
.end method

.method public static getInstance()Lcom/zte/statistics/sdk/comm/SendProxy;
    .locals 1

    .line 32
    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;
    .locals 1

    .line 22
    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    if-nez v0, :cond_0

    .line 23
    sput-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->mCtx:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/zte/statistics/sdk/comm/SendProxy;

    invoke-direct {v0, p0}, Lcom/zte/statistics/sdk/comm/SendProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 26
    :cond_0
    sget-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->mInstance:Lcom/zte/statistics/sdk/comm/SendProxy;

    return-object p0
.end method


# virtual methods
.method public asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/zte/zms/INetProxy;->asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 65
    sget-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    if-eqz p0, :cond_0

    .line 66
    sget-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->mCtx:Landroid/content/Context;

    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public getMyBinder()Lcom/zte/zms/INetProxy;
    .locals 0

    .line 29
    sget-object p0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    return-object p0
.end method

.method public syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/zte/statistics/sdk/comm/SendProxy;->myBinder:Lcom/zte/zms/INetProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/zms/INetProxy;->syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
