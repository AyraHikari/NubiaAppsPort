.class public Lcom/zte/statistics/sdk/update/ZTEJSONObject;
.super Lorg/json/JSONObject;
.source "ZTEJSONObject.java"


# static fields
.field private static final DEFAULT_VERIONANME:Ljava/lang/String; = "V0.0.0"

.field private static final DEFAULT_VERIONCODE:I = 0x0

.field private static final GENERIC:Ljava/lang/String; = "GENERIC"

.field public static final JSON_KEY_CLIENT_LOCAL:Ljava/lang/String; = "client_locale"

.field public static final JSON_KEY_FROM:Ljava/lang/String; = "from"

.field public static final JSON_KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->OPERATOR:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->COUNTRY:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->DEVICE:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V

    const-string v0, "versionCode"

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    const-string v0, "client_locale"

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;-><init>()V

    .line 87
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->APPNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    invoke-virtual {v0, p0, p1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private parseOneInfo(ILjava/lang/String;)I
    .locals 2

    const-string v0, "\\|"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 106
    aget-object v0, p2, v0

    const/4 v1, 0x1

    .line 107
    aget-object p2, p2, v1

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p0, p2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putCustomValue(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public getStringIgnorException(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "ZTE_"

    const-string v1, ""

    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 95
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 96
    invoke-direct {p0, v1, v3}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->parseOneInfo(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "versionCode"

    .line 98
    invoke-virtual {p0, p1, p3}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const-string p1, "versionName"

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected putCustomValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0, v0, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1, p3}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    .line 138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
