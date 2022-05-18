.class abstract Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.super Landroid/os/AsyncTask;
.source "ServiceAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcn/nubia/accountsdk/aidl/INBAccountService;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->doInBackground([Lcn/nubia/accountsdk/aidl/INBAccountService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcn/nubia/accountsdk/aidl/INBAccountService;)Ljava/lang/Void;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "service api processing now!"

    .line 13
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V
.end method
