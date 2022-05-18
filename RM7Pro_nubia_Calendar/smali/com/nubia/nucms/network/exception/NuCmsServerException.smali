.class public final enum Lcom/nubia/nucms/network/exception/NuCmsServerException;
.super Ljava/lang/Enum;
.source "NuCmsServerException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/network/exception/NuCmsServerException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/network/exception/NuCmsServerException;

.field public static final enum RedirectTooMuch:Lcom/nubia/nucms/network/exception/NuCmsServerException;

.field public static final enum ServerInnerError:Lcom/nubia/nucms/network/exception/NuCmsServerException;

.field public static final enum ServerRejectClient:Lcom/nubia/nucms/network/exception/NuCmsServerException;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public chiReason:Ljava/lang/String;

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    const-string v1, "ServerInnerError"

    const-string v2, "Server Inner Exception"

    const-string v3, "\u670d\u52a1\u5668\u5185\u90e8\u5f02\u5e38"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsServerException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerInnerError:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 7
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    const-string v1, "ServerRejectClient"

    const-string v2, "Server Reject Client Exception"

    const-string v3, "\u670d\u52a1\u5668\u62d2\u7edd\u6216\u65e0\u6cd5\u63d0\u4f9b\u670d\u52a1"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsServerException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerRejectClient:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 9
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    const-string v1, "RedirectTooMuch"

    const-string v2, "Server RedirectTooMuch"

    const-string v3, "\u91cd\u5b9a\u5411\u6b21\u6570\u8fc7\u591a"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsServerException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->RedirectTooMuch:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nubia/nucms/network/exception/NuCmsServerException;

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerInnerError:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsServerException;->ServerRejectClient:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsServerException;->RedirectTooMuch:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsServerException;

    .line 11
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "chiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->reason:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->chiReason:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/network/exception/NuCmsServerException;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/network/exception/NuCmsServerException;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsServerException;

    invoke-virtual {v0}, [Lcom/nubia/nucms/network/exception/NuCmsServerException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/network/exception/NuCmsServerException;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsServerException;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsServerException;->chiReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
