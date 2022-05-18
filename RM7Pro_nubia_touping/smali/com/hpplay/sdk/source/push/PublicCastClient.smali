.class public Lcom/hpplay/sdk/source/push/PublicCastClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/push/PublicCastClient$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "appid"

.field private static final B:Ljava/lang/String; = "token"

.field private static final C:Ljava/lang/String; = "content"

.field private static final D:Ljava/lang/String; = "user_info"

.field private static final E:Ljava/lang/String; = "pc"

.field private static F:Lcom/hpplay/sdk/source/push/PublicCastClient; = null

.field public static final a:J = 0x20017ffL

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field private static final j:Ljava/lang/String; = "PublicCastClient"

.field private static final k:Ljava/lang/String; = "Connect"

.field private static final l:Ljava/lang/String; = "PushUrl"

.field private static final m:Ljava/lang/String; = "PushMirror"

.field private static final n:Ljava/lang/String; = "GetTVListStatus"

.field private static final o:Ljava/lang/String; = "020001ff"

.field private static final p:Ljava/lang/String; = "020002ff"

.field private static final q:Ljava/lang/String; = "020003ff"

.field private static final r:Ljava/lang/String; = "020004ff"

.field private static final s:Ljava/lang/String; = "020005ff"

.field private static final t:Ljava/lang/String; = "020008ff"

.field private static final u:J = 0x20012ffL

.field private static final v:J = 0x20003ffL

.field private static final w:J = 0x20007ffL

.field private static final x:J = 0x20030ffL

.field private static final y:Ljava/lang/String; = "uid"

.field private static final z:Ljava/lang/String; = "u"


# instance fields
.field private G:Ljava/lang/String;

.field private H:Landroid/content/Context;

.field private I:Landroid/content/SharedPreferences;

.field private J:Lcom/hpplay/sdk/source/business/ads/AdController;

.field private K:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field private L:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

.field g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field h:Lcom/hpplay/sdk/source/a/g;

.field i:Lcom/hpplay/sdk/source/a/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/hpplay/sdk/source/push/PublicCastClient$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/push/PublicCastClient$1;-><init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 174
    new-instance v0, Lcom/hpplay/sdk/source/push/PublicCastClient$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/push/PublicCastClient$2;-><init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->h:Lcom/hpplay/sdk/source/a/g;

    .line 207
    new-instance v0, Lcom/hpplay/sdk/source/push/PublicCastClient$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/push/PublicCastClient$3;-><init>(Lcom/hpplay/sdk/source/push/PublicCastClient;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->i:Lcom/hpplay/sdk/source/a/g;

    .line 91
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->H:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/a/c;->a(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->H:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->I:Landroid/content/SharedPreferences;

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->I:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/business/ads/AdController;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/business/ads/AdController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->J:Lcom/hpplay/sdk/source/business/ads/AdController;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/InteractiveAdListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->K:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/hpplay/sdk/source/push/PublicCastClient;
    .locals 3

    .prologue
    .line 120
    const-class v1, Lcom/hpplay/sdk/source/push/PublicCastClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/push/PublicCastClient;->F:Lcom/hpplay/sdk/source/push/PublicCastClient;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "must call method init first"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 123
    :cond_0
    :try_start_1
    sget-object v0, Lcom/hpplay/sdk/source/push/PublicCastClient;->F:Lcom/hpplay/sdk/source/push/PublicCastClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 422
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 424
    :try_start_0
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v0, "u"

    iget-object v2, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v0, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v0, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v0, "content"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-object v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v2, "PublicCastClient"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 408
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 410
    :try_start_0
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v0, "u"

    iget-object v2, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v0, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v0, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v0, "content"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v2, "PublicCastClient"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    const-class v1, Lcom/hpplay/sdk/source/push/PublicCastClient;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/push/PublicCastClient;->F:Lcom/hpplay/sdk/source/push/PublicCastClient;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/push/PublicCastClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hpplay/sdk/source/push/PublicCastClient;->F:Lcom/hpplay/sdk/source/push/PublicCastClient;

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/business/ads/AdController;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->J:Lcom/hpplay/sdk/source/business/ads/AdController;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 436
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 438
    :try_start_0
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v0, "u"

    iget-object v2, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    const-string v0, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    const-string v0, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v0, "user_info"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-object v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v2, "PublicCastClient"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/push/PublicCastClient;)Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->L:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->H:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 238
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/a/g;)V
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    const-wide/32 v2, 0x20003ff

    invoke-virtual {v0, v2, v3, p1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 136
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->L:Lcom/hpplay/sdk/source/api/ILogReportReceicedListener;

    .line 230
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->K:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4

    .prologue
    .line 369
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 373
    :try_start_0
    const-string v0, "sid"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v0, "st"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string v0, "uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 377
    const-string v0, "seekto"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    const-string v0, "020004ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 387
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 379
    :try_start_1
    const-string v0, "vt"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 351
    :try_start_0
    const-string v0, "sid"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v0, "st"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string v0, "period"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v0, "uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v0, "duration"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v0, "er"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    const-string v0, "020003ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p6}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 366
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4

    .prologue
    .line 390
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 394
    :try_start_0
    const-string v0, "suid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v0, "sc"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v0, "install_package"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v0, "intall_ver"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    const-string v0, "020008ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 404
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p2}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 405
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 331
    :try_start_0
    const-string v0, "pol"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v0, "suid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v0, "timeout"

    const-string v3, "5"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v0, "sdkv"

    const-string v3, "3.28.50"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v0, "app_id"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v0, "sid"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    const-string v0, "020002ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p3}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 345
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 5

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 301
    :try_start_0
    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "suid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v0, "uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v0, "timeout"

    const-string v3, "5"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v0, "sdkv"

    const-string v3, "3.28.50"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v0, "app_id"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v0, "sid"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v0, "pos"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v0, "mt"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v0, "pc"

    invoke-virtual {v2, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "PublicCastClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    const-string v0, "020001ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 318
    const-string v1, "push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  uid  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    appid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2004"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "push"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p7}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 322
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4

    .prologue
    .line 256
    iput-object p4, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->G:Ljava/lang/String;

    .line 257
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 260
    :try_start_0
    const-string v0, "sid"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v0, "suid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "sname"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const-string v0, "sicon"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_1
    const-string v0, "sdkv"

    const-string v3, "3.28.50"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "app_id"

    const-string v3, "2004"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "mac"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "fe"

    const-string v3, "10000000"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "sm"

    const-string v3, "-1;1;10000;2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :try_start_1
    const-string v0, "sdid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_0
    :try_start_2
    const-string v0, "sc"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    :goto_1
    const-string v0, "020005ff"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 284
    const-string v1, "PublicCastClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "send json JSON --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p6}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 286
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_3
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    const-string v3, "PublicCastClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b()Lcom/hpplay/sdk/source/api/InteractiveAdListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->K:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    return-object v0
.end method

.method public b(Lcom/hpplay/sdk/source/a/g;)V
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    const-wide/32 v2, 0x20007ff

    invoke-virtual {v0, v2, v3, p1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 4

    .prologue
    .line 450
    const-string v0, "PublicCastClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "PublicCastClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send  json ----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v0, Lcom/hpplay/sdk/source/push/PublicCastClient$a;

    invoke-direct {v0, p0, p3}, Lcom/hpplay/sdk/source/push/PublicCastClient$a;-><init>(Lcom/hpplay/sdk/source/push/PublicCastClient;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 453
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    .line 139
    const-string v0, "PublicCastClient"

    const-string v1, "connectToServcer -->start connect IM server"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->localip:Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->bssid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->serverPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->localport:Ljava/lang/String;

    .line 148
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/cloud/CapbilityBean;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->I:Landroid/content/SharedPreferences;

    const-string v1, "ImServer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->I:Landroid/content/SharedPreferences;

    const-string v1, "ImServer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    const v4, 0x8052

    .line 164
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    iget-object v5, v5, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 163
    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 166
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    const-wide/32 v2, 0x20012ff

    iget-object v1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->h:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v2, v3, v1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 167
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    sget v1, Lcom/hpplay/sdk/source/a/a;->f:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->h:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v2, v3, v1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 168
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    const-wide/32 v2, 0x20030ff

    iget-object v1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient;->i:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v2, v3, v1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 169
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v2, "PublicCastClient"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v1, "PublicCastClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V

    goto :goto_1

    .line 159
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->getInstance()Lcom/hpplay/sdk/source/common/cloud/AuthSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/cloud/AuthSDK;->updateIMRootUrl()V

    goto :goto_1
.end method

.method public c(Lcom/hpplay/sdk/source/a/g;)V
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    const-wide/32 v2, 0x20017ff

    invoke-virtual {v0, v2, v3, p1}, Lcom/hpplay/sdk/source/a/c;->a(JLcom/hpplay/sdk/source/a/g;)V

    .line 226
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/hpplay/sdk/source/a/c;->a()Lcom/hpplay/sdk/source/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/a/c;->b()V

    .line 234
    return-void
.end method
