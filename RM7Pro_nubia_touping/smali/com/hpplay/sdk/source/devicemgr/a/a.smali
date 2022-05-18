.class public Lcom/hpplay/sdk/source/devicemgr/a/a;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "LocalDeviceHandler"

.field private static final b:I = 0x0

.field private static final f:I = 0xa


# instance fields
.field private c:Lcom/hpplay/sdk/source/common/store/Preference;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/hpplay/sdk/source/browse/a/a$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    const-string v0, "LocalDeviceHandler"

    const-string v1, "LocalDeviceHandler Constru"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->c:Lcom/hpplay/sdk/source/common/store/Preference;

    .line 44
    return-void
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "LocalDeviceHandler"

    const-string v1, "writeServiceInfos"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->c:Lcom/hpplay/sdk/source/common/store/Preference;

    const-string v2, "key_local_service_config"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->c:Lcom/hpplay/sdk/source/common/store/Preference;

    const-string v1, "key_local_service_config"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v2

    .line 177
    :goto_0
    if-ge v0, v3, :cond_0

    .line 178
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/hpplay/sdk/source/browse/b/c;->a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    const-string v1, "LocalDeviceHandler"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 188
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 190
    if-nez v6, :cond_2

    .line 191
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 194
    :cond_2
    const/4 v3, 0x1

    .line 195
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 201
    :goto_2
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 211
    const/16 v0, 0xa

    if-le v2, v0, :cond_7

    .line 212
    add-int/lit8 v0, v2, -0xa

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 215
    :goto_3
    sub-int v0, v2, v1

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_6

    .line 216
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 219
    :cond_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method private d()V
    .locals 6

    .prologue
    .line 72
    const-string v0, "LocalDeviceHandler"

    const-string v1, "readServiceInfos"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->c:Lcom/hpplay/sdk/source/common/store/Preference;

    const-string v1, "key_local_service_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 80
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/hpplay/sdk/source/browse/b/c;->a(Lorg/json/JSONObject;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v4

    .line 81
    iget-object v5, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v2, "LocalDeviceHandler"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    const-string v0, "LocalDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readServiceInfos jsonString-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->e:Lcom/hpplay/sdk/source/browse/a/a$a;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->e:Lcom/hpplay/sdk/source/browse/a/a$a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/browse/a/a$a;->onSync(ILjava/util/List;)V

    .line 92
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/a/a$a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->e:Lcom/hpplay/sdk/source/browse/a/a$a;

    .line 62
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 111
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    move v0, v2

    .line 140
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 115
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 116
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 122
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 125
    :cond_6
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 128
    :cond_7
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 129
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    move v0, v2

    goto/16 :goto_1

    .line 134
    :cond_8
    iget-object v2, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 136
    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "LocalDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDevices save jsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->c:Lcom/hpplay/sdk/source/common/store/Preference;

    const-string v2, "key_local_service_config"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "LocalDeviceHandler"

    const-string v1, "removeAllLocalServiceInfo"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->e:Lcom/hpplay/sdk/source/browse/a/a$a;

    if-eqz v0, :cond_0

    .line 225
    iput-object v1, p0, Lcom/hpplay/sdk/source/devicemgr/a/a;->e:Lcom/hpplay/sdk/source/browse/a/a$a;

    .line 227
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->d()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
