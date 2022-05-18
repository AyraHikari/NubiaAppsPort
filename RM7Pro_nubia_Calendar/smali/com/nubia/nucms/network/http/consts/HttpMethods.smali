.class public final enum Lcom/nubia/nucms/network/http/consts/HttpMethods;
.super Ljava/lang/Enum;
.source "HttpMethods.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/network/http/consts/HttpMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Delete:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Head:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Options:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Patch:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Post:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Put:Lcom/nubia/nucms/network/http/consts/HttpMethods;

.field public static final enum Trace:Lcom/nubia/nucms/network/http/consts/HttpMethods;


# instance fields
.field private methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Get"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 12
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Head"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Head:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 16
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Trace"

    const-string v2, "TRACE"

    invoke-direct {v0, v1, v6, v2}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Trace:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 20
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Options"

    const-string v2, "OPTIONS"

    invoke-direct {v0, v1, v7, v2}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Options:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 24
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Delete"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v8, v2}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Delete:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 29
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Put"

    const/4 v2, 0x5

    const-string v3, "PUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Put:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 33
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Post"

    const/4 v2, 0x6

    const-string v3, "POST"

    invoke-direct {v0, v1, v2, v3}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Post:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 37
    new-instance v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    const-string v1, "Patch"

    const/4 v2, 0x7

    const-string v3, "PATCH"

    invoke-direct {v0, v1, v2, v3}, Lcom/nubia/nucms/network/http/consts/HttpMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Patch:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nubia/nucms/network/http/consts/HttpMethods;

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Head:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Trace:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Options:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Delete:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Put:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Post:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Patch:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->$VALUES:[Lcom/nubia/nucms/network/http/consts/HttpMethods;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->methodName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/network/http/consts/HttpMethods;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->$VALUES:[Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {v0}, [Lcom/nubia/nucms/network/http/consts/HttpMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/network/http/consts/HttpMethods;

    return-object v0
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->methodName:Ljava/lang/String;

    return-object v0
.end method
