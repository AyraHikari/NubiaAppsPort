.class public Lcn/nubia/upgrade/model/ReportResponse;
.super Ljava/lang/Object;
.source "ReportResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportResponse"


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOK(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    :cond_0
    const-string v1, "ReportResponse"

    const-string v2, "Json Null or Empty!!!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    :goto_0
    return v0

    .line 44
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v3, "ReportResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    const-string v1, "ReportResponse"

    const-string v2, "ParseJson Error!!!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->code:I

    .line 22
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->data:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->message:Ljava/lang/String;

    .line 28
    return-void
.end method
