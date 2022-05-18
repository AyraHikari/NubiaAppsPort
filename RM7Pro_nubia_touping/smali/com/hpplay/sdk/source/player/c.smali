.class public Lcom/hpplay/sdk/source/player/c;
.super Lcom/hpplay/sdk/source/player/a;
.source "SourceFile"


# static fields
.field private static final A:I = 0x78

.field private static final B:I = 0x0

.field private static final C:I = 0x1

.field public static final v:Ljava/lang/String; = "key_support_pic"

.field public static final w:Ljava/lang/String; = "key_support_audio"

.field private static final z:Ljava/lang/String; = "IMPlayerControl"


# instance fields
.field private D:Lcom/hpplay/sdk/source/push/PublicCastClient;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:I

.field private J:I

.field private K:I

.field private L:Lcom/hpplay/sdk/source/a/g;

.field x:Lcom/hpplay/sdk/source/a/g;

.field y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/a;-><init>()V

    .line 45
    const-string v0, "/PushUrl"

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->E:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/hpplay/sdk/source/player/c;->I:I

    .line 50
    iput v2, p0, Lcom/hpplay/sdk/source/player/c;->J:I

    .line 70
    new-instance v0, Lcom/hpplay/sdk/source/player/c$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/c$1;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->x:Lcom/hpplay/sdk/source/a/g;

    .line 222
    new-instance v0, Lcom/hpplay/sdk/source/player/c$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/c$3;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->L:Lcom/hpplay/sdk/source/a/g;

    .line 344
    new-instance v0, Lcom/hpplay/sdk/source/player/c$7;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/c$7;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/c;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/hpplay/sdk/source/player/c;->I:I

    return v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/c;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/hpplay/sdk/source/player/c;->I:I

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/c;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/hpplay/sdk/source/player/c;->J:I

    return v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/c;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/hpplay/sdk/source/player/c;->J:I

    return p1
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 188
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 190
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoopMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getPlayInfoBean()Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setHeader(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v5}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setManifestVer(I)V

    .line 194
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setSessionId(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoopMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setLoopMode(I)V

    .line 196
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setUri(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->encode()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    invoke-virtual {v2, v5, v1, v3, v5}, Lcom/hpplay/sdk/source/protocol/b;->b(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->setUri(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/c;->n:Lcom/hpplay/sdk/source/protocol/b;

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->encode()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/hpplay/sdk/source/protocol/b;->b(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 56
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_cur_report_uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    .line 59
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->x:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/a/g;)V

    .line 60
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_support_pic"

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->G:Z

    .line 61
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_support_audio"

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->H:Z

    .line 62
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->L:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->c(Lcom/hpplay/sdk/source/a/g;)V

    .line 63
    return-void
.end method

.method public addVolume()V
    .locals 6

    .prologue
    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c;->y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 301
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->s:Z

    .line 339
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->stopMirror()V

    .line 342
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    new-instance v5, Lcom/hpplay/sdk/source/player/c$4;

    invoke-direct {v5, p0}, Lcom/hpplay/sdk/source/player/c$4;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 267
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "inconnect"

    const-string v1, "realse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    new-instance v5, Lcom/hpplay/sdk/source/player/c$5;

    invoke-direct {v5, p0}, Lcom/hpplay/sdk/source/player/c$5;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 286
    return-void
.end method

.method public seekTo(I)V
    .locals 6

    .prologue
    .line 290
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c;->y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 291
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 68
    return-void
.end method

.method public setVolume(I)V
    .locals 6

    .prologue
    .line 295
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c;->y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 296
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    .line 138
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->start()V

    .line 139
    iget v0, p0, Lcom/hpplay/sdk/source/player/c;->J:I

    if-lez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_cur_report_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget v1, p0, Lcom/hpplay/sdk/source/player/c;->K:I

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/player/c;->a(Ljava/lang/String;I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-nez v0, :cond_1

    .line 185
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/c;->K:I

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->H:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 148
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->G:Z

    if-nez v0, :cond_4

    .line 149
    :cond_3
    const/4 v0, 0x0

    const v1, 0x33450

    const v2, 0x33453

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/player/c;->a(III)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 155
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    const-string v0, "IMPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "im player start URL-->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->x:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Lcom/hpplay/sdk/source/a/g;)V

    .line 168
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/c;->e()Ljava/lang/String;

    move-result-object v6

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v5

    new-instance v7, Lcom/hpplay/sdk/source/player/c$2;

    invoke-direct {v7, p0}, Lcom/hpplay/sdk/source/player/c$2;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/c;->s:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/c;->d()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    new-instance v5, Lcom/hpplay/sdk/source/player/c$6;

    invoke-direct {v5, p0}, Lcom/hpplay/sdk/source/player/c$6;-><init>(Lcom/hpplay/sdk/source/player/c;)V

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 330
    return-void
.end method

.method public subVolume()V
    .locals 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c;->D:Lcom/hpplay/sdk/source/push/PublicCastClient;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c;->F:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c;->y:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a(Ljava/lang/String;IILjava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    .line 306
    return-void
.end method
