.class public Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;
.super Lcom/nubia/nucms/network/exception/NuCmsHttpException;
.source "NuCmsHttpNetException.java"


# static fields
.field private static final serialVersionUID:J = 0x44dbe14324e9cdcdL


# instance fields
.field private exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;


# direct methods
.method public constructor <init>(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V
    .locals 1
    .param p1, "netExp"    # Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/nubia/nucms/network/exception/NuCmsNetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nubia/nucms/network/exception/NuCmsHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnstable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    iput-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 23
    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/nubia/nucms/network/exception/NuCmsNetException;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    return-object v0
.end method

.method public setExceptionType(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V
    .locals 0
    .param p1, "exceptionType"    # Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;->exceptionType:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/exception/NuCmsNetException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
