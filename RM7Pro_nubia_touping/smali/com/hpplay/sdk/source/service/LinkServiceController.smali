.class public Lcom/hpplay/sdk/source/service/LinkServiceController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field private static final c:I = 0xa

.field private static final d:Ljava/lang/String; = "LinkServiceController"


# instance fields
.field b:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private e:Landroid/content/Context;

.field private f:Lcom/hpplay/sdk/source/browse/b/b;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field private j:I

.field private k:Landroid/os/Handler;

.field private l:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/hpplay/sdk/source/service/LinkServiceController$2;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$2;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->b:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->e:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/service/LinkServiceController$1;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/api/IConnectListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->h:Lcom/hpplay/sdk/source/api/IConnectListener;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/LinkServiceController;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/LinkServiceController;Lcom/hpplay/sdk/source/browse/b/b;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->b(I)V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/service/LinkServiceController;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/LinkServiceController;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->m:I

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v3, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    invoke-static {}, Lcom/hpplay/sdk/source/process/e;->a()Lcom/hpplay/sdk/source/process/e;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    new-instance v2, Lcom/hpplay/sdk/source/service/LinkServiceController$7;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$7;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/e;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Lcom/hpplay/sdk/source/process/e$a;)V

    .line 268
    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->m:I

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v0, "LinkServiceController"

    const-string v1, "===retry failed ===="

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/service/LinkServiceController;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/browse/b/b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/hpplay/sdk/source/service/e;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/service/e;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 144
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Landroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->b:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 146
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->l:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 147
    new-instance v1, Lcom/hpplay/sdk/source/service/LinkServiceController$3;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$3;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/service/b$a;)V

    .line 167
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 168
    return-void
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/service/LinkServiceController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/hpplay/sdk/source/service/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/service/d;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 173
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->b:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 175
    new-instance v1, Lcom/hpplay/sdk/source/service/LinkServiceController$4;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$4;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/service/b$a;)V

    .line 195
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 196
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/hpplay/sdk/source/service/a;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/service/a;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Landroid/content/Context;)V

    .line 201
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 202
    new-instance v1, Lcom/hpplay/sdk/source/service/LinkServiceController$5;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$5;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/service/b$a;)V

    .line 217
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->b:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 218
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 219
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/hpplay/sdk/source/service/c;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/service/c;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 224
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->l:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V

    .line 226
    new-instance v1, Lcom/hpplay/sdk/source/service/LinkServiceController$6;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/service/LinkServiceController$6;-><init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/service/b$a;)V

    .line 234
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->b:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/b;->a(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 235
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/b;->d()V

    .line 236
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getBrowserInfos()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->k:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->b()V

    .line 97
    :cond_1
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IConnectListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->h:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 67
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/api/IRelevantInfoListener;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->l:Lcom/hpplay/sdk/source/api/IRelevantInfoListener;

    .line 240
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->i:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 63
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    .line 102
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->j()Ljava/util/Map;

    move-result-object v0

    const-string v1, "vv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c()V

    .line 124
    return-void

    .line 109
    :cond_1
    iput v2, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_3

    .line 114
    iput v3, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    if-eqz v0, :cond_0

    .line 118
    iput v4, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 127
    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    const-string v0, "LinkServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type:LINK_TYPE_LELINK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->e()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 131
    const-string v0, "LinkServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type:LINK_TYPE_DLNA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->f()V

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 134
    const-string v0, "LinkServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->f:Lcom/hpplay/sdk/source/browse/b/b;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type:LINK_TYPE_INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->g()V

    goto :goto_0

    .line 136
    :cond_3
    iget v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->d()V

    goto :goto_0
.end method
