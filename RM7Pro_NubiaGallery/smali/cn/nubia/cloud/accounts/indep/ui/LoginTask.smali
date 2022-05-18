.class public Lcn/nubia/cloud/accounts/indep/ui/LoginTask;
.super Lcn/nubia/cloud/utils/AsyncTaskEx;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/AsyncTaskEx<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginName:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcn/nubia/cloud/utils/AsyncTaskEx;-><init>()V

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mLoginName:Ljava/lang/String;

    .line 29
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mPassword:Ljava/lang/String;

    .line 30
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/utils/SimpleListener;

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcn/nubia/cloud/utils/NBResponse;
    .locals 2

    .line 36
    :try_start_0
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->get(Landroid/content/Context;)Lcn/nubia/cloud/accounts/NubiaAccountManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mLoginName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/accounts/NubiaAccountManager;->requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/DeviceInfo$Builder;->build(Landroid/content/Context;)Lcn/nubia/cloud/accounts/DeviceInfo;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;->create(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/cloud/accounts/DeviceInfo;)Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/cloud/common/NBHttpClient;->defaultClient(Landroid/content/Context;)Lcn/nubia/cloud/common/NBHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/common/NBHttpClient;->doRequest(Lcn/nubia/cloud/net/PostSyncRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;
    :try_end_0
    .catch Lcn/nubia/cloud/common/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Lcn/nubia/cloud/common/RequestException;->printStackTrace()V

    .line 45
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/RequestException;->getErrorCode()Lcn/nubia/cloud/common/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/cloud/common/RequestException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->doInBackground([Ljava/lang/Void;)Lcn/nubia/cloud/utils/NBResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 11

    .line 52
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcn/nubia/cloud/utils/NBResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/cloud/utils/NBResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mContext:Landroid/content/Context;

    const-string v2, "cloud_account"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "username"

    .line 58
    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nickname"

    .line 60
    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mobile"

    .line 62
    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "email"

    .line 64
    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cloud_token"

    .line 66
    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "expires_in"

    .line 67
    invoke-virtual {p1, v4, v3}, Lcn/nubia/cloud/utils/NBResponse;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v5, v3

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v3, v5

    .line 69
    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v4, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;I)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/utils/SimpleListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->onPostExecute(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method
