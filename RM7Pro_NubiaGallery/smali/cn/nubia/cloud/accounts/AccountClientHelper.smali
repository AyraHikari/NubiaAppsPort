.class public Lcn/nubia/cloud/accounts/AccountClientHelper;
.super Ljava/lang/Object;
.source "AccountClientHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccountClient(Landroid/content/Context;Lcn/nubia/cloud/common/dev/ServerType;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;
    .locals 8

    .line 13
    invoke-static {}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->release()V

    .line 14
    sget-object v0, Lcn/nubia/cloud/accounts/AccountClientHelper$1;->$SwitchMap$cn$nubia$cloud$common$dev$ServerType:[I

    invoke-virtual {p1}, Lcn/nubia/cloud/common/dev/ServerType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 23
    sget-boolean v6, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    const-string v2, "SID-nym5FSbZfgiP"

    const-string v3, "12FCK4nZq70Ubpvo"

    const-string v7, "nubia"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 17
    sget-boolean v5, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    const-string v1, "B6F9BK25ZKjphKyo"

    const-string v2, "GeOQy0fbHY1kru4Z"

    const-string v6, "nubia"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p0

    return-object p0
.end method
