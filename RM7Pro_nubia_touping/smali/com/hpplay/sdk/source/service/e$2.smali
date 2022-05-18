.class Lcom/hpplay/sdk/source/service/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/e;->c:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const/4 v2, 0x0

    .line 122
    const-string v1, ""

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/service/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-static {}, Lcom/hpplay/common/utils/DeviceUtil;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 136
    iget-object v4, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v4, v4, Lcom/hpplay/sdk/source/service/e;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/hpplay/common/utils/ScreenUtil;->getRelScreenSize(Landroid/content/Context;)[I

    move-result-object v4

    .line 137
    const-string v5, "lelinkVer"

    const-string v6, "HappyCast5,0/500.0"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v5, "sdkVer"

    const-string v6, "3.28.50"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v5, "name"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v0, "cu"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v0, "hid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "appID"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    iget-object v5, v5, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v0, "sWidth"

    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string v0, "sHeight"

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :try_start_2
    const-string v0, "uuid"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "mac"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "appVer"

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/e;->a(Lcom/hpplay/sdk/source/service/e;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    :goto_2
    :try_start_3
    const-string v0, "OSVer"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v0, "model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v0, "platform"

    const-string v1, "100"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    new-instance v0, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->l()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 159
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "application/json"

    .line 160
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    .line 161
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->l(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    .line 163
    invoke-static {v4}, Lcom/hpplay/sdk/source/service/e;->c(Lcom/hpplay/sdk/source/service/e;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->d(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 166
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 171
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-string v1, "NewLelinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/e;->e(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/e;->d(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v2

    new-array v3, v7, [[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 129
    :cond_2
    :try_start_5
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_6
    const-string v3, "NewLelinkService"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 150
    :catch_1
    move-exception v0

    .line 151
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 168
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 169
    :goto_4
    const-string v2, "NewLelinkService"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$2;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;)V

    goto/16 :goto_0

    .line 168
    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4
.end method
