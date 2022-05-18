.class public Lcom/hpplay/sdk/source/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static w:Lcom/hpplay/sdk/source/a/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/hpplay/sdk/source/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Lcom/hpplay/sdk/source/a/f;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private final t:I

.field private u:Landroid/os/Handler;

.field private v:Lcom/hpplay/sdk/source/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "IMEntrance"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->a:Ljava/lang/String;

    .line 29
    const-string v0, "/1/push"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->b:Ljava/lang/String;

    .line 30
    const-string v0, "/1/pushs"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->c:Ljava/lang/String;

    .line 31
    const-string v0, "/1/push/all"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->d:Ljava/lang/String;

    .line 32
    const-string v0, "/1/push/room"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->e:Ljava/lang/String;

    .line 33
    const/16 v0, 0x1f90

    iput v0, p0, Lcom/hpplay/sdk/source/a/c;->f:I

    .line 34
    const/16 v0, 0x1c04

    iput v0, p0, Lcom/hpplay/sdk/source/a/c;->g:I

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/a/c;->k:Z

    .line 51
    iput v1, p0, Lcom/hpplay/sdk/source/a/c;->t:I

    .line 55
    new-instance v0, Lcom/hpplay/sdk/source/a/c$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/a/c$1;-><init>(Lcom/hpplay/sdk/source/a/c;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->v:Lcom/hpplay/sdk/source/a/g;

    return-void
.end method

.method public static a()Lcom/hpplay/sdk/source/a/c;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/hpplay/sdk/source/a/c;->w:Lcom/hpplay/sdk/source/a/c;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/hpplay/sdk/source/a/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/a/c;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/a/c;->w:Lcom/hpplay/sdk/source/a/c;

    .line 77
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/a/c;->w:Lcom/hpplay/sdk/source/a/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    const-string v0, "IMEntrance"

    const-string v1, "getHostPort"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    .line 294
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 296
    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    const-string v1, "IMEntrance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, p1

    .line 303
    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 328
    :goto_0
    return-object p1

    .line 321
    :cond_0
    :try_start_0
    new-array v1, p2, [B

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 323
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 324
    const/4 v2, 0x0

    array-length v3, v0

    sub-int v3, p2, v3

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "IMEntrance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/a/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/a/c;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 120
    const-string v1, "IMEntrance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLelinkSetting  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/a/c;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/a/c;->k:Z

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 164
    :goto_1
    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x1

    goto :goto_1

    .line 128
    :cond_2
    iput-object p2, p0, Lcom/hpplay/sdk/source/a/c;->l:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/hpplay/sdk/source/a/c;->m:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    .line 131
    iput p4, p0, Lcom/hpplay/sdk/source/a/c;->o:I

    .line 132
    iput-object p5, p0, Lcom/hpplay/sdk/source/a/c;->p:Ljava/lang/String;

    .line 133
    iput-wide p6, p0, Lcom/hpplay/sdk/source/a/c;->q:J

    .line 134
    iput-object p8, p0, Lcom/hpplay/sdk/source/a/c;->r:Ljava/lang/String;

    .line 135
    iput-object p9, p0, Lcom/hpplay/sdk/source/a/c;->s:Ljava/lang/String;

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v0, "IMEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLelinkSetting host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  appid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/hpplay/sdk/source/a/f;

    const/16 v2, 0x1f90

    move-object v3, p2

    move-object v4, p9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c;->v:Lcom/hpplay/sdk/source/a/g;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/a/f;->a(Lcom/hpplay/sdk/source/a/g;)V

    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/a/f;->addObserver(Ljava/util/Observer;)V

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    new-instance v1, Lcom/hpplay/sdk/source/a/c$3;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/a/c$3;-><init>(Lcom/hpplay/sdk/source/a/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v0, 0x1

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "IMEntrance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/a/c;)Lcom/hpplay/sdk/source/a/f;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1c04

    .line 307
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/a/c;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 253
    const-string v0, "IMEntrance"

    const-string v1, "sendChannelMsg"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1/push/room"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {v2, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 261
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/a/c$5;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/a/c$5;-><init>(Lcom/hpplay/sdk/source/a/c;)V

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 273
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
    const-string v0, "IMEntrance"

    const-string v1, "sendSingleMsg"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1/push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {v2, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 230
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/a/c$4;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/a/c$4;-><init>(Lcom/hpplay/sdk/source/a/c;)V

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 241
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public a(JLcom/hpplay/sdk/source/a/g;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/hpplay/sdk/source/a/c$2;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/a/c$2;-><init>(Lcom/hpplay/sdk/source/a/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 209
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 102
    const-string v0, "IMEntrance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect imUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/a/c;->k:Z

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 105
    const-string v0, "imconenct"

    const-string v1, "start connect service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-wide/16 v6, -0x1

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    const-string v0, "IMEntrance"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/a/c;->k:Z

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->u:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/a/f;->f()Z

    .line 176
    iput-object v2, p0, Lcom/hpplay/sdk/source/a/c;->j:Lcom/hpplay/sdk/source/a/f;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 181
    :cond_2
    iput-object v2, p0, Lcom/hpplay/sdk/source/a/c;->i:Ljava/util/concurrent/ExecutorService;

    .line 182
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 277
    const-string v0, "IMEntrance"

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "imconenct"

    const-string v1, "start update service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/a/c;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/a/c;->m:Ljava/lang/String;

    iget v4, p0, Lcom/hpplay/sdk/source/a/c;->o:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/a/c;->p:Ljava/lang/String;

    iget-wide v6, p0, Lcom/hpplay/sdk/source/a/c;->q:J

    iget-object v8, p0, Lcom/hpplay/sdk/source/a/c;->r:Ljava/lang/String;

    iget-object v9, p0, Lcom/hpplay/sdk/source/a/c;->s:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    .line 280
    return-void
.end method
