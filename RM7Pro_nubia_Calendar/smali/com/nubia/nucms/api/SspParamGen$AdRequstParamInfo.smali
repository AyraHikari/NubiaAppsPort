.class public Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;
.super Ljava/lang/Object;
.source "SspParamGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/SspParamGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRequstParamInfo"
.end annotation


# static fields
.field public static final FEILD_GPS:Ljava/lang/String; = "gps"

.field public static final FEILD_NETWORK:Ljava/lang/String; = "network"

.field public static final FEILD_SSP_DEVICE:Ljava/lang/String; = "sspDevice"

.field private static final TAG:Ljava/lang/String; = "AdRequstParamInfo"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;->jsonObject:Lorg/json/JSONObject;

    .line 164
    return-void
.end method

.method public static start()Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;

    invoke-direct {v0}, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object p0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AdRequstParamInfo"

    const-string v2, "adrequestparam info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public end()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;->jsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "adrequestparam info field is null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;->jsonObject:Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
