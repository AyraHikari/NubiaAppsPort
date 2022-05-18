.class public Lcom/hpplay/sdk/source/player/d;
.super Lcom/hpplay/sdk/source/player/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/player/d$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x8c

.field private static final B:I = 0x96

.field private static final C:I = 0x97

.field private static final D:I = 0x98

.field private static final E:I = 0x99

.field private static final F:I = 0x9a

.field private static final G:I = 0x3e8

.field private static final H:I = 0x800000

.field private static final w:Ljava/lang/String; = "LelinkPlayerControl"

.field private static final x:Ljava/lang/String; = "1bd6ceeb-fffd-456c-a09c-996053a7a08c"

.field private static final y:I = 0x78

.field private static final z:I = 0x82


# instance fields
.field private I:Lcom/hpplay/sdk/source/protocol/m;

.field private J:Lcom/hpplay/sdk/source/protocol/m;

.field private K:Lcom/hpplay/sdk/source/protocol/m;

.field private L:Lcom/hpplay/sdk/source/protocol/l;

.field private M:Landroid/os/Handler;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/util/concurrent/ThreadPoolExecutor;

.field private ac:Ljava/util/concurrent/BlockingQueue;

.field private ad:Z

.field private ae:Z

.field private af:Lcom/hpplay/sdk/source/protocol/j;

.field v:Lcom/hpplay/sdk/source/protocol/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/a;-><init>()V

    .line 79
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    .line 80
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->J:Lcom/hpplay/sdk/source/protocol/m;

    .line 81
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    .line 87
    iput v1, p0, Lcom/hpplay/sdk/source/player/d;->O:I

    .line 88
    iput v1, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    .line 89
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->R:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    .line 97
    const-string v0, "MediaControl/1.0"

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->aa:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    .line 101
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/d;->ae:Z

    .line 449
    new-instance v0, Lcom/hpplay/sdk/source/player/d$7;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/d$7;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->v:Lcom/hpplay/sdk/source/protocol/j;

    .line 1090
    new-instance v0, Lcom/hpplay/sdk/source/player/d$11;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/player/d$11;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/d;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/hpplay/sdk/source/player/d;->O:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/d;Lcom/hpplay/sdk/source/protocol/m;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/player/d;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/d;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/player/d;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    return v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->X:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/player/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->n()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "duration:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "position:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/d;->P:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "position"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/d;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "LelinkPlayerControl"

    const-string v1, "post to ui"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    iget v1, p0, Lcom/hpplay/sdk/source/player/d;->O:I

    int-to-long v2, v1

    iget v1, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->j()V

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    iput v2, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    .line 267
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iput v2, p0, Lcom/hpplay/sdk/source/player/d;->O:I

    goto :goto_2
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/player/d;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->Y:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 352
    const-string v0, "LelinkPlayerControl"

    const-string v1, "startScreenShot "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->J:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->T:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/player/d;->S:I

    new-instance v3, Lcom/hpplay/sdk/source/player/d$6;

    invoke-direct {v3, p0, p1}, Lcom/hpplay/sdk/source/player/d$6;-><init>(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    .line 393
    return-void
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/player/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->Z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/player/d;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->o()V

    return-void
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->J:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic i(Lcom/hpplay/sdk/source/player/d;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->O:I

    return v0
.end method

.method static synthetic j(Lcom/hpplay/sdk/source/player/d;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/hpplay/sdk/source/player/d$4;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/player/d$4;-><init>(Lcom/hpplay/sdk/source/player/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    .line 243
    return-void
.end method

.method static synthetic k(Lcom/hpplay/sdk/source/player/d;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->ad:Z

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 349
    return-void
.end method

.method static synthetic l(Lcom/hpplay/sdk/source/player/d;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->ae:Z

    return v0
.end method

.method static synthetic m(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 398
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoopMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 399
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    const/4 v0, 0x0

    const v1, 0x3345a

    const/16 v2, 0x5654

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/player/d;->a(III)V

    .line 404
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->W:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    const/16 v1, 0x78

    .line 407
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    sparse-switch v0, :sswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 411
    :sswitch_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->s:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->q()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->h()V

    .line 415
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->e()V

    goto :goto_0

    .line 418
    :sswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->s:Z

    if-eqz v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->q()V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->g()V

    goto :goto_0

    .line 425
    :sswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/d;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic o(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->X:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 5

    .prologue
    const/16 v4, 0x99

    .line 433
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->y()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "PTTH/1.0"

    .line 434
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->al(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "Upgrade"

    .line 435
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->am(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "event"

    .line 436
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->an(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "MediaControl/1.0"

    .line 437
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 438
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->v:Lcom/hpplay/sdk/source/protocol/j;

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/l;->a(Lcom/hpplay/sdk/source/protocol/j;[B)V

    .line 440
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    .line 624
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    :cond_0
    const-class v10, Lcom/hpplay/sdk/source/player/d;

    monitor-enter v10

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 628
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 629
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 632
    :cond_2
    monitor-exit v10

    .line 642
    :goto_0
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 636
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_4

    .line 637
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_4
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->Z:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->s:Z

    .line 1247
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;->stopMirror()V

    .line 1250
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->R:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/player/a;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 107
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->R:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    const-string v1, "5.0.1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    const-string v1, "5.2.1.1"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    const-string v0, "HappyCast3,1"

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->aa:Ljava/lang/String;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    const-string v1, "dongle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->ad:Z

    .line 122
    :cond_2
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "airplay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/d;->S:I

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->V:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getNumsInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "LelinkPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version nums : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ge v0, v1, :cond_4

    .line 127
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lelinkport"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Lcom/hpplay/sdk/source/player/d$1;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/player/d$1;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->T:Ljava/lang/String;

    .line 147
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/d;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/player/d;->S:I

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/l;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    .line 149
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->k()V

    .line 150
    invoke-static {p1}, Lcom/hpplay/sdk/source/b/a;->e(Landroid/content/Context;)Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->r:Lcom/hpplay/sdk/source/api/ILelinkMirrorManager;

    .line 152
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 143
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/hpplay/sdk/source/bean/PhotoControInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1163
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "control-type"

    .line 1167
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "real-width"

    .line 1168
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getRealWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "real-height"

    .line 1169
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getRealHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "display-width"

    .line 1170
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getDisplayWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "display-height"

    .line 1171
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "position-x"

    .line 1172
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getpX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "position-y"

    .line 1173
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getpY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "angle"

    .line 1174
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/bean/PhotoControInfo;->getAngle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1175
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 1177
    new-instance v1, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 1178
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->Q()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->aa:Ljava/lang/String;

    .line 1180
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1181
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 1182
    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 1184
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v2, :cond_0

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/d$3;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$3;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    new-array v3, v4, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0
.end method

.method public addVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1054
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1057
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 1058
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->J()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "HappyCast3,1"

    .line 1059
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 1060
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1061
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 1062
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v1, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v3, [[B

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v3, [[B

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method d()V
    .locals 5

    .prologue
    const/16 v4, 0x96

    .line 592
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 597
    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/16 v1, 0x97

    .line 600
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 604
    :cond_0
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    const/16 v1, 0x8c

    .line 607
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->p()V

    .line 619
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hpplay/sdk/source/player/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hpplay/sdk/source/player/d$a;-><init>(Lcom/hpplay/sdk/source/player/d;Lcom/hpplay/sdk/source/player/d$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method h()V
    .locals 10

    .prologue
    const/16 v9, 0x65

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 844
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    const/16 v2, 0x67

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    if-ne v0, v8, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v0

    if-lez v0, :cond_7

    .line 849
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getStartPosition()I

    move-result v0

    .line 851
    :goto_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 853
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->codeEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    .line 862
    :goto_2
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 863
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->ag(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->ah(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 865
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->Z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 866
    invoke-virtual {v2, v7}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v4

    .line 867
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/hpplay/sdk/source/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 877
    :goto_3
    new-instance v3, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 878
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/protocol/g;->N()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v5, "text/parameters"

    .line 879
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->m(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v5

    iget v3, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    if-ne v9, v3, :cond_4

    const-string v3, "HappyCast/Audio 1.0"

    .line 881
    :goto_4
    invoke-virtual {v5, v3}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    .line 882
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->aa(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 883
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    .line 884
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/protocol/g;->x()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    .line 885
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/protocol/g;->ac(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d;->R:Ljava/lang/String;

    .line 886
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->Y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    .line 887
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    iget-object v5, v5, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->ad(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    .line 888
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    .line 889
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->X(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v5, "Android"

    .line 890
    invoke-virtual {v3, v5}, Lcom/hpplay/sdk/source/protocol/g;->af(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v3

    .line 893
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 894
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 896
    :try_start_0
    const-string v4, "startPosition"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 897
    const-string v0, "playUrl"

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 898
    const-string v0, "urlId"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    const-string v0, "header"

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 901
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 902
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->R()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v4, "text/parameters"

    .line 903
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->m(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    if-ne v9, v0, :cond_5

    const-string v0, "HappyCast/Audio 1.0"

    .line 905
    :goto_5
    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 906
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->x()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 908
    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->ac(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->R:Ljava/lang/String;

    .line 909
    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->Y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 910
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->ad(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 911
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 912
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->X(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v2, "Android"

    .line 913
    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->af(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v3

    .line 920
    :goto_6
    const-string v3, "LelinkPlayerControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v3, "LelinkPlayerControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v4, Lcom/hpplay/sdk/source/player/d$8;

    invoke-direct {v4, p0}, Lcom/hpplay/sdk/source/player/d$8;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    new-array v5, v8, [[B

    aput-object v0, v5, v1

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 860
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    goto/16 :goto_2

    .line 872
    :cond_3
    :try_start_1
    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_3

    .line 873
    :catch_0
    move-exception v3

    .line 874
    const-string v5, "LelinkPlayerControl"

    invoke-static {v5, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 880
    :cond_4
    const-string v3, "MediaControl/1.0"

    goto/16 :goto_4

    .line 904
    :cond_5
    :try_start_2
    const-string v0, "MediaControl/1.0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 914
    :catch_1
    move-exception v0

    .line 915
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    move-object v2, v4

    goto :goto_6

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1206
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1208
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 1213
    :cond_1
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    .line 1215
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 1217
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d;->L:Lcom/hpplay/sdk/source/protocol/l;

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 1221
    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    .line 1223
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->J:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_4

    .line 1224
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->J:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 1226
    :cond_4
    return-void
.end method

.method declared-synchronized j()V
    .locals 4

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1231
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get duration -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x78

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    :try_start_2
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 968
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 992
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 973
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->H()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 974
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->aa:Ljava/lang/String;

    .line 975
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 976
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 977
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 978
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/d$9;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$9;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 1197
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 1198
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    :goto_0
    monitor-exit p0

    return-void

    .line 1201
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/player/d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 996
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    if-eqz v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 1000
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->G()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 1001
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->aa:Ljava/lang/String;

    .line 1002
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1003
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 1004
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/d$10;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$10;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    const/16 v3, 0x82

    .line 1023
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1027
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1156
    invoke-super {p0, p1, p2}, Lcom/hpplay/sdk/source/player/a;->setOption(I[Ljava/lang/Object;)V

    .line 1157
    const v0, 0x100024

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/PhotoControInfo;

    if-eqz v0, :cond_0

    .line 1158
    aget-object v0, p2, v1

    check-cast v0, Lcom/hpplay/sdk/source/bean/PhotoControInfo;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/bean/PhotoControInfo;)V

    .line 1160
    :cond_0
    return-void
.end method

.method public setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 158
    return-void
.end method

.method public setVolume(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1034
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1037
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 1038
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->I()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "HappyCast3,1"

    .line 1039
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "1bd6ceeb-fffd-456c-a09c-996053a7a08c"

    .line 1040
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "1"

    .line 1041
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ak(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 1042
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 1043
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v4, [[B

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v4, [[B

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/hpplay/sdk/source/player/a;->start()V

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    .line 284
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->P:I

    if-lez v0, :cond_0

    .line 285
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_cur_report_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget v1, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(Ljava/lang/String;I)V

    .line 288
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 289
    const-string v0, "ssid"

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->ae:Z

    .line 291
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v1, 0x100019

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v1, 0x100019

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v1, 0x100019

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 296
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v2, 0x10006

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d;->U:Ljava/lang/String;

    .line 300
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v1, 0x100022

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->l()V

    .line 305
    const/4 v0, 0x2

    iget v1, p0, Lcom/hpplay/sdk/source/player/d;->N:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->ad:Z

    if-nez v0, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->n()V

    goto :goto_0

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->T:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/player/d;->S:I

    new-instance v3, Lcom/hpplay/sdk/source/player/d$5;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/player/d$5;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    .line 340
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1099
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/player/d;->s:Z

    if-eqz v0, :cond_1

    .line 1100
    invoke-direct {p0}, Lcom/hpplay/sdk/source/player/d;->q()V

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/player/d;->ae:Z

    .line 1104
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1107
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ab:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 1108
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->ac:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1114
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/player/d;->Q:Z

    .line 1115
    const-string v0, "LelinkPlayerControl"

    const-string v1, "stop00---"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    .line 1121
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->M:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1124
    :cond_3
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->z()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 1125
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "MediaControl/1.0"

    .line 1126
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1127
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    new-instance v2, Lcom/hpplay/sdk/source/player/d$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$2;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1109
    :catch_1
    move-exception v0

    .line 1110
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public subVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1073
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    if-nez v0, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1076
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 1077
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->K()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "HappyCast3,1"

    .line 1078
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 1079
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 1080
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 1081
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->K:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v3, [[B

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d;->I:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d;->af:Lcom/hpplay/sdk/source/protocol/j;

    new-array v3, v3, [[B

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method
