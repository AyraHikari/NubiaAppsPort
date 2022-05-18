.class public Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;
.super Lcom/nubia/nucms/network/exception/NuCmsHttpException;
.source "NuCmsHttpServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x334a6e7fb6220269L


# instance fields
.field private exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

.field private status:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;


# direct methods
.method public constructor <init>(Lcom/nubia/nucms/network/exception/NuCmsServerException;)V
    .locals 1
    .param p1, "e"    # Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/nubia/nucms/network/exception/NuCmsServerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->status:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    .line 25
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerInnerError:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    iput-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerRejectClient:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    iput-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    goto :goto_0
.end method


# virtual methods
.method public getExceptionType()Lcom/nubia/nucms/network/exception/NuCmsServerException;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    return-object v0
.end method

.method public getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->status:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    return-object v0
.end method

.method public setExceptionType(Lcom/nubia/nucms/network/exception/NuCmsServerException;)V
    .locals 0
    .param p1, "exceptionType"    # Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;->status:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
