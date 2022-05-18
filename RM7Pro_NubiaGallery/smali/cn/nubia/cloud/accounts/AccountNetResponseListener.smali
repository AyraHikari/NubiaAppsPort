.class public Lcn/nubia/cloud/accounts/AccountNetResponseListener;
.super Ljava/lang/Object;
.source "AccountNetResponseListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

.field private final mWaitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mWaitLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

    return-object v0

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iput-object p1, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

    .line 16
    iget-object p1, p0, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/AccountNetResponseListener;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
