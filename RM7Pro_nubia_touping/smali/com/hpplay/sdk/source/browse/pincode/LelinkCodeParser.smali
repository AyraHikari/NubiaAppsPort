.class public Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/pincode/a;


# static fields
.field private static final a:Ljava/lang/String; = "LelinkCodeParser"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

.field private d:Lcom/hpplay/sdk/source/browse/handler/e;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->e:J

    .line 50
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)Lcom/hpplay/sdk/source/browse/api/IParceResultListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    return-object v0
.end method

.method private a(II)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->e:J

    sub-long v4, v0, v2

    .line 300
    const-string v0, "LelinkCodeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPincodeQRcodeEvent sn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getTime  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->getInstance()Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->f:Ljava/lang/String;

    move v3, p1

    move-object v8, v7

    move v9, p2

    move-object v10, v7

    invoke-virtual/range {v0 .. v10}, Lcom/hpplay/sdk/source/common/cloud/SourceDataReport;->onConnect(IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    return-void
.end method

.method private a(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/IParceResultListener;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 295
    :cond_0
    const/16 v0, 0x44f

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(II)V

    .line 296
    return-void
.end method

.method private a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->d:Lcom/hpplay/sdk/source/browse/handler/e;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->d:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/handler/e;->b()V

    .line 142
    :cond_0
    new-instance v1, Lcom/hpplay/sdk/source/browse/handler/e;

    new-instance v2, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$2;-><init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)V

    invoke-direct {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/handler/e;-><init>(Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;Ljava/util/List;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->d:Lcom/hpplay/sdk/source/browse/handler/e;

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->d:Lcom/hpplay/sdk/source/browse/handler/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/e;->start()V

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 6

    .prologue
    .line 160
    invoke-static {p1, p2}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->getQrCodeHttpServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    .line 163
    iget-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    .line 164
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    new-instance v2, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$3;-><init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 201
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/browse/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 212
    if-nez v0, :cond_1

    .line 213
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCodeByLocal error: getLocalPinCodeInfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v1, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMapParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$4;-><init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 289
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IConferenceFuzzyMatchingPinCodeListener;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    .line 307
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/pincode/c;)V
    .locals 5

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 56
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->e:J

    .line 58
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->f:Ljava/lang/String;

    .line 59
    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v2}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(II)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    .line 62
    const-string v2, "code"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "LelinkCodeParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " short pincode result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getMapParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->multiMirrorPinUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$1;-><init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)V

    .line 118
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 122
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    const/16 v1, 0x37

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    .line 124
    :cond_2
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p1, Lcom/hpplay/sdk/source/browse/pincode/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    const-string v0, "LelinkCodeParser"

    const-string v1, "parsePinCode code is empty or length not equals 9"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->c:Lcom/hpplay/sdk/source/browse/api/IParceResultListener;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 204
    const-string v0, ".*[a-zA-Z]+.*"

    .line 205
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
