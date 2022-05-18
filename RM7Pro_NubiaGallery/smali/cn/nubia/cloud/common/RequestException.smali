.class public Lcn/nubia/cloud/common/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# instance fields
.field private final mErrorCode:Lcn/nubia/cloud/common/ErrorCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcn/nubia/cloud/common/ErrorCode;->codeOf(I)Lcn/nubia/cloud/common/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/RequestException;->mErrorCode:Lcn/nubia/cloud/common/ErrorCode;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/ErrorCode;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/cloud/common/RequestException;->mErrorCode:Lcn/nubia/cloud/common/ErrorCode;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/NBResponse;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Lcn/nubia/cloud/common/NBResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcn/nubia/cloud/common/NBResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/cloud/common/ErrorCode;->codeOf(I)Lcn/nubia/cloud/common/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/RequestException;->mErrorCode:Lcn/nubia/cloud/common/ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lcn/nubia/cloud/common/ErrorCode;->UNKNOWN_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    iput-object p1, p0, Lcn/nubia/cloud/common/RequestException;->mErrorCode:Lcn/nubia/cloud/common/ErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcn/nubia/cloud/common/ErrorCode;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/cloud/common/RequestException;->mErrorCode:Lcn/nubia/cloud/common/ErrorCode;

    return-object v0
.end method
