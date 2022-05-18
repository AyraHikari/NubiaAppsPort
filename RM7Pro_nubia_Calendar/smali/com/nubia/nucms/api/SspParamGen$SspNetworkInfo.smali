.class public Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;
.super Ljava/lang/Object;
.source "SspParamGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/SspParamGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SspNetworkInfo"
.end annotation


# static fields
.field public static final FEILD_BSS_ID:Ljava/lang/String; = "bss_id"

.field public static final FEILD_CARRIER:Ljava/lang/String; = "carrier"

.field public static final FEILD_LAC:Ljava/lang/String; = "lac"

.field public static final FEILD_MCC:Ljava/lang/String; = "mcc"

.field private static final TAG:Ljava/lang/String; = "NetWorkInfo"

.field public static final VALUE_BSS_ID_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_CARRIER_CMCC:I = 0x1

.field public static final VALUE_CARRIER_CTCC:I = 0x2

.field public static final VALUE_CARRIER_CUCC:I = 0x3

.field public static final VALUE_CARRIER_OTHER:I = 0x4

.field public static final VALUE_CARRIER_UNKNOW:I = 0x0

.field public static final VALUE_LAC_ID_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_MCC_ID_DEFAULT:Ljava/lang/String; = "460"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    .line 279
    return-void
.end method

.method public static start()Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    invoke-direct {v0}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-object p0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "NetWorkInfo"

    const-string v2, "network info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object p0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "NetWorkInfo"

    const-string v2, "network info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public end()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "network info field is null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->jsonObject:Lorg/json/JSONObject;

    .line 310
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
