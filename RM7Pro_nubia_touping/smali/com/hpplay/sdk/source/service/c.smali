.class public Lcom/hpplay/sdk/source/service/c;
.super Lcom/hpplay/sdk/source/service/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/service/c$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "IMLinkService"

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x0

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x3

.field private static final t:I = 0x1f5

.field private static final u:I = 0x3a98

.field private static final v:I = 0x1388

.field private static final w:I = 0x5dc

.field private static final x:Ljava/lang/String; = "/Connect"


# instance fields
.field private A:Lcom/hpplay/sdk/source/player/a;

.field private B:Lcom/hpplay/sdk/source/service/b$a;

.field private C:Z

.field private D:Lcom/hpplay/sdk/source/a/g;

.field private y:Lcom/hpplay/sdk/source/service/c$a;

.field private z:Lcom/hpplay/sdk/source/browse/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/b;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    .line 133
    new-instance v0, Lcom/hpplay/sdk/source/service/c$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/c$2;-><init>(Lcom/hpplay/sdk/source/service/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->D:Lcom/hpplay/sdk/source/a/g;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/c;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/service/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/service/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    .line 211
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 212
    aget-char v2, v4, v0

    const/16 v5, 0x31

    if-ne v2, v5, :cond_1

    move v2, v3

    .line 213
    :goto_1
    if-nez v0, :cond_2

    .line 214
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v5

    const-string v6, "key_support_audio"

    invoke-virtual {v5, v6, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 212
    goto :goto_1

    .line 218
    :cond_2
    if-ne v0, v3, :cond_0

    .line 219
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_support_pic"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 226
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/c;)Lcom/hpplay/sdk/source/service/c$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    .line 243
    const-string v0, "IMLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSingleMsg failed type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/c;->k()V

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->B:Lcom/hpplay/sdk/source/service/b$a;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->B:Lcom/hpplay/sdk/source/service/b$a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/service/b$a;->onConnectFailed(I)V

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/service/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/c;->m()V

    return-void
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/service/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/c;->l()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->c:Z

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/b;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->d:Lcom/hpplay/sdk/source/protocol/b;

    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->d:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->d:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->f:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 203
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->d:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/c;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v3, "u"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->d:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->a(Lcom/hpplay/sdk/source/protocol/b;)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 230
    const-string v0, "IMLinkService"

    const-string v1, "sendSingleMsg success"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    .line 235
    new-instance v0, Lcom/hpplay/sdk/source/player/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/player/c;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    .line 236
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->a(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/c;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 238
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/service/c;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/service/b$a;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/c;->B:Lcom/hpplay/sdk/source/service/b$a;

    .line 61
    return-void
.end method

.method public b()Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 81
    const-string v0, "IMLinkService"

    const-string v1, "start connect IM"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/hpplay/sdk/source/service/c$a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/service/c$a;-><init>(Lcom/hpplay/sdk/source/service/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/hpplay/sdk/source/push/PublicCastClient;->a()Lcom/hpplay/sdk/source/push/PublicCastClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/c;->D:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/push/PublicCastClient;->b(Lcom/hpplay/sdk/source/a/g;)V

    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    new-instance v1, Lcom/hpplay/sdk/source/service/c$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/c$1;-><init>(Lcom/hpplay/sdk/source/service/c;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/c$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/c;->C:Z

    .line 266
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/c;->g()V

    .line 267
    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->z:Lcom/hpplay/sdk/source/browse/b/b;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 274
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->y:Lcom/hpplay/sdk/source/service/c$a;

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 279
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/c;->A:Lcom/hpplay/sdk/source/player/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_1
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
