.class public Lcom/hpplay/sdk/source/browse/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LelinkServiceInfoCreator"

.field private static final b:I = 0xcc14

.field private static final c:Ljava/lang/String; = "(?<!\\d)\\d{1,3}\\.\\d{1,3}(?=\\.\\d)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v2, v3, v3}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 176
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-string v4, "u"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "deviceName"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 183
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0, p0, v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v9, 0x5

    const/4 v2, 0x4

    const/4 v8, 0x1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 200
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_0
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 205
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 208
    const v1, 0xcc14

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    div-int/lit16 v2, v0, 0x100

    .line 214
    rem-int/lit16 v3, v0, 0x100

    .line 217
    const-string v0, "(?<!\\d)\\d{1,3}\\.\\d{1,3}(?=\\.\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%s.%d.%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_1
    new-instance v2, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-direct {v2, v8, v9}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 227
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 230
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v4, "ip"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "port"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "airplay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "lelinkport"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "raop"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 238
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0, v9, v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setPinCode(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    .line 243
    :cond_2
    const-string v0, "LelinkServiceInfoCreator"

    const-string v1, "PinCode is empty or PinCode length not equlas 9"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "qrUrl can\'t not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/hpplay/sdk/source/browse/b/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_1
    const-string v0, "LelinkServiceInfoCreator"

    const-string v1, "getQRCodeInfo param is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 102
    :cond_2
    const-string v0, "ip"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    const-string v1, "remotePort"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    const-string v2, "cname"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    const-string v3, "deviceName"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    new-instance v5, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v7}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 108
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-virtual {v5, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v3}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 112
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->parsePort(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 113
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 118
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0, v7, v5}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v2, "leLinkTxt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 46
    :cond_0
    const-string v0, "LelinkServiceInfoCreator"

    const-string v2, "getLelinkTxtInfo lelinkTxt is empty"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 49
    :cond_1
    new-instance v3, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v0, 0x1

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 50
    invoke-virtual {v3, p0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, p1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, p2}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 55
    invoke-static {p3}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->parsePort(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 56
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 59
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v2, "LelinkServiceInfoCreator"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    const-string v0, "pt"

    invoke-interface {v4, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "htv"

    const-string v2, "1"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 67
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 125
    .line 126
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x4

    .line 129
    :goto_0
    new-instance v2, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 130
    invoke-virtual {v2, p0}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, p1}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, p3}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 134
    invoke-static {p4}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->parsePort(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 135
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 136
    const-string v4, "u"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "pt"

    invoke-interface {v3, v4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v4, "name"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v4, "ip"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "port"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "lelinkport"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "airplay"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v4, "raop"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v4, "devicemac"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    if-ne v0, v1, :cond_0

    .line 146
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "vv"

    const-string v1, "2"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    :goto_1
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 153
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 157
    :goto_2
    return-object v0

    .line 149
    :cond_1
    const-string v0, "vv"

    invoke-interface {v3, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "LelinkServiceInfoCreator"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/browse/b/c;->a(ILorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 13

    .prologue
    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 259
    :cond_0
    const-string v0, "LelinkServiceInfoCreator"

    const-string v1, "getNetPinCodeInfo data json is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    .line 262
    :cond_1
    const-string v0, "ip"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "raop_port"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "airplay_port"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string v3, "mirror_port"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v4, "link_port"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 267
    const-string v5, "agent_port"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    const-string v5, "remote_port"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string v6, "mac"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 270
    const-string v7, "version"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    const-string v8, "tmp"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    const-string v8, "hostname"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const-string v8, "name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    const-string v9, "extendStr"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v9, "pt"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 279
    new-instance v10, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 280
    invoke-virtual {v10, v8}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v10, v0}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v10, v4}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 284
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v11, "ip"

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "lelinkport"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "airplay"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "mirror"

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "remote"

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "raop"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "version"

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "devicemac"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "pt"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v10, v8}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 296
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v10}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 297
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setPinCode(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/browse/b/c;->a(ILorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 325
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 326
    :cond_0
    const-string v0, "LelinkServiceInfoCreator"

    const-string v1, "getConferenceInfo data json is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 329
    :cond_1
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "ip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string v2, "linkPort"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 332
    const-string v3, "raopPort"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    const-string v4, "pt"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    new-instance v5, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 335
    invoke-virtual {v5, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5, v1}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v5, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 339
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    const-string v0, "raop"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "lelinkport"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "vv"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "pt"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "isconference"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 348
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v5, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 354
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0, v7, v5}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 355
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setPinCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const/4 v0, 0x0

    .line 449
    :cond_0
    return-object v0

    .line 441
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 442
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 443
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 444
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 445
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 446
    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 403
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 404
    :cond_0
    const-string v0, "LelinkServiceInfoCreator"

    const-string v1, "getConferenceFuzzyMatchingInfo data json is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    .line 407
    :cond_1
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v1, "ip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    const-string v2, "linkPort"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 410
    const-string v3, "raopPort"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    const-string v4, "pt"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    new-instance v5, Lcom/hpplay/sdk/source/browse/b/b;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Lcom/hpplay/sdk/source/browse/b/b;-><init>(II)V

    .line 413
    invoke-virtual {v5, v0}, Lcom/hpplay/sdk/source/browse/b/b;->b(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v5, v1}, Lcom/hpplay/sdk/source/browse/b/b;->c(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v5, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(I)V

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 418
    const-string v0, "raop"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "lelinkport"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "vv"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "isconference"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v0, "pt"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 426
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual {v5, v1}, Lcom/hpplay/sdk/source/browse/b/b;->a(Ljava/util/Map;)V

    .line 432
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-direct {v0, v7, v5}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 433
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setPinCode(Ljava/lang/String;)V

    goto :goto_0
.end method
