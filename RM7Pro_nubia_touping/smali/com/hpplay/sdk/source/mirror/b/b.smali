.class public Lcom/hpplay/sdk/source/mirror/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NewLelinkRtspClient"

.field private static final g:I = 0x60

.field private static final h:I = 0x61


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Lcom/hpplay/sdk/source/mirror/a/a;

.field private i:Lcom/hpplay/sdk/source/browse/b/b;

.field private j:Lcom/hpplay/sdk/source/protocol/m;

.field private k:Lcom/hpplay/sdk/source/protocol/m;

.field private l:Lcom/hpplay/sdk/source/mirror/a/b;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:D

.field private u:Landroid/content/Context;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;ILjava/lang/String;ZZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/hpplay/sdk/source/mirror/b/b;-><init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;ZZLjava/lang/String;)V

    .line 113
    iput-object p5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->G:Ljava/lang/String;

    .line 114
    iput p6, p0, Lcom/hpplay/sdk/source/mirror/b/b;->E:I

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->m:I

    .line 49
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->t:D

    .line 55
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->z:I

    .line 57
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 60
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->E:I

    .line 67
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->K:Z

    .line 74
    iput-boolean p6, p0, Lcom/hpplay/sdk/source/mirror/b/b;->L:Z

    .line 75
    iput-boolean p7, p0, Lcom/hpplay/sdk/source/mirror/b/b;->M:Z

    .line 76
    iput-object p5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->H:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->i:Lcom/hpplay/sdk/source/browse/b/b;

    .line 78
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->u:Landroid/content/Context;

    .line 79
    iput-object p8, p0, Lcom/hpplay/sdk/source/mirror/b/b;->A:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/d;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    .line 83
    :try_start_0
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

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const-string v0, "NewLelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewLelinkRtspClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->w:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->w:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    .line 100
    :goto_1
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    .line 101
    iput p4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    .line 102
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->i:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->b(Ljava/lang/String;I)V

    .line 104
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->y:Ljava/lang/String;

    .line 108
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "NewLelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    const-string v1, "NewLelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/b/b;Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 695
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->w:Ljava/lang/String;

    .line 696
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->l(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->A:Ljava/lang/String;

    .line 697
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 698
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "application/plist+xml"

    .line 699
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
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

    .line 701
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 702
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 694
    return-object v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/b/b;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    return v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/encrypt/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    return-object v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/mirror/b/b;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->K:Z

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/mirror/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A()Landroid/content/Context;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->u:Landroid/content/Context;

    return-object v0
.end method

.method public B()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "NewLelinkRtspClient"

    const-string v1, " New LelinkRtspClient stopTask "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/a/b;->b()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    .line 525
    const-string v0, "NewLelinkRtspClient"

    const-string v1, "close mProtocalSender"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_2

    .line 529
    const-string v0, "NewLelinkRtspClient"

    const-string v1, "close mMirrorDataSender"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->h()V

    .line 535
    :cond_3
    return-void
.end method

.method public a(I)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getDateTime(J)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->I:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->I:Ljava/lang/String;

    .line 224
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/mirror/h;->a()Lcom/hpplay/sdk/source/mirror/h;

    move-result-object v1

    const-string v4, "HappyCast5,0/500.0"

    .line 225
    invoke-static {v4}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->Encrypt(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->Encrypt(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/hpplay/sdk/source/mirror/h;->a([B[B)V

    .line 228
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->C:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_1
    new-instance v4, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v5, "event-port"

    .line 236
    invoke-virtual {v4, v5, p1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v4

    const-string v5, "timing-port"

    .line 237
    invoke-virtual {v4, v5, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v4

    const-string v5, "uuid"

    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/b/b;->H:Ljava/lang/String;

    .line 238
    invoke-virtual {v4, v5, v6}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v4

    const-string v5, "mst"

    .line 239
    invoke-virtual {v4, v5, v1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v1

    const-string v4, "stream-time"

    .line 240
    invoke-virtual {v1, v4, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    .line 241
    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/protocol/f;->b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "type"

    const/16 v5, 0x61

    .line 242
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    .line 243
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->y:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/hpplay/sdk/source/protocol/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 245
    invoke-direct {p0, v1, v4}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v3, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v3, [[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 251
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getHeader([B)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v4, "NewLelinkRtspClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SETUP call back agin ----->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "453"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const/16 v2, 0xc

    .line 286
    :cond_1
    :goto_2
    return v2

    .line 218
    :cond_2
    const-string v0, "20180319000900"

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const-string v4, "NewLelinkRtspClient"

    invoke-static {v4, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v1, v2

    goto/16 :goto_1

    .line 258
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 259
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 261
    if-eqz v0, :cond_1

    move v4, v2

    .line 262
    :goto_3
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Lcom/dd/plist/NSDictionary;

    .line 264
    if-eqz v1, :cond_5

    const-string v5, "data-port"

    invoke-virtual {v1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 265
    const-string v5, "data-port"

    invoke-virtual {v1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->m:I

    .line 267
    new-instance v1, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    .line 268
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->i:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/hpplay/sdk/source/mirror/b/b;->m:I

    invoke-virtual {v1, v5, v6}, Lcom/hpplay/sdk/source/protocol/m;->b(Ljava/lang/String;I)V

    .line 269
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->g()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 270
    if-eqz v1, :cond_5

    move v2, v3

    .line 271
    goto :goto_2

    .line 262
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 281
    :catch_1
    move-exception v0

    .line 282
    const-string v1, "NewLelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Lcom/hpplay/sdk/source/mirror/a/a;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->N:Lcom/hpplay/sdk/source/mirror/a/a;

    .line 423
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/a/b;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 426
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->I:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->M:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/a/b;->a([Ljava/nio/ByteBuffer;)V

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 416
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/m;->f()Z

    move-result v2

    .line 126
    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    const-string v4, "NewLelinkRtspClient"

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/encrypt/d;Ljava/lang/String;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_3

    .line 131
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "603"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/16 v0, 0xa

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "453"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/16 v0, 0xc

    goto :goto_0

    .line 138
    :cond_3
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 140
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->u:Landroid/content/Context;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->A:Ljava/lang/String;

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/hpplay/sdk/source/protocol/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "NewLelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start send connection cmd the request is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v1, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v2

    .line 145
    if-eqz v2, :cond_5

    .line 146
    const-string v3, "NewLelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connection data callback --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v6, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4
    :goto_1
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 153
    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 154
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/d;->o()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    const-string v3, "HappyCast5,0/500.0"

    .line 156
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->w:Ljava/lang/String;

    .line 157
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->g(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->A:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    .line 159
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->j(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    .line 160
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->h(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    const-string v3, "5.5"

    .line 161
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->i(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->g(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    .line 163
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->e(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->d(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    const-string v3, "0"

    .line 165
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v1, [[B

    aput-object v2, v6, v0

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v2

    .line 168
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v2

    .line 169
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mirror/b/b;->b(Ljava/lang/String;)Z

    move-result v2

    .line 171
    if-eqz v2, :cond_0

    move v0, v1

    .line 172
    goto/16 :goto_0

    .line 148
    :cond_5
    const-string v2, "NewLelinkRtspClient"

    const-string v3, "connection cmd not response !"

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 450
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 451
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 573
    .line 574
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 575
    aget-object v0, v0, v3

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->J:Z

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    .line 580
    :try_start_0
    const-string v1, "NewLelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMirrorInfo --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 582
    if-eqz v0, :cond_4

    .line 584
    const-string v1, "mst"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, "mst"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->C:Ljava/lang/String;

    .line 587
    :cond_0
    const-string v1, "ast"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    const-string v1, "ast"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->D:Ljava/lang/String;

    .line 590
    :cond_1
    const-string v1, "displays"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 591
    const-string v1, "displays"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 592
    if-eqz v0, :cond_8

    move v7, v3

    .line 593
    :goto_0
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    array-length v1, v1

    if-ge v7, v1, :cond_8

    .line 594
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, v7

    check-cast v1, Lcom/dd/plist/NSDictionary;

    move v6, v3

    .line 595
    :goto_1
    invoke-virtual {v1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v6, v4, :cond_7

    .line 596
    invoke-virtual {v1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string v5, "width"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 597
    const-string v4, "width"

    invoke-virtual {v1, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    .line 595
    :cond_2
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 599
    :cond_3
    invoke-virtual {v1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string v5, "height"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 600
    const-string v4, "height"

    invoke-virtual {v1, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 686
    :catch_0
    move-exception v0

    .line 687
    const-string v1, "NewLelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v3

    .line 690
    :goto_3
    return v0

    .line 602
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string v5, "refresh-rate"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    :try_start_2
    const-string v4, "refresh-rate"

    invoke-virtual {v1, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    .line 607
    cmpg-double v8, v4, v10

    if-gez v8, :cond_6

    .line 608
    div-double v4, v10, v4

    .line 610
    :cond_6
    iput-wide v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->t:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 611
    :catch_1
    move-exception v4

    .line 612
    :try_start_3
    const-string v5, "NewLelinkRtspClient"

    invoke-static {v5, v4}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 593
    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 618
    :cond_8
    const-string v0, "NewLelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->t:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 620
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    .line 621
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    .line 622
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    if-le v1, v4, :cond_d

    .line 623
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    move v1, v0

    .line 627
    :goto_4
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    .line 628
    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    if-le v4, v5, :cond_9

    .line 629
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    .line 633
    :cond_9
    if-le v1, v0, :cond_b

    .line 634
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    if-le v0, v1, :cond_a

    .line 635
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 636
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    .line 679
    :goto_5
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    .line 680
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    .line 681
    const-string v0, "NewLelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->t:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 682
    goto/16 :goto_3

    .line 638
    :cond_a
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 639
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    goto :goto_5

    .line 644
    :cond_b
    sparse-switch v1, :sswitch_data_0

    .line 664
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    if-le v0, v1, :cond_c

    .line 665
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 666
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    goto :goto_5

    .line 650
    :sswitch_0
    const/16 v0, 0x780

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 651
    const/16 v0, 0x438

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    goto :goto_5

    .line 659
    :sswitch_1
    const/16 v0, 0x500

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 660
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    goto :goto_5

    .line 668
    :cond_c
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    .line 669
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_d
    move v1, v0

    goto/16 :goto_4

    .line 644
    nop

    :sswitch_data_0
    .sparse-switch
        0x500 -> :sswitch_1
        0x780 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    .line 456
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 460
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    .line 461
    return-void
.end method

.method public d()Z
    .locals 8

    .prologue
    const/16 v6, 0xea6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 292
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->K:Z

    .line 294
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    :goto_0
    new-instance v1, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v4, "timing-port"

    .line 299
    invoke-virtual {v1, v4, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v1

    const-string v4, "ast"

    .line 300
    invoke-virtual {v1, v4, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    .line 301
    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/protocol/f;->b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "uuid"

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->H:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1, v4}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "type"

    const/16 v5, 0x60

    .line 303
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "play-mode"

    .line 304
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;Z)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "sample-format"

    const/16 v5, 0xd4

    .line 305
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "sample-rate"

    const v5, 0xac44

    .line 306
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "control-port"

    .line 307
    invoke-virtual {v0, v1, v2, v4, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "latencyMax"

    .line 308
    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const-string v4, "latencyMin"

    .line 309
    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    .line 310
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->y:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 313
    invoke-direct {p0, v1, v4}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v3, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v3, [[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 320
    const-string v1, "NewLelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SETUP call back agin ----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 324
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 326
    if-eqz v0, :cond_0

    move v4, v2

    .line 327
    :goto_1
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Lcom/dd/plist/NSDictionary;

    .line 329
    if-eqz v1, :cond_1

    const-string v5, "data-port"

    invoke-virtual {v1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 330
    const-string v0, "data-port"

    invoke-virtual {v1, v0}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->z:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 345
    :cond_0
    :goto_2
    return v2

    .line 327
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "NewLelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 465
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    .line 466
    return-void
.end method

.method public e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 351
    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->y:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    .line 351
    invoke-direct {p0, v2, v0}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v1, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v2

    .line 354
    if-nez v2, :cond_0

    .line 355
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 363
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->M:Z

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Lcom/hpplay/sdk/source/mirror/a/b;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/b/b;->M:Z

    invoke-direct {v0, v3, v4}, Lcom/hpplay/sdk/source/mirror/a/b;-><init>(Lcom/hpplay/sdk/source/protocol/m;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    .line 360
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->l:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/a/b;->start()V

    .line 362
    :cond_1
    const-string v0, "NewLelinkRtspClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECORD call back  ----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 363
    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/b;->B:I

    .line 196
    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 197
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/d;->s()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    .line 196
    invoke-direct {p0, v2, v1}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v0, [[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    new-array v6, v0, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b;->F:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v2

    .line 200
    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    .line 203
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/b$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/b/b$a;-><init>(Lcom/hpplay/sdk/source/mirror/b/b;)V

    .line 380
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b/b$a;->start()V

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->q()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->J:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->H:Ljava/lang/String;

    return-object v0
.end method

.method public n()D
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->t:D

    return-wide v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->L:Z

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->p:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->q:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->r:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->s:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->n:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->o:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->k:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->z:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b;->i:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
