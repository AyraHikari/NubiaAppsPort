.class public Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;
.super Lcn/nubia/cloud/net/PostSyncRequest;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/net/PostSyncRequest<",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_UNIQUE_CODE:Ljava/lang/String; = "unique_code"

.field private static final URL_CHECK_CODE:Ljava/lang/String; = "/user/check_code.zte"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/http/RequestEntity;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/http/RequestEntity;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/cloud/net/PostSyncRequest;-><init>(Ljava/lang/String;Lcom/android/volley/http/RequestEntity;Lcom/android/volley/toolbox/RequestFuture;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/cloud/accounts/DeviceInfo;)Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;
    .locals 2

    .line 31
    new-instance v0, Lcom/android/volley/http/StringEntity;

    invoke-direct {v0}, Lcom/android/volley/http/StringEntity;-><init>()V

    const-string v1, "unique_code"

    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/android/volley/http/StringEntity;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcn/nubia/cloud/accounts/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device"

    invoke-virtual {v0, p2, p1}, Lcom/android/volley/http/StringEntity;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object p1

    .line 35
    new-instance p2, Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/cloud/common/dev/CloudConfigCtrl;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/user/check_code.zte"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v0, p1}, Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;-><init>(Ljava/lang/String;Lcom/android/volley/http/RequestEntity;Lcom/android/volley/toolbox/RequestFuture;)V

    return-object p2
.end method


# virtual methods
.method protected handlerResponse(Ljava/lang/String;)Lcn/nubia/cloud/utils/NBResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/ParseError;
        }
    .end annotation

    .line 43
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    new-instance p1, Lcn/nubia/cloud/utils/NBResponse;

    sget-object v0, Lcn/nubia/cloud/common/ErrorCode;->SERVER_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/ErrorCode;->getCode()I

    move-result v0

    sget-object v1, Lcn/nubia/cloud/common/ErrorCode;->SERVER_ERROR:Lcn/nubia/cloud/common/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/common/ErrorCode;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method protected bridge synthetic handlerResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/ParseError;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/LoginRequest;->handlerResponse(Ljava/lang/String;)Lcn/nubia/cloud/utils/NBResponse;

    move-result-object p1

    return-object p1
.end method
