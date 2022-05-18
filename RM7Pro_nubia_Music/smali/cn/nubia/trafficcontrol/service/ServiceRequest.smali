.class public abstract Lcn/nubia/trafficcontrol/service/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

.field private mDataTransfer:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;


# direct methods
.method public constructor <init>(Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/trafficcontrol/service/ServiceRequest;->mCallback:Lcn/nubia/analytic/interfaces/RemoteDataCallback;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract processRequest(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/ServiceRequest;->mDataTransfer:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    invoke-virtual {p0, v0}, Lcn/nubia/trafficcontrol/service/ServiceRequest;->processRequest(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V

    .line 34
    return-void
.end method

.method public setDataTransfer(Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/trafficcontrol/service/ServiceRequest;->mDataTransfer:Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    .line 25
    return-void
.end method
