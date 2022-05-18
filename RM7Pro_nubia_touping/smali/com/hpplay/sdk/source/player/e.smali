.class public Lcom/hpplay/sdk/source/player/e;
.super Lcom/hpplay/sdk/source/player/a;
.source "SourceFile"


# static fields
.field private static final A:I = 0x82

.field private static final B:I = 0x8c

.field private static final C:I = 0x96

.field private static final D:I = 0x97

.field private static final E:I = 0x98

.field private static final F:I = 0x99

.field private static final G:I = 0x9a

.field private static final H:I = 0x3e8

.field private static final I:Ljava/lang/String; = "playing"

.field private static final J:Ljava/lang/String; = "stopped"

.field private static final K:Ljava/lang/String; = "loading"

.field private static final L:Ljava/lang/String; = "paused"

.field private static final M:Ljava/lang/String; = "error"

.field private static final N:Ljava/lang/String; = "ended"

.field private static final O:Ljava/lang/String; = "Switching Protocols"

.field private static final P:Ljava/lang/String; = "stoptype"

.field private static final Q:Ljava/lang/String; = "state"

.field private static final R:Ljava/lang/String; = "reason"

.field private static final S:Ljava/lang/String; = "photohide"

.field private static final T:Ljava/lang/String; = "media_completion"

.field private static final U:Ljava/lang/String; = "phonevideohide"

.field private static final V:Ljava/lang/String; = "duration"

.field private static final W:Ljava/lang/String; = "position"

.field private static final X:Ljava/lang/String; = "readyToPlay"

.field private static final y:Ljava/lang/String; = "NewLelinkPlayerControl"

.field private static final z:I = 0x78


# instance fields
.field private Y:Lcom/hpplay/sdk/source/protocol/m;

.field private Z:Lcom/hpplay/sdk/source/protocol/l;

.field private aa:Landroid/os/Handler;

.field private ab:I

.field private ac:F

.field private ad:F

.field private ae:Z

.field private af:Z

.field private ag:Ljava/lang/String;

.field private ah:I

.field private ai:I

.field private aj:Z

.field private ak:Ljava/lang/String;

.field v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field w:Lcom/hpplay/sdk/source/protocol/m$a;

.field x:Lcom/hpplay/sdk/source/protocol/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/a;-><init>()V

    .line 69
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    .line 74
    iput v2, p0, Lcom/hpplay/sdk/source/player/e;->ac:F

    .line 75
    iput v2, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    .line 76
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    .line 77
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->ag:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/player/e;->ah:I

    .line 85
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/e;->aj:Z

    .line 86
    const-string v0, "000000"

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->ak:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/hpplay/sdk/source/player/e$4;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/e$4;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 329
    new-instance v0, Lcom/hpplay/sdk/source/player/e$5;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/e$5;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->w:Lcom/hpplay/sdk/source/protocol/m$a;

    .line 730
    new-instance v0, Lcom/hpplay/sdk/source/player/e$3;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/e$3;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->x:Lcom/hpplay/sdk/source/protocol/j;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/e;F)F
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/hpplay/sdk/source/player/e;->ac:F

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/e;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/e;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/e;F)F
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/e;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    return v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/e;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/e;->aj:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/l;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/e;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    return p1
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/player/e;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->m()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 206
    const-string v1, "readyToPlay"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->e()V

    goto :goto_0

    .line 211
    :cond_2
    :try_start_1
    const-string v2, "0"

    .line 212
    const-string v1, "0"

    .line 213
    const-string v3, "duration"

    invoke-virtual {v0, v3}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    :cond_3
    const-string v3, "position"

    invoke-virtual {v0, v3}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 220
    :goto_2
    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/player/e;->ac:F

    .line 225
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    .line 227
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_1

    .line 228
    const-string v1, "NewLelinkPlayerControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reverse to uiduration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    iget v1, p0, Lcom/hpplay/sdk/source/player/e;->ac:F

    float-to-int v1, v1

    int-to-long v2, v1

    iget v1, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    float-to-int v1, v1

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_3
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 237
    :catch_1
    move-exception v0

    .line 238
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/player/e;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->aj:Z

    return v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/player/e;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->o()V

    return-void
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/player/e;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ac:F

    return v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/player/e;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/hpplay/sdk/source/player/e$1;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/player/e$1;-><init>(Lcom/hpplay/sdk/source/player/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 295
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 296
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoopMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 297
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getPlayInfoBean()Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getPlayInfoBean()Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setHeader(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setManifestVer(I)V

    .line 301
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setSessionId(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoopMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setLoopMode(I)V

    .line 303
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->setUri(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e;->v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v4, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->setUri(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    const/4 v2, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V

    .line 316
    :cond_2
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    sparse-switch v0, :sswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 360
    :sswitch_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->s:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->g()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->i()V

    .line 364
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->d()V

    goto :goto_0

    .line 367
    :sswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/e;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v3, 0x99

    .line 373
    new-instance v0, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->b()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 375
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->l(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "event"

    .line 378
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->b(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "Upgrade"

    .line 379
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->am(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 380
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e;->x:Lcom/hpplay/sdk/source/protocol/j;

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/l;->a(Lcom/hpplay/sdk/source/protocol/j;[B)V

    .line 383
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x32

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    return-void

    .line 384
    :cond_0
    const-wide/16 v0, 0x258

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 662
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 666
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 670
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    .line 672
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    .line 673
    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ah:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/player/e;->ah:I

    .line 445
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 446
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "application/plist+xml"

    .line 447
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->l(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 450
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ah:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->d(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 453
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 445
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 92
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->ag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lelinkport"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/e;->ai:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ai:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->k()V

    .line 103
    invoke-static {p1}, Lcom/hpplay/sdk/source/b/a;->e(Landroid/content/Context;)Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    .line 104
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;)V
    .locals 5

    .prologue
    .line 685
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V

    .line 688
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 677
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->n:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->v:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V

    .line 680
    :cond_0
    return-void
.end method

.method public addVolume()V
    .locals 5

    .prologue
    .line 544
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "type"

    const-string v2, "volume"

    .line 546
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "event"

    const-string v2, "increase"

    .line 547
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 550
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->e()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 549
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$10;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$10;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 560
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 552
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    .line 563
    :cond_1
    return-void
.end method

.method d()V
    .locals 7

    .prologue
    const/16 v4, 0x65

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v0

    if-lez v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v0

    .line 403
    :goto_1
    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_4

    .line 404
    :cond_2
    const-string v3, "items"

    .line 405
    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    if-ne v2, v4, :cond_3

    const-string v2, "music"

    .line 406
    :goto_2
    new-instance v4, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v5, "media-type"

    .line 407
    invoke-virtual {v4, v5, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    .line 408
    invoke-virtual {v2, v3, v6}, Lcom/hpplay/sdk/source/protocol/f;->b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    const-string v4, "start-position"

    .line 409
    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v2, "uuid"

    .line 410
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v2, "content-location"

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 411
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_3
    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/d;->j()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    const-string v3, "NewLelinkPlayerControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v3, Lcom/hpplay/sdk/source/player/e$6;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/player/e$6;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    new-array v4, v6, [[B

    .line 439
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v4, v1

    .line 426
    invoke-virtual {v0, v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 405
    :cond_3
    const-string v2, "video"

    goto/16 :goto_2

    .line 414
    :cond_4
    const-string v0, "items"

    .line 415
    const-string v2, "image/url"

    .line 416
    new-instance v3, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v4, "media-type"

    .line 417
    invoke-virtual {v3, v4, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    .line 418
    invoke-virtual {v2, v0, v6}, Lcom/hpplay/sdk/source/protocol/f;->b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    const-string v3, "uuid"

    .line 419
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    const-string v3, "content-location"

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 420
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v2

    .line 421
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method declared-synchronized e()V
    .locals 4

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    .line 693
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get duration -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    :try_start_2
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()V
    .locals 3

    .prologue
    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    .line 705
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 709
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop get duration -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->s:Z

    .line 721
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->stopMirror()V

    .line 724
    :cond_0
    return-void
.end method

.method h()V
    .locals 5

    .prologue
    const/16 v4, 0x96

    .line 868
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 871
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    :cond_0
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/16 v1, 0x97

    .line 876
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 880
    :cond_0
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    const/16 v1, 0x8c

    .line 883
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "uuid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 465
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->k()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 464
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$7;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$7;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 468
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 651
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 486
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "uuid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 491
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->i()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 490
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$8;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$8;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 494
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    const/16 v3, 0x82

    .line 512
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 109
    return-void
.end method

.method public setVolume(I)V
    .locals 5

    .prologue
    .line 522
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "prop-type"

    const-string v2, "volume"

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "value"

    .line 525
    invoke-virtual {v0, v1, p1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 528
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->u()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 527
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$9;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$9;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 538
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 530
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    .line 540
    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->start()V

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    .line 250
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ad:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 251
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v2, "key_cur_report_uri"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    invoke-virtual {p0, v0, v2}, Lcom/hpplay/sdk/source/player/e;->a(Ljava/lang/String;I)V

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->aj:Z

    .line 255
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    .line 258
    const/4 v0, 0x0

    .line 259
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v4, 0x10006

    invoke-virtual {v2, v4, v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->ak:Ljava/lang/String;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 267
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    if-ne v3, v0, :cond_3

    .line 268
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "mirror play check"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->l()V

    .line 273
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "htv"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v2, "htv"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 289
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/e;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :pswitch_0
    :try_start_2
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    .line 276
    :pswitch_3
    new-instance v0, Lcom/hpplay/sdk/source/protocol/l;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ai:I

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/l;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    .line 277
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ai:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/e;->w:Lcom/hpplay/sdk/source/protocol/m$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    goto :goto_2

    .line 284
    :pswitch_4
    new-instance v0, Lcom/hpplay/sdk/source/protocol/l;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ai:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e;->ak:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    .line 285
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->l:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/e;->ai:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e;->ak:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e;->w:Lcom/hpplay/sdk/source/protocol/m$a;

    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/m$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 274
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->s:Z

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/e;->g()V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop00---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Z:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->aa:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    const-string v0, ""

    .line 602
    iget v1, p0, Lcom/hpplay/sdk/source/player/e;->ab:I

    packed-switch v1, :pswitch_data_0

    .line 614
    :goto_1
    new-instance v1, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v2, "media-type"

    .line 615
    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "uuid"

    .line 616
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 618
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 619
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->n()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 618
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$2;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 640
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 622
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 604
    :pswitch_0
    :try_start_1
    const-string v0, "music"

    goto :goto_1

    .line 607
    :pswitch_1
    const-string v0, "video"

    goto :goto_1

    .line 610
    :pswitch_2
    const-string v0, "image/url"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public subVolume()V
    .locals 5

    .prologue
    .line 567
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->ae:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/e;->af:Z

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "type"

    const-string v2, "volume"

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "event"

    const-string v2, "decrease"

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 573
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->e()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 572
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e;->Y:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/e$11;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$11;-><init>(Lcom/hpplay/sdk/source/player/e;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 583
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 575
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    .line 585
    :cond_1
    return-void
.end method
