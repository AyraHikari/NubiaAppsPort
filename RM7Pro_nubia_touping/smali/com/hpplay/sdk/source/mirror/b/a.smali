.class public Lcom/hpplay/sdk/source/mirror/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/b/a$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "Happycast/1.0"

.field private static final g:Ljava/lang/String; = "LelinkRtspClient"


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field a:I

.field private h:Lcom/hpplay/sdk/source/browse/b/b;

.field private i:Lcom/hpplay/sdk/source/protocol/m;

.field private j:Lcom/hpplay/sdk/source/protocol/m;

.field private k:Lcom/hpplay/sdk/source/mirror/a/b;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:D

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/b/b;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->l:I

    .line 48
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->s:D

    .line 55
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->z:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->D:Ljava/lang/String;

    .line 199
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 66
    iput-boolean p7, p0, Lcom/hpplay/sdk/source/mirror/b/a;->F:Z

    .line 67
    iput-boolean p8, p0, Lcom/hpplay/sdk/source/mirror/b/a;->G:Z

    .line 68
    iput-object p6, p0, Lcom/hpplay/sdk/source/mirror/b/a;->C:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    .line 70
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->t:Landroid/content/Context;

    .line 71
    iput-object p5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "raop"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "raop"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    const-string v0, "LelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defult port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->D:Ljava/lang/String;

    .line 84
    :cond_1
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

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
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

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 95
    :goto_2
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    .line 96
    iput p4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 90
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    .line 92
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/b/a;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method private a([B)V
    .locals 4

    .prologue
    const/16 v3, 0x1bbc

    .line 579
    if-nez p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v0, "LelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :try_start_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    .line 586
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 587
    if-eqz v0, :cond_0

    .line 588
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 589
    if-eqz v0, :cond_0

    .line 590
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSArray;->objectAtIndex(I)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 591
    if-eqz v0, :cond_0

    .line 592
    const-string v1, "dataPort"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 593
    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->l:I

    goto :goto_0

    .line 596
    :cond_2
    const/16 v0, 0x1bbc

    :try_start_1
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A()Landroid/content/Context;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->t:Landroid/content/Context;

    return-object v0
.end method

.method public B()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/a/b;->b()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 555
    :cond_2
    return-void
.end method

.method public a(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 229
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 230
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->p(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "RTP/AVP/TCP;unicast;mode=record"

    .line 232
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "8A3D47D2C13675B8"

    .line 235
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "0"

    .line 236
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "2317505163"

    .line 237
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "AirPlay/150.33"

    .line 238
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 241
    if-nez v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 246
    :goto_0
    return v0

    .line 245
    :cond_0
    const-string v0, "LelinkRtspClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SETUP call back agin ----->"

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

    .line 246
    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/mirror/a/a;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/a/b;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 442
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->E:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->G:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/a/b;->a([Ljava/nio/ByteBuffer;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 450
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    new-instance v2, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    .line 102
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->v:I

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->b(Ljava/lang/String;I)V

    .line 103
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/m;->f()Z

    move-result v2

    .line 104
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 107
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/g;->C()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->O(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->S(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "0"

    .line 110
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->T(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    .line 111
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->U(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "0"

    .line 112
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "happyplay"

    .line 113
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->V(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v0, [[B

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mirror/b/a;->a([B)V

    .line 130
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public b()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 135
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->b(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->g()Z

    move-result v0

    .line 138
    if-nez v0, :cond_0

    move v0, v7

    .line 196
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string v8, "Happycast/1.0"

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getDateTime(J)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 149
    :goto_1
    invoke-static {}, Lcom/hpplay/sdk/source/mirror/h;->a()Lcom/hpplay/sdk/source/mirror/h;

    move-result-object v0

    const-string v1, "Happycast/1.0"

    .line 150
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->Encrypt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v6}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->Encrypt(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/h;->a([B[B)V

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getmRealm()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getmRealm()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getmNonce()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getmMethod()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hpplay/sdk/source/common/store/Session;->getmUri()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->makeAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    .line 162
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->D:Ljava/lang/String;

    const-string v1, "5.3.2.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 164
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->D()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ap(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 166
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->Q(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    .line 167
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->v(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v6}, Lcom/hpplay/sdk/source/protocol/g;->W(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v8}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 170
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aa(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "happyplay"

    .line 172
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->V(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v9}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 189
    :goto_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    new-array v2, v9, [[B

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v0

    .line 190
    if-eqz v0, :cond_4

    .line 191
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mirror/b/a;->b(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 146
    :cond_1
    const-string v0, "20180319000900"

    move-object v6, v0

    goto/16 :goto_1

    .line 158
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    goto :goto_2

    .line 175
    :cond_3
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 176
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->D()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->O(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->S(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 179
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->T(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    .line 180
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->U(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v6}, Lcom/hpplay/sdk/source/protocol/g;->W(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v8}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 183
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->B:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aa(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "happyplay"

    .line 185
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->V(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v9}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    goto :goto_3

    :cond_4
    move v0, v7

    .line 196
    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 609
    .line 610
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 611
    aget-object v0, v0, v3

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    const-string v0, "happycast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->u:Z

    .line 616
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    .line 618
    :try_start_0
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 619
    if-eqz v0, :cond_4

    .line 620
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSNumber;

    invoke-virtual {v1}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    .line 621
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSNumber;

    invoke-virtual {v1}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    .line 622
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 623
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    .line 624
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    .line 625
    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    if-le v4, v5, :cond_9

    .line 626
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    move v4, v1

    .line 630
    :goto_0
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    .line 631
    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    iget v6, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    if-le v5, v6, :cond_1

    .line 632
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    .line 636
    :cond_1
    if-le v4, v1, :cond_5

    .line 637
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    if-le v1, v4, :cond_3

    .line 638
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 639
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    .line 682
    :goto_1
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    .line 683
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :try_start_1
    const-string v1, "refreshRate"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSNumber;

    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    .line 687
    cmpg-double v4, v0, v8

    if-gez v4, :cond_2

    .line 688
    div-double v0, v8, v0

    .line 690
    :cond_2
    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->s:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    :goto_2
    :try_start_2
    const-string v0, "LelinkRtspClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->s:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 720
    :goto_3
    return v0

    .line 641
    :cond_3
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 642
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v3

    .line 720
    goto :goto_3

    .line 647
    :cond_5
    sparse-switch v4, :sswitch_data_0

    .line 667
    :try_start_3
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    if-le v1, v4, :cond_6

    .line 668
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 669
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    goto :goto_1

    .line 653
    :sswitch_0
    const/16 v1, 0x780

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 654
    const/16 v1, 0x438

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    goto :goto_1

    .line 662
    :sswitch_1
    const/16 v1, 0x500

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 663
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    goto/16 :goto_1

    .line 671
    :cond_6
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 672
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    goto/16 :goto_1

    .line 691
    :catch_1
    move-exception v0

    .line 692
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 700
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    .line 703
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 704
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 705
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 706
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 707
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 708
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 709
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 710
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 711
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hpplay/sdk/source/common/store/Session;->setmRealm(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/common/store/Session;->setmNonce(Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/common/store/Session;->setmMethod(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    const-string v2, "/stream.xml"

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/common/store/Session;->setmUri(Ljava/lang/String;)V

    .line 715
    const-string v1, "LelinkRtspClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "author  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_8
    const/16 v0, 0xa

    goto/16 :goto_3

    :cond_9
    move v4, v1

    goto/16 :goto_0

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x500 -> :sswitch_1
        0x780 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 476
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    .line 477
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 481
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    .line 482
    return-void
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 204
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 205
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 207
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->o(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    .line 208
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->v(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 210
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "8A3D47D2C13675B8"

    .line 211
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "2317505163"

    .line 212
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "application/sdp"

    .line 213
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->m(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    const-string v5, "AirPlay/150.33"

    .line 215
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------announce ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 219
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 220
    if-nez v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 224
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 486
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    .line 487
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->q(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v3, "RTP/AVP/UDP;unicast;mode=screen;timing_port=49944;x-events;control_port=56986;redundant=2"

    .line 253
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v3, "8A3D47D2C13675B8"

    .line 256
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v3, "0"

    .line 257
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v3, "2317505163"

    .line 258
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v3, "AirPlay/150.33"

    .line 259
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 260
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 --- > \n\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   \n\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v3

    .line 262
    const-string v0, ""

    .line 263
    if-eqz v3, :cond_0

    .line 264
    new-instance v0, Ljava/lang/String;

    array-length v4, v3

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 265
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SETUP audio = \r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SETUP call back"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "\r\n\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mirror/b/c;-><init>()V

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/hpplay/sdk/source/mirror/b/c;->a(Ljava/lang/String;[BI)V

    .line 277
    const-string v3, "Transport"

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mirror/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    const-string v0, ";control_port=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 280
    const-string v0, ";timing_port=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 283
    const-string v0, ";server_port=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->z:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :cond_1
    :goto_0
    const-string v0, ";mode=(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move v0, v1

    .line 295
    :goto_1
    return v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 273
    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    .line 289
    const-string v3, "LelinkRtspClient"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 491
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    .line 492
    return-void
.end method

.method public e()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 300
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 301
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->r(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "npt=0-"

    .line 303
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->w(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "seq=1920;rtptime=0"

    .line 304
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->x(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 306
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "8A3D47D2C13675B8"

    .line 307
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "2317505163"

    .line 308
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "AirPlay/150.33"

    .line 309
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v2

    .line 311
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 312
    if-nez v2, :cond_0

    .line 313
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 321
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->G:Z

    if-eqz v0, :cond_1

    .line 317
    new-instance v0, Lcom/hpplay/sdk/source/mirror/a/b;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->G:Z

    invoke-direct {v0, v3, v4}, Lcom/hpplay/sdk/source/mirror/a/b;-><init>(Lcom/hpplay/sdk/source/protocol/m;Z)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->k:Lcom/hpplay/sdk/source/mirror/a/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/a/b;->start()V

    .line 320
    :cond_1
    const-string v0, "LelinkRtspClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RECORD call back  ----->"

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

    .line 321
    goto :goto_0
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 326
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 327
    const-string v2, "volume"

    .line 328
    new-instance v3, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 329
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->s(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 331
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "8A3D47D2C13675B8"

    .line 332
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "2317505163"

    .line 333
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "8"

    .line 334
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "AirPlay/150.33"

    .line 335
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 339
    if-nez v2, :cond_0

    .line 340
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 344
    :goto_0
    return v0

    .line 343
    :cond_0
    const-string v0, "LelinkRtspClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_PARAMETER call back ----->"

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

    .line 344
    goto :goto_0
.end method

.method public g()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 349
    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 350
    const-string v2, "volume: -3.000000"

    .line 351
    new-instance v3, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->y:Ljava/lang/String;

    .line 352
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->t(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 354
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "8A3D47D2C13675B8"

    .line 355
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "2317505163"

    .line 356
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "19"

    .line 357
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    const-string v4, "AirPlay/150.33"

    .line 358
    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v3

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string v3, "LelinkRtspClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_PARAMETER call back ----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v4, v1, [[B

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v2

    .line 363
    if-nez v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 367
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public h()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 372
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 373
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 374
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->A()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->w:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "8A3D47D2C13675B8"

    .line 377
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->A(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "2317505163"

    .line 378
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->B(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 379
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "AirPlay/150.33"

    .line 380
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a;->j:Lcom/hpplay/sdk/source/protocol/m;

    new-array v2, v4, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 384
    const-string v0, "LelinkRtspClient"

    const-string v1, "Session End"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return v4

    .line 388
    :cond_0
    :try_start_0
    const-string v1, "LelinkRtspClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start in options exe keep-alive-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v1, "LelinkRtspClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->D:Ljava/lang/String;

    const-string v1, "5.3.2.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lcom/hpplay/sdk/source/mirror/b/a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/b/a$a;-><init>(Lcom/hpplay/sdk/source/mirror/b/a;)V

    .line 400
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b/a$a;->start()V

    .line 404
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/b/a;->B()V

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isconference"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isconference"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->u:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public n()D
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->s:D

    return-wide v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->F:Z

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->o:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->p:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->q:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->r:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->m:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->n:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->i:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->z:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a;->h:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
