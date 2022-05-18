.class public Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;
.super Lcn/nubia/trafficcontrol/service/ServiceRequest;
.source "NoCommonInfoSyncRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcn/nubia/trafficcontrol/service/ServiceRequest;-><init>(Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    .line 23
    iput-object p1, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mInBundle:Landroid/os/Bundle;

    .line 24
    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    invoke-interface {v1}, Lcn/nubia/analytic/interfaces/RemoteDataCallback;->onStart()V

    .line 38
    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mInBundle:Landroid/os/Bundle;

    invoke-interface {p1, v1, v0}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;->transfer(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 39
    sget-object v1, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->TAG:Ljava/lang/String;

    const-string v2, "transfer"

    invoke-static {v1, v2}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    invoke-interface {v1, v0}, Lcn/nubia/analytic/interfaces/RemoteDataCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    sget-object v0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->TAG:Ljava/lang/String;

    const-string v1, "processRequest RemoteException"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/NoCommonInfoSyncRequest;->mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcn/nubia/analytic/interfaces/RemoteDataCallback;->onException(I)V

    goto :goto_0
.end method
