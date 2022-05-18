.class public Lcom/hpplay/sdk/source/service/a;
.super Lcom/hpplay/sdk/source/service/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/service/a$b;,
        Lcom/hpplay/sdk/source/service/a$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "DlnaLinkService"


# instance fields
.field private m:Lcom/hpplay/sdk/source/protocol/m;

.field private n:Z

.field private o:Lcom/hpplay/sdk/source/browse/b/b;

.field private p:Lcom/hpplay/sdk/source/player/a;

.field private q:Lcom/hpplay/sdk/source/service/b$a;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcom/hpplay/sdk/source/service/a$a;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/b;-><init>()V

    .line 26
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/m;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/a;Lcom/hpplay/sdk/source/player/a;)Lcom/hpplay/sdk/source/player/a;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/protocol/m;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/a;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/service/b$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->q:Lcom/hpplay/sdk/source/service/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/service/a;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/service/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/a;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/service/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/service/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/hpplay/sdk/source/service/a;->s:I

    return v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method static synthetic g(Lcom/hpplay/sdk/source/service/a;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->o:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method static synthetic h(Lcom/hpplay/sdk/source/service/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/a;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->t:Lcom/hpplay/sdk/source/service/a$a;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/hpplay/sdk/source/service/a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/a$a;-><init>(Lcom/hpplay/sdk/source/service/a;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/a;->t:Lcom/hpplay/sdk/source/service/a$a;

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->t:Lcom/hpplay/sdk/source/service/a$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/a$a;->start()V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public a(Lcom/hpplay/sdk/source/service/b$a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/a;->q:Lcom/hpplay/sdk/source/service/b$a;

    .line 39
    return-void
.end method

.method public b()Lcom/hpplay/sdk/source/player/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/service/a;->n:Z

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 59
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/a;->o:Lcom/hpplay/sdk/source/browse/b/b;

    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->o:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->o:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "dlna_location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->r:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getPort(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/service/a;->s:I

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a;->r:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/service/a;->s:I

    new-instance v3, Lcom/hpplay/sdk/source/service/a$1;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/service/a$1;-><init>(Lcom/hpplay/sdk/source/service/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x3

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/service/a;->n:Z

    .line 187
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/a;->g()V

    .line 188
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Lcom/hpplay/sdk/source/service/b;->g()V

    .line 193
    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 194
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/service/a;->u:Z

    .line 195
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->t:Lcom/hpplay/sdk/source/service/a$a;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->t:Lcom/hpplay/sdk/source/service/a$a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/a$a;->interrupt()V

    .line 198
    :cond_0
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/service/a;->n:Z

    .line 199
    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->o:Lcom/hpplay/sdk/source/browse/b/b;

    .line 200
    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a;->release()V

    .line 203
    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->p:Lcom/hpplay/sdk/source/player/a;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->b()V

    .line 207
    iput-object v1, p0, Lcom/hpplay/sdk/source/service/a;->m:Lcom/hpplay/sdk/source/protocol/m;

    .line 209
    :cond_2
    return-void
.end method
