.class public final enum Lcom/nubia/nucms/network/exception/NuCmsClientException;
.super Ljava/lang/Enum;
.source "NuCmsClientException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/network/exception/NuCmsClientException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field public static final enum ContextNeeded:Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field public static final enum IllegalScheme:Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field public static final enum PermissionDenied:Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field public static final enum RequestIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field public static final enum SomeOtherException:Lcom/nubia/nucms/network/exception/NuCmsClientException;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UrlIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;


# instance fields
.field public chiReason:Ljava/lang/String;

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "UrlIsNull"

    const-string v2, "Url is Null!"

    const-string v3, "Url \u4e3a\u7a7a!"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->UrlIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 5
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "RequestIsNull"

    const-string v2, "Reuqest is Null"

    const-string v3, "\u8bf7\u6c42\u6a21\u578b\u662f\u7a7a!"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->RequestIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 6
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "IllegalScheme"

    const-string v2, "illegal scheme!"

    const-string v3, "\u975e\u6cd5\u7684Scheme"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->IllegalScheme:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 7
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "ContextNeeded"

    const-string v2, "(Detect or Disable Network, etc) Need Context."

    const-string v3, "\uff08\u63a2\u6d4b\u548c\u7981\u7528\u7f51\u7edc\u7b49\uff09\u9700\u8981 Context"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->ContextNeeded:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 8
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "PermissionDenied"

    const-string v2, "Missing NETWORK-ACCESS Permission in Manifest?"

    const-string v3, "\u672a\u83b7\u53d6\u8bbf\u95ee\u7f51\u7edc\u6216SD\u5361\u6743\u9650"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->PermissionDenied:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 9
    new-instance v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    const-string v1, "SomeOtherException"

    const/4 v2, 0x5

    const-string v3, "Client Exception"

    const-string v4, "\u5ba2\u6237\u7aef\u53d1\u751f\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nubia/nucms/network/exception/NuCmsClientException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->SomeOtherException:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nubia/nucms/network/exception/NuCmsClientException;

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->UrlIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->RequestIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->IllegalScheme:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->ContextNeeded:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->PermissionDenied:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/nucms/network/exception/NuCmsClientException;->SomeOtherException:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsClientException;

    .line 11
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->TAG:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->reason:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->chiReason:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/network/exception/NuCmsClientException;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/network/exception/NuCmsClientException;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->$VALUES:[Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-virtual {v0}, [Lcom/nubia/nucms/network/exception/NuCmsClientException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/network/exception/NuCmsClientException;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nubia/nucms/network/exception/NuCmsClientException;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/exception/NuCmsClientException;->chiReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
