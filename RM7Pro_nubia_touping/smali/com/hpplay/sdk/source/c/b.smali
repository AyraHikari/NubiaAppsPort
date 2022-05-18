.class public Lcom/hpplay/sdk/source/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/c/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = ".1"

.field private static final b:Ljava/lang/String; = "LelinkServerInstance"

.field private static d:Lcom/hpplay/sdk/source/c/b; = null

.field private static final f:Ljava/lang/String; = "http://"


# instance fields
.field private c:Lcom/hpplay/sdk/source/c/a;

.field private e:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x1f9b

    iput v0, p0, Lcom/hpplay/sdk/source/c/b;->h:I

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/c/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/hpplay/sdk/source/c/b;->h:I

    return v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/c/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/hpplay/sdk/source/c/b;->h:I

    return p1
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/c/b;Lcom/hpplay/sdk/source/c/a;)Lcom/hpplay/sdk/source/c/a;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    return-object p1
.end method

.method public static a()Lcom/hpplay/sdk/source/c/b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/hpplay/sdk/source/c/b;->d:Lcom/hpplay/sdk/source/c/b;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/hpplay/sdk/source/c/b;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/c/b;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/c/b;->d:Lcom/hpplay/sdk/source/c/b;

    .line 38
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/c/b;->d:Lcom/hpplay/sdk/source/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/c/b;)Lcom/hpplay/sdk/source/c/a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/c/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getHostCount()I

    move-result v3

    .line 189
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 190
    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getIpStr(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 195
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "LelinkServerInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " local ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  current ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/c/a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-string v1, "LelinkServerInstance"

    const-string v2, " server dei restart server  "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/b;->d()V

    .line 89
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-nez v1, :cond_2

    .line 104
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/sdk/source/c/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_3
    return-object v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "LelinkServerInstance"

    const-string v2, "wifi change restart server  "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/b;->f()V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "LelinkServerInstance"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_3
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 106
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/hpplay/sdk/source/c/b;->e:Landroid/content/Context;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/c/b;->i:Z

    .line 48
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/c/b;->i:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->f()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/c/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/c/b$a;-><init>(Lcom/hpplay/sdk/source/c/b;Lcom/hpplay/sdk/source/c/b$1;)V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/c/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "LelinkServerInstance"

    const-string v1, "  already start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/c/a;->k()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    .line 71
    :cond_0
    const-string v0, "LelinkServerInstance"

    const-string v1, "stop server"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->c:Lcom/hpplay/sdk/source/c/a;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/b;->e()V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/b;->d()V

    .line 114
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    const-string v1, ""

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/c/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getWifiIp()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/c/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v0, v1

    .line 172
    :goto_0
    :try_start_1
    const-string v1, "LelinkServerInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi   ip  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    LoaclIp  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :goto_1
    return-object v0

    .line 174
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/c/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 178
    :goto_2
    :try_start_3
    const-string v1, "LelinkServerInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use moble host ip  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/c/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    LoaclIp  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getLoaclIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    :goto_3
    const-string v2, "LelinkServerInstance"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
