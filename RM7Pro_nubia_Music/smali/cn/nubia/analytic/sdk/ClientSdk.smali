.class public Lcn/nubia/analytic/sdk/ClientSdk;
.super Ljava/lang/Object;
.source "ClientSdk.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcn/nubia/analytic/sdk/ClientSdk;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcn/nubia/analytic/sdk/ClientSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/analytic/sdk/ClientSdk;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/analytic/sdk/ClientSdk;->sInstance:Lcn/nubia/analytic/sdk/ClientSdk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    .line 25
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    iget-object v1, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/analytic/sdk/ClientSdk;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcn/nubia/analytic/sdk/ClientSdk;->sInstance:Lcn/nubia/analytic/sdk/ClientSdk;

    if-nez v0, :cond_0

    .line 34
    const-class v1, Lcn/nubia/analytic/sdk/ClientSdk;

    monitor-enter v1

    .line 35
    :try_start_0
    new-instance v0, Lcn/nubia/analytic/sdk/ClientSdk;

    invoke-direct {v0, p0}, Lcn/nubia/analytic/sdk/ClientSdk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/analytic/sdk/ClientSdk;->sInstance:Lcn/nubia/analytic/sdk/ClientSdk;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    sget-object v0, Lcn/nubia/analytic/sdk/ClientSdk;->sInstance:Lcn/nubia/analytic/sdk/ClientSdk;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public disconnect(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v0, p1}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->disconnect(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public isServiceAvailable()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->isServiceAvailable()Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reconnect with isServiceAvailable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/analytic/sdk/ClientSdk;->isServiceAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcn/nubia/analytic/sdk/ClientSdk;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->reconnect()V

    .line 81
    :cond_0
    return-void
.end method

.method public send(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 4

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcn/nubia/analytic/sdk/ClientSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send data type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "appInfoData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fetchReportStrategy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    const-string v1, "fetchSystemTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fetchWhiteSheet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    new-instance v0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;

    invoke-direct {v0, p1, p2}, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;-><init>(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    .line 64
    :goto_1
    iget-object v1, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->sendRequest(Lcn/nubia/trafficcontrol/service/ServiceRequest;)Z

    move-result v0

    .line 66
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 67
    const/4 v1, -0x1

    invoke-interface {p2, v1}, Lcn/nubia/analytic/interfaces/RemoteDataCallback;->onException(I)V

    .line 68
    sget-object v1, Lcn/nubia/analytic/sdk/ClientSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isServiceDie:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",callback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Lcn/nubia/trafficcontrol/service/CommonInfoAsyncRequest;

    invoke-direct {v0, p1, p2}, Lcn/nubia/trafficcontrol/service/CommonInfoAsyncRequest;-><init>(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    goto :goto_1
.end method

.method public setIsSystemUid(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ClientSdk;->mServiceRequestHandler:Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;

    invoke-virtual {v0, p1}, Lcn/nubia/trafficcontrol/binder/ServiceRequestHandler;->setIsSystemUid(Z)V

    .line 90
    return-void
.end method
