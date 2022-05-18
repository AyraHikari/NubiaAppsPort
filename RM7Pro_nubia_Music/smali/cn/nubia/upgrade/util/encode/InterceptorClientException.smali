.class public Lcn/nubia/upgrade/util/encode/InterceptorClientException;
.super Ljava/lang/Exception;
.source "InterceptorClientException.java"


# static fields
.field public static final EXCEPTION_ERROR_ENCODE:I = 0x2

.field public static final EXCEPTION_FORBIDDEN_TOKEN:I = 0x1

.field public static final EXCEPTION_OVER_TIME:I = 0x3

.field public static final EXCEPTION_REQUEST_ERROR:I = 0x4

.field private static final errorMsg:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x3fec81a22e088d47L


# instance fields
.field private errorCode:I

.field private final resultMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7528\u6237\u53c2\u6570\u4e2d\u5305\u542b\u4e86\u4e0d\u5141\u8bb8\u5e26\u6709\u7684\u53c2\u6570"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8fd4\u56de\u7684\u52a0\u5bc6\u7ed3\u679c\u662f\u975e\u6cd5\u7684"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8fc7\u671f\u7684\u8fd4\u56de\u7ed3\u679c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u83b7\u53d6\u7684\u8fd4\u56de\u7ed3\u679c\u6709\u8bef"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorMsg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorMsg:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorCode:I

    .line 22
    iput p1, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorCode:I

    .line 23
    iput-object p2, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->resultMsg:Ljava/lang/String;

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
