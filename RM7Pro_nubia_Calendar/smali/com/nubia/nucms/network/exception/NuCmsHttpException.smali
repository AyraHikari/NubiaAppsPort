.class public Lcom/nubia/nucms/network/exception/NuCmsHttpException;
.super Ljava/lang/Exception;
.source "NuCmsHttpException.java"


# static fields
.field public static printStackTrace:Z = false

.field private static final serialVersionUID:J = -0x7725a1a929bef020L


# instance fields
.field protected handled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->printStackTrace:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    .line 36
    return-void
.end method


# virtual methods
.method public isHandled()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    return v0
.end method

.method public setHandled(Z)Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .locals 0
    .param p1, "handled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nubia/nucms/network/exception/NuCmsHttpException;",
            ">(Z)TT;"
        }
    .end annotation

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    .line 21
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpException{handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nubia/nucms/network/exception/NuCmsHttpException;->handled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method
