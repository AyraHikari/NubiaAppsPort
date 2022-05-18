.class public Lcom/hpplay/sdk/source/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "Switching Protocols"

.field private static c:Lcom/hpplay/sdk/source/protocol/b; = null

.field private static final d:Ljava/lang/String; = "L[[[[["

.field private static final e:Ljava/lang/String; = "]]]]]L"

.field private static final f:Ljava/lang/String; = "L\\[\\[\\[\\[\\["

.field private static final g:I = 0x4

.field private static final h:Ljava/lang/String; = "\\]\\]\\]\\]\\]L"

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = -0x1

.field private static final l:I = 0x1


# instance fields
.field private m:Lcom/hpplay/sdk/source/protocol/m;

.field private n:Z

.field private o:Lcom/hpplay/sdk/source/protocol/l;

.field private p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field private q:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field private r:Landroid/content/Context;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "LelinkPassthroughChannel"

    sput-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->u:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/b;)Lcom/hpplay/sdk/source/api/IRelevantInfoListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)Lcom/hpplay/sdk/source/bean/DescriptionBean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 548
    new-instance v1, Lcom/hpplay/sdk/source/bean/DescriptionBean;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;-><init>()V

    .line 549
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setManifestVer(I)V

    .line 550
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setVer(I)V

    .line 551
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setSubscribe(I)V

    .line 552
    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setSessionId(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setManifestType(I)V

    .line 554
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setHandler(I)V

    .line 555
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setId(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->setCuid(Ljava/lang/String;)V

    .line 557
    return-object v1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/protocol/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/protocol/b;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/b;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 480
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 481
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    .line 451
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/protocol/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    .line 452
    new-instance v0, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->c()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 454
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
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

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    .line 456
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "event"

    .line 457
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->b(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "Upgrade"

    .line 458
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->am(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 459
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 460
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    new-instance v2, Lcom/hpplay/sdk/source/protocol/b$5;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/protocol/b$5;-><init>(Lcom/hpplay/sdk/source/protocol/b;)V

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/l;->a(Lcom/hpplay/sdk/source/protocol/j;[B)V

    .line 473
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->a()V

    .line 474
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    :cond_0
    return-void

    .line 588
    :cond_1
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manifestType sm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 590
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 591
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 592
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 593
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/b;->u:Ljava/util/HashMap;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/protocol/b;->b(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/protocol/b;->t:Z

    if-eqz v1, :cond_0

    .line 385
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 386
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 387
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_0
    new-instance v1, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v2, "length"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v1

    const-string v2, "data"

    .line 390
    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->q()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 577
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "application/plist+xml"

    .line 578
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    .line 579
    invoke-static {}, Lcom/hpplay/sdk/source/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

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

    .line 580
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 581
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 576
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    const-string v1, "release SpecialChannel"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 568
    :cond_1
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    const-string v1, "release complation"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    .line 570
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->r:Landroid/content/Context;

    .line 571
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 572
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 573
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b;->r:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 168
    return-void
.end method

.method public varargs declared-synchronized a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;I[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    const/4 v1, -0x1

    const-string v2, "the channel is not opening"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onSendRelevantInfoResult(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    if-eqz p1, :cond_3

    .line 200
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->setOption(I)V

    .line 214
    :goto_1
    sparse-switch p2, :sswitch_data_0

    .line 367
    :cond_2
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, p1, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_3
    :try_start_2
    new-instance p1, Lcom/hpplay/sdk/source/protocol/b$3;

    invoke-direct {p1, p0}, Lcom/hpplay/sdk/source/protocol/b$3;-><init>(Lcom/hpplay/sdk/source/protocol/b;)V

    .line 211
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->setOption(I)V

    goto :goto_1

    .line 216
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    .line 218
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->encode()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 224
    :sswitch_1
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    .line 226
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 232
    :sswitch_2
    new-instance v0, Lcom/hpplay/sdk/source/bean/ErrorBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/ErrorBean;-><init>()V

    .line 233
    const-string v1, "unsupport"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/ErrorBean;->setError(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/ErrorBean;->setErrorCode(I)V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/bean/ErrorBean;->setManifestVer(I)V

    .line 237
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ErrorBean;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 243
    :sswitch_3
    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    const-string v0, "data"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v0, "manifestVer"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v0, "appID"

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    :goto_3
    const/4 v0, 0x2

    :try_start_4
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 254
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 259
    :sswitch_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    :try_start_5
    const-string v0, "manifestVer"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 265
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 262
    :catch_1
    move-exception v0

    .line 263
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 269
    :sswitch_5
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, 0x0

    :try_start_7
    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 273
    new-instance v2, Lorg/json/JSONObject;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v0, "manifestVer"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_5
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "danmakuProperty json body :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 276
    :cond_4
    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;

    if-eqz v0, :cond_7

    .line 277
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;

    .line 278
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->toJson(I)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto :goto_5

    .line 282
    :catch_2
    move-exception v0

    .line 283
    :try_start_8
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 288
    :sswitch_6
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x0

    :try_start_9
    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 292
    new-instance v2, Lorg/json/JSONObject;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    const-string v0, "manifestVer"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    const-string v0, "uri"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_6
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "danmaku json body :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 296
    :cond_5
    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/DanmakuBean;

    if-eqz v0, :cond_6

    .line 297
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DanmakuBean;

    .line 298
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/bean/DanmakuBean;->toJson(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    goto :goto_6

    .line 302
    :catch_3
    move-exception v0

    .line 303
    :try_start_a
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 308
    :sswitch_7
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/bean/StaffBean;

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/StaffBean;

    .line 311
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 312
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 314
    :try_start_b
    const-string v4, "manifestVer"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v4, "deviceType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v3, "department"

    iget-object v4, v0, Lcom/hpplay/sdk/source/bean/StaffBean;->department:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v3, "jobNumber"

    iget-object v4, v0, Lcom/hpplay/sdk/source/bean/StaffBean;->jobNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v3, "mac"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v3, "uri"

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/StaffBean;->mirrorUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  json body >>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    :goto_7
    move-object v1, v0

    .line 327
    goto/16 :goto_2

    .line 323
    :catch_4
    move-exception v0

    .line 324
    :try_start_c
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_7

    .line 330
    :sswitch_8
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lorg/json/JSONArray;

    .line 332
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 334
    :try_start_d
    const-string v3, "serviceInfos"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v0, "msgType"

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v1

    goto/16 :goto_2

    .line 337
    :catch_5
    move-exception v0

    .line 338
    :try_start_e
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 343
    :sswitch_9
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    const-string v2, "sendPassthroughData: RELEVANCE_RATE_PALY"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    .line 345
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 347
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 348
    const-string v3, "manifestVer"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v3, "rate"

    float-to-double v4, v2

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 350
    sget-object v3, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPassthroughData: RELEVANCE_RATE_PALY rate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v1

    goto/16 :goto_2

    .line 352
    :catch_6
    move-exception v0

    .line 353
    :try_start_10
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 358
    :sswitch_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 360
    :try_start_11
    const-string v2, "manifestVer"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v1

    goto/16 :goto_2

    .line 362
    :catch_7
    move-exception v0

    .line 363
    :try_start_12
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_6

    :cond_7
    move-object v0, v1

    goto/16 :goto_5

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0xb -> :sswitch_4
        0xc -> :sswitch_9
        0xf -> :sswitch_a
        0x64 -> :sswitch_3
        0x2710 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 410
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->t:Z

    if-eqz v0, :cond_1

    .line 412
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 414
    const-string v2, "pc"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v2, "020017ff"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 417
    const-string v2, "suid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v2, "ruid"

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v2, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v2, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    iget-object v3, v3, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v2, "content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->passthrough_push_url:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    sget-object v2, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->passthrough_push_url:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    const/4 v2, 0x1

    iput v2, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 426
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/protocol/b$4;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/protocol/b$4;-><init>(Lcom/hpplay/sdk/source/protocol/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 439
    :cond_1
    if-eqz p2, :cond_0

    .line 440
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    new-array v1, v1, [[B

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 494
    :try_start_0
    const-string v2, ""

    .line 495
    const-string v1, ""

    .line 496
    const-string v3, "L\\[\\[\\[\\[\\["

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v6, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v6

    .line 497
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 498
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ne v4, v2, :cond_1

    .line 499
    aget-object v1, v3, v2

    const-string v4, "]]]]]L"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 497
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v5, :cond_0

    .line 501
    aget-object v0, v3, v2

    const-string v4, "\\]\\]\\]\\]\\]L"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    goto :goto_1

    .line 504
    :cond_2
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \nbody -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 506
    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/hpplay/sdk/source/bean/DescriptionBean;

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/bean/DescriptionBean;-><init>(Lorg/json/JSONObject;)V

    .line 510
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->getManifestType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 511
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    new-instance v0, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;-><init>(Lorg/json/JSONObject;)V

    .line 513
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getManifestVer()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 514
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getMf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hisilicon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hi3798MV310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "is4Kdangel"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 520
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getMf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiTV-ANSP0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "isXiaomiANSP0"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 524
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/ConnectInfoBean;->getSm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/protocol/b;->c(Ljava/lang/String;)V

    .line 545
    :cond_5
    :goto_3
    return-void

    .line 518
    :cond_6
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v1

    const-string v2, "is4Kdangel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 543
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 528
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->getHandler()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 529
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    const-string v3, "SDK HANDLE"

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->q:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    if-eqz v2, :cond_5

    .line 531
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->q:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->getManifestType()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onSendRelevantInfoResult(ILjava/lang/String;)V

    goto :goto_3

    .line 534
    :cond_8
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    const-string v3, "APP HANDLE"

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    if-eqz v2, :cond_5

    .line 536
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/b;->p:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->getManifestType()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;->onSendRelevantInfoResult(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    new-instance v2, Lcom/hpplay/sdk/source/protocol/b$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/hpplay/sdk/source/protocol/b$2;-><init>(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILjava/lang/String;Lcom/hpplay/sdk/source/protocol/m$a;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->t:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 8

    .prologue
    .line 82
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    .line 88
    iget-object v6, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v7, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    new-instance v0, Lcom/hpplay/sdk/source/protocol/b$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/protocol/b$1;-><init>(Lcom/hpplay/sdk/source/protocol/b;Lcom/hpplay/sdk/source/api/IConnectListener;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, p1, p2, v7, v0}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILjava/lang/String;Lcom/hpplay/sdk/source/protocol/m$a;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/b;->t:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b;->v:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/b;->n:Z

    .line 134
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b;->s:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->m:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->o:Lcom/hpplay/sdk/source/protocol/l;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->b()V

    .line 141
    :cond_1
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/b;->t:Z

    .line 142
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    invoke-direct {p0, p3, p1, p4}, Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;IZ)Lcom/hpplay/sdk/source/bean/DescriptionBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/bean/DescriptionBean;->encode()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string v2, "L[[[[["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]]]]]L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const-string v1, "L[[[[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]]]]]L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-object v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b;->q:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 172
    return-void
.end method
