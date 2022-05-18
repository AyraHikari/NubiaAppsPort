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
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 38
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    :cond_0
    const-string v5, "ReportResponse"

    const-string v6, "Json Null or Empty!!!"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    :goto_0
    return v4

    .line 44
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "code":I
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "ReportResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    const-string v5, "ReportResponse"

    const-string v6, "ParseJson Error!!!"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    .param p1, "code"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->code:I

    .line 22
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->data:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->message:Ljava/lang/String;

    .line 28
    return-void
.end method
