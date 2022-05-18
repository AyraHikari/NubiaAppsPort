.class final enum Lcom/nubia/nucms/api/NuCmsCallbackError;
.super Ljava/lang/Enum;
.source "NuCmsCallbackError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/api/NuCmsCallbackError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum API_SHUTDOWN:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum JSON_CONVERT_FAILED:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum NETWORK_NOT_READ:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum PARSE_SERVER_EXCEPTION_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum REPONSE_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum SDK_NOT_INIT:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum SPORTS_DATE_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

.field public static final enum STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "STATUS_NULL"

    const/16 v2, -0x64

    const-string v3, "response\'s httpstatus is null!"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 6
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "JSON_CONVERT_FAILED"

    const/16 v2, -0x65

    const-string v3, "json convert failed!"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->JSON_CONVERT_FAILED:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 7
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "SDK_NOT_INIT"

    const/16 v2, -0x66

    const-string v3, "sdk not init!"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->SDK_NOT_INIT:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 8
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "NETWORK_NOT_READ"

    const/16 v2, -0x67

    const-string v3, "network is not ready!"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->NETWORK_NOT_READ:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 9
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "PARSE_SERVER_EXCEPTION_ERROR"

    const/16 v2, -0x68

    const-string v3, "server code field parse error!"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->PARSE_SERVER_EXCEPTION_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 10
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "REPONSE_NULL"

    const/4 v2, 0x5

    const/16 v3, -0x69

    const-string v4, "response bean is null!"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->REPONSE_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 11
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "API_SHUTDOWN"

    const/4 v2, 0x6

    const/16 v3, -0x6a

    const-string v4, "this api is closed by yourserf:"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->API_SHUTDOWN:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 12
    new-instance v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    const-string v1, "SPORTS_DATE_ERROR"

    const/4 v2, 0x7

    const/16 v3, -0x6b

    const-string v4, "request sports,but date format error! Regex:yyyy-MM-dd."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nubia/nucms/api/NuCmsCallbackError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->SPORTS_DATE_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nubia/nucms/api/NuCmsCallbackError;

    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->JSON_CONVERT_FAILED:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->SDK_NOT_INIT:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->NETWORK_NOT_READ:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nubia/nucms/api/NuCmsCallbackError;->PARSE_SERVER_EXCEPTION_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->REPONSE_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->API_SHUTDOWN:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->SPORTS_DATE_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->$VALUES:[Lcom/nubia/nucms/api/NuCmsCallbackError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/nubia/nucms/api/NuCmsCallbackError;->code:I

    .line 18
    iput-object p4, p0, Lcom/nubia/nucms/api/NuCmsCallbackError;->msg:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/api/NuCmsCallbackError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/api/NuCmsCallbackError;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/api/NuCmsCallbackError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nubia/nucms/api/NuCmsCallbackError;->$VALUES:[Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v0}, [Lcom/nubia/nucms/api/NuCmsCallbackError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/api/NuCmsCallbackError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/nubia/nucms/api/NuCmsCallbackError;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsCallbackError;->msg:Ljava/lang/String;

    return-object v0
.end method
