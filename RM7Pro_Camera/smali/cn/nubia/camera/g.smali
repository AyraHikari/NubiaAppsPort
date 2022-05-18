.class public Lcn/nubia/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/camera/g;->a:Z

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcn/nubia/camera/g;->b:Landroid/content/BroadcastReceiver;

    .line 28
    iput-boolean v0, p0, Lcn/nubia/camera/g;->d:Z

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/g;->e:Z

    .line 131
    new-instance v0, Lcn/nubia/camera/g$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/g$2;-><init>(Lcn/nubia/camera/g;)V

    iput-object v0, p0, Lcn/nubia/camera/g;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/g;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/g;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/camera/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/g;->g()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/g;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/camera/g;->d:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/g;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/camera/g;->e:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/g;->j()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/g;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/camera/g;->d:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/g;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/g;->f:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcn/nubia/camera/g;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcn/nubia/camera/g$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/g$1;-><init>(Lcn/nubia/camera/g;)V

    iput-object v1, p0, Lcn/nubia/camera/g;->b:Landroid/content/BroadcastReceiver;

    .line 112
    iget-object v2, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcn/nubia/camera/g;->a:Z

    return-void
.end method

.method private i()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcn/nubia/camera/g;->a:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/camera/g;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcn/nubia/camera/g;->b:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcn/nubia/camera/g;->a:Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/g;->i()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/g;->c:Landroid/app/Activity;

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/g;->h()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/camera/g;->e:Z

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/g;->g()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcn/nubia/camera/g;->d:Z

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/g;->d:Z

    return-void
.end method

.method public f()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcn/nubia/camera/g;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcn/nubia/camera/g;->d:Z

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/g;->e:Z

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/g;->g()V

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/g;->j()V

    :cond_0
    return-void
.end method
