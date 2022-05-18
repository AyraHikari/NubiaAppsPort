.class public final enum Lcom/nubia/nucms/network/exception/NuCmsNetException;
.super Ljava/lang/Enum;
.source "NuCmsNetException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/network/exception/NuCmsNetException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/network/exception/NuCmsNetException;

.field public static final enum NetworkDisabled:Lcom/nubia/nucms/network/exception/NuCmsNetException;

.field public static final enum NetworkNotAvilable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

.field public static final enum NetworkUnreachable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

.field public static final enum NetworkUnstable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public chiReason:Ljava/lang/String;

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    const-string v1, "NetworkNotAvilable"

    const-string v2, "Network Is Not Avilable"

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsNetException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkNotAvilable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 7
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    const-string v1, "NetworkUnstable"

    const-string v2, "Network Is Unstable"

    const-string v3, "\u7f51\u7edc\u4e0d\u7a33\u5b9a"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsNetException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnstable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 8
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    const-string v1, "NetworkDisabled"

    const-string v2, "Current Network Is Disabled By Your Setting"

    const-string v3, "\u5df2\u7981\u7528\u8be5\u7f51\u7edc\u7c7b\u578b"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsNetException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkDisabled:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 9
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    const-string v1, "NetworkUnreachable"

    const-string v2, "Network is unreachable"

    const-string v3, "\u7f51\u7edc\u65e0\u6cd5\u8bbf\u95ee"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsNetException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnreachable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nubia/nucms/network/exception/NuCmsNetException;

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkNotAvilable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnstable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkDisabled:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnreachable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsNetException;

    .line 11
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->TAG:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->reason:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->chiReason:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/network/exception/NuCmsNetException;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/network/exception/NuCmsNetException;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-virtual {v0}, [Lcom/nubia/nucms/network/exception/NuCmsNetException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/network/exception/NuCmsNetException;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsNetException;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsNetException;->chiReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
