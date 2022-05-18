.class Lc/b/a/o/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/o/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc/b/a/o/c$a;

.field private c:Z

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/o/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/o/e$a;

    invoke-direct {v0, p0}, Lc/b/a/o/e$a;-><init>(Lc/b/a/o/e;)V

    iput-object v0, p0, Lc/b/a/o/e;->e:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/o/e;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/b/a/o/e;->b:Lc/b/a/o/c$a;

    return-void
.end method

.method static synthetic c(Lc/b/a/o/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/b/a/o/e;->c:Z

    return p0
.end method

.method static synthetic d(Lc/b/a/o/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/b/a/o/e;->c:Z

    return p1
.end method

.method static synthetic m(Lc/b/a/o/e;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/o/e;->o(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lc/b/a/o/e;)Lc/b/a/o/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/o/e;->b:Lc/b/a/o/c$a;

    return-object p0
.end method

.method private o(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/b/a/o/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/o/e;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lc/b/a/o/e;->o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lc/b/a/o/e;->c:Z

    .line 3
    iget-object v0, p0, Lc/b/a/o/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lc/b/a/o/e;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/b/a/o/e;->d:Z

    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/b/a/o/e;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/o/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lc/b/a/o/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/b/a/o/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/o/e;->p()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/o/e;->q()V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method
