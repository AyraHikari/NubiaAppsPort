.class public Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;
.super Lcom/nubia/nucms/network/exception/NuCmsHttpException;
.source "NuCmsHttpClientException.java"


# static fields
.field private static final serialVersionUID:J = -0x17bd97da02f37479L


# instance fields
.field private exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;


# direct methods
.method public constructor <init>(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V
    .locals 1
    .param p1, "clientExp"    # Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/nubia/nucms/network/exception/NuCmsClientException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->SomeOtherException:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    iput-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/nubia/nucms/network/exception/NuCmsClientException;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "type"    # Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iput-object p2, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 25
    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/nubia/nucms/network/exception/NuCmsClientException;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    return-object v0
.end method

.method public setExceptionType(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V
    .locals 0
    .param p1, "exceptionType"    # Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/exception/NuCmsClientException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
