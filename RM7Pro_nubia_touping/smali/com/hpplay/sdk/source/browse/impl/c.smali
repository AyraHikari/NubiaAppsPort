.class public Lcom/hpplay/sdk/source/browse/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/impl/c$b;,
        Lcom/hpplay/sdk/source/browse/impl/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "QRCodeController"

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/util/List;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 219
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v4

    .line 222
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v5

    .line 226
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 227
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    .line 228
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v7

    .line 229
    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/browse/b/b;

    .line 231
    if-nez v2, :cond_0

    .line 234
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_1
    const/4 v2, 0x4

    if-ne v7, v2, :cond_0

    .line 237
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v1, v0

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/hpplay/sdk/source/browse/impl/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
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

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v0, 0x0

    .line 325
    :cond_0
    return-object v0

    .line 318
    :cond_1
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 319
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 320
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 322
    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 7

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo ParceQRCodeListener listener is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo qrCodeStr is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "QRCodeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addQRCodeServiceInfo qrCodeStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 53
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo split length less than 2"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->e(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo getUrlParams is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->e(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "remotePort"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    const-string v0, "ip"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    const-string v0, "cname"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const-string v1, "deviceName"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    const-string v6, "platform"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/hpplay/sdk/source/browse/impl/c;->b:Ljava/lang/String;

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 81
    :cond_4
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo ip or remotePort is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->e(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto/16 :goto_0

    :cond_5
    move-object v5, p1

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 9

    .prologue
    .line 163
    invoke-static {p2, p3}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->getQrCodeHttpServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v7, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, v7, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    .line 166
    iget-object v0, v7, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    .line 167
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v8

    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/c$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/browse/impl/c$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 207
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 6

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v1, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "shortUrl"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "ver"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->parse_qrinfo_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getJsonParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "QRCodeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getJsonParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    .line 266
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x2

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    .line 267
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 268
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    new-instance v2, Lcom/hpplay/sdk/source/browse/impl/c$3;

    invoke-direct {v2, p1}, Lcom/hpplay/sdk/source/browse/impl/c$3;-><init>(Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 285
    return-void
.end method

.method static synthetic c(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->f(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 6

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?rtype=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->connectTimeout:I

    .line 118
    new-instance v0, Lcom/hpplay/sdk/source/browse/impl/c$1;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/c$1;-><init>(Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    .line 153
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 154
    return-void
.end method

.method private static e(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/browse/impl/c$a;

    invoke-direct {v1, p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c$a;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->addAuthListener(Lcom/hpplay/sdk/source/browse/api/AuthListener;)V

    .line 250
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->startAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->b(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 293
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 294
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/browse/impl/c;->a(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/impl/c$b;)V

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo status not 200 or data is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v0, "QRCodeController"

    const-string v1, "addQRCodeServiceInfo not json"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {p1, v3}, Lcom/hpplay/sdk/source/browse/impl/c$b;->onParse(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method
