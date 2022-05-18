.class public Lcn/nubia/cloud/accounts/AccountNotFountException;
.super Lcn/nubia/cloud/common/RequestException;
.source "AccountNotFountException.java"


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/ErrorCode;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    sget-object p1, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    sget-object p1, Lcn/nubia/cloud/common/ErrorCode;->ACCOUNT_NOT_EXISTS:Lcn/nubia/cloud/common/ErrorCode;

    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/RequestException;-><init>(Lcn/nubia/cloud/common/ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/RequestException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
