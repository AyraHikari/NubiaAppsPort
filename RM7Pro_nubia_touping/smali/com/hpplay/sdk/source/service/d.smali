.class public Lcom/hpplay/sdk/source/service/d;
.super Lcom/hpplay/sdk/source/service/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/service/d$a;,
        Lcom/hpplay/sdk/source/service/d$b;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "LelinkServiceConnect"

.field private static final m:I = 0xa


# instance fields
.field private n:Lcom/hpplay/sdk/source/protocol/m;

.field private o:Lcom/hpplay/sdk/source/browse/b/b;

.field private p:Lcom/hpplay/sdk/source/player/a;

.field private q:Lcom/hpplay/sdk/source/service/b$a;

.field private r:I

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/hpplay/sdk/source/service/d$a;

.field private v:Lcom/hpplay/sdk/source/service/d$b;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Lcom/hpplay/sdk/source/protocol/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/b;-><init>()V

    .line 36
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/service/d;->r:I

    .line 152
    new-instance v0, Lcom/hpplay/sdk/source/service/d$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/d$2;-><init>(Lcom/hpplay/sdk/source/service/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->y:Lcom/hpplay/sdk/source/protocol/j;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/d;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/j;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->y:Lcom/hpplay/sdk/source/protocol/j;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/d;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/d;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/d;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/d;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/service/d;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/d;->m()V

    return-void
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/service/d;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/d;->l()V

    return-void
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/service/d;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/d;->w:Z

    return v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/service/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/service/d;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/hpplay/sdk/source/service/d;->r:I

    return v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->x:Ljava/lang/String;

    const-string v1, "5.0"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->x:Ljava/lang/String;

    const-string v1, "3."

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->u:Lcom/hpplay/sdk/source/service/d$a;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/hpplay/sdk/source/service/d$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/d$a;-><init>(Lcom/hpplay/sdk/source/service/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->u:Lcom/hpplay/sdk/source/service/d$a;

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->u:Lcom/hpplay/sdk/source/service/d$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/d$a;->start()V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/service/d$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const v4, 0x33c2b

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/d;->k()V

    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 266
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    .line 267
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 269
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c2a

    invoke-interface {v0, v1, v2, v4}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 278
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/service/d;->s:Z

    .line 279
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->q:Lcom/hpplay/sdk/source/service/b$a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->q:Lcom/hpplay/sdk/source/service/b$a;

    invoke-interface {v0, v4}, Lcom/hpplay/sdk/source/service/b$a;->onConnectFailed(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/service/b$a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d;->q:Lcom/hpplay/sdk/source/service/b$a;

    .line 51
    return-void
.end method

.method public b()Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/d;->s:Z

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->x:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->t:Ljava/lang/String;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "airplay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/service/d;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/hpplay/sdk/source/service/d$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/hpplay/sdk/source/service/d$b;-><init>(Lcom/hpplay/sdk/source/service/d;Landroid/content/Context;Lcom/hpplay/sdk/source/service/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    .line 92
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/service/d;->r:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hpplay/sdk/source/service/d;->r:I

    if-ge v0, v2, :cond_3

    .line 93
    :cond_1
    const-string v0, "LelinkServiceConnect"

    const-string v1, "connect airplay port is unuse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/d;->m()V

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "LelinkServiceConnect"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d;->t:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/service/d;->r:I

    new-instance v3, Lcom/hpplay/sdk/source/service/d$1;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/service/d$1;-><init>(Lcom/hpplay/sdk/source/service/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    goto :goto_1
.end method

.method public e()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/d;->s:Z

    .line 284
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/d;->g()V

    .line 285
    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 290
    const-string v0, "LelinkServiceConnect"

    const-string v1, "stopTask service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/d;->w:Z

    .line 292
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->u:Lcom/hpplay/sdk/source/service/d$a;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->u:Lcom/hpplay/sdk/source/service/d$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/d$a;->interrupt()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/d$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->v:Lcom/hpplay/sdk/source/service/d$b;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->p:Lcom/hpplay/sdk/source/player/a;

    .line 303
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->o:Lcom/hpplay/sdk/source/browse/b/b;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/d;->n:Lcom/hpplay/sdk/source/protocol/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_3
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
