.class public Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;
.super Ljava/lang/Object;
.source "SspParamGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/SspParamGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SspGpsInfo"
.end annotation


# static fields
.field public static final FEILD_COORDINATE_TYPE:Ljava/lang/String; = "coordinate_type"

.field public static final FEILD_LAT:Ljava/lang/String; = "lat"

.field public static final FEILD_LON:Ljava/lang/String; = "lon"

.field private static final TAG:Ljava/lang/String; = "GpsInfo"

.field public static final VALUE_COORDINATE_TYPE_DB_09:I = 0x3

.field public static final VALUE_COORDINATE_TYPE_GCJ_02:I = 0x2

.field public static final VALUE_COORDINATE_TYPE_OTHER:I = 0x4

.field public static final VALUE_COORDINATE_TYPE_WGS84:I = 0x1


# instance fields
.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    .line 327
    return-void
.end method

.method public static start()Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    invoke-direct {v0}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;D)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-object p0

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GpsInfo"

    const-string v2, "gps info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-object p0

    .line 346
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GpsInfo"

    const-string v2, "gps info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public end()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "gps info field is null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->jsonObject:Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
