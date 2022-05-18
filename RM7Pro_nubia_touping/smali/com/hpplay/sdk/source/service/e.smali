.class public Lcom/hpplay/sdk/source/service/e;
.super Lcom/hpplay/sdk/source/service/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/service/e$a;,
        Lcom/hpplay/sdk/source/service/e$b;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "NewLelinkService"

.field private static final n:Ljava/lang/String; = "/www.hpplay.com.cn/tv/app/DnsTxtInfo"

.field private static final o:I = 0x6f


# instance fields
.field private A:Lcom/hpplay/sdk/source/protocol/j;

.field l:Lcom/hpplay/sdk/source/service/e$a;

.field private p:Lcom/hpplay/sdk/source/protocol/m;

.field private q:Lcom/hpplay/sdk/source/browse/b/b;

.field private r:Lcom/hpplay/sdk/source/player/a;

.field private s:Lcom/hpplay/sdk/source/service/e$b;

.field private t:Lcom/hpplay/sdk/source/service/b$a;

.field private u:I

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/b;-><init>()V

    .line 47
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    .line 53
    iput v1, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    .line 56
    iput v1, p0, Lcom/hpplay/sdk/source/service/e;->x:I

    .line 377
    new-instance v0, Lcom/hpplay/sdk/source/service/e$4;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/e$4;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->A:Lcom/hpplay/sdk/source/protocol/j;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/e;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/e;->n()V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/e;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/e;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/e;->p()V

    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/e;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/e;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/service/e;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/hpplay/sdk/source/service/e;->x:I

    return v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/protocol/j;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->A:Lcom/hpplay/sdk/source/protocol/j;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/service/e;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/e;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/service/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/service/e;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    return v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/service/e$b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    return-object v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic l(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/e;->o()V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/www.hpplay.com.cn/tv/app/DnsTxtInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    new-instance v2, Lcom/hpplay/sdk/source/service/e$3;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/service/e$3;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 370
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    new-instance v1, Lcom/hpplay/sdk/source/service/e$5;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/e$5;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e$b;->post(Ljava/lang/Runnable;)Z

    .line 440
    :cond_0
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const v4, 0x33c2b

    const/4 v3, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/e;->k()V

    .line 445
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 446
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    .line 447
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 449
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c2a

    invoke-interface {v0, v1, v2, v4}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 458
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/service/e;->v:Z

    .line 459
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->t:Lcom/hpplay/sdk/source/service/b$a;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->t:Lcom/hpplay/sdk/source/service/b$a;

    invoke-interface {v0, v4}, Lcom/hpplay/sdk/source/service/b$a;->onConnectFailed(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/service/b$a;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e;->t:Lcom/hpplay/sdk/source/service/b$a;

    .line 61
    return-void
.end method

.method public b()Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/e;->v:Z

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 81
    new-instance v0, Lcom/hpplay/sdk/source/service/e$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/service/e$b;-><init>(Lcom/hpplay/sdk/source/service/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->w:Ljava/lang/String;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lelinkport"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/service/e;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget v0, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    if-ge v0, v2, :cond_2

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "remote"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/service/e;->u:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->w:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    new-instance v3, Lcom/hpplay/sdk/source/service/e$1;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/service/e$1;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    .line 182
    :cond_1
    :goto_2
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/e;->w:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/service/e;->u:I

    new-instance v3, Lcom/hpplay/sdk/source/service/e$2;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/service/e$2;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    goto :goto_2
.end method

.method public e()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/e;->v:Z

    .line 464
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/e;->g()V

    .line 465
    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 470
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/a;->a(Lcom/hpplay/sdk/source/protocol/b;)V

    .line 472
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->r:Lcom/hpplay/sdk/source/player/a;

    .line 475
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/e;->z:Z

    .line 476
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->l:Lcom/hpplay/sdk/source/service/e$a;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->l:Lcom/hpplay/sdk/source/service/e$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/e$a;->interrupt()V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->p:Lcom/hpplay/sdk/source/protocol/m;

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->d:Lcom/hpplay/sdk/source/protocol/b;

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->d:Lcom/hpplay/sdk/source/protocol/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b;->a()V

    .line 490
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->q:Lcom/hpplay/sdk/source/browse/b/b;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->e:Lcom/hpplay/sdk/source/api/IConnectListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()V
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->s:Lcom/hpplay/sdk/source/service/e$b;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e$b;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :try_start_1
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized m()V
    .locals 2

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->l:Lcom/hpplay/sdk/source/service/e$a;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/hpplay/sdk/source/service/e$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/e$a;-><init>(Lcom/hpplay/sdk/source/service/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/e;->l:Lcom/hpplay/sdk/source/service/e$a;

    .line 324
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e;->l:Lcom/hpplay/sdk/source/service/e$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/e$a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    :try_start_1
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
