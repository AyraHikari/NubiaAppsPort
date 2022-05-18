.class public Lcn/nubia/camera/ao/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/ao/m;

.field private c:Lcn/nubia/camera/g/h;

.field private d:Lcn/nubia/camera/g/e;

.field private e:Lcn/nubia/camera/ao/c;

.field private f:Lcn/nubia/camera/aj/i;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ao/m;Lcn/nubia/camera/g/h;Lcn/nubia/camera/g/e;Lcn/nubia/camera/ao/c;Lcn/nubia/camera/aj/i;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/ao/g;->g:Z

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcn/nubia/camera/ao/g;->h:Landroid/os/Handler;

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/ao/g;->i:Z

    .line 58
    iput-boolean v0, p0, Lcn/nubia/camera/ao/g;->j:Z

    .line 59
    iput-boolean v0, p0, Lcn/nubia/camera/ao/g;->k:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/g;->l:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    .line 36
    iput-object p2, p0, Lcn/nubia/camera/ao/g;->b:Lcn/nubia/camera/ao/m;

    .line 37
    iput-object p3, p0, Lcn/nubia/camera/ao/g;->c:Lcn/nubia/camera/g/h;

    .line 38
    iput-object p4, p0, Lcn/nubia/camera/ao/g;->d:Lcn/nubia/camera/g/e;

    .line 39
    iput-object p5, p0, Lcn/nubia/camera/ao/g;->e:Lcn/nubia/camera/ao/c;

    .line 40
    iput-object p6, p0, Lcn/nubia/camera/ao/g;->f:Lcn/nubia/camera/aj/i;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ao/g;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/g;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/ao/g;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ao/g;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcn/nubia/camera/ao/g;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ao/g;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/camera/ao/g;->e()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/aj/i;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/ao/g;->f:Lcn/nubia/camera/aj/i;

    return-object p0
.end method

.method private d()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_normal_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Effect_CTF_CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/g;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/g;->i:Z

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcn/nubia/camera/ao/g;->h:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/camera/ao/g$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ao/g$2;-><init>(Lcn/nubia/camera/ao/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ao/g;->f:Lcn/nubia/camera/aj/i;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/ao/g;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/ao/g;->k:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcn/nubia/camera/ao/g;->k:Z

    .line 130
    iget-object v1, p0, Lcn/nubia/camera/ao/g;->h:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/camera/ao/g$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ao/g$3;-><init>(Lcn/nubia/camera/ao/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcn/nubia/camera/ao/g;->g:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/ao/g;->f:Lcn/nubia/camera/aj/i;

    return-void
.end method

.method public b()V
    .locals 7

    .line 63
    new-instance v5, Lcn/nubia/camera/ao/g$1;

    invoke-direct {v5, p0}, Lcn/nubia/camera/ao/g$1;-><init>(Lcn/nubia/camera/ao/g;)V

    const/4 v6, 0x0

    .line 72
    iput-boolean v6, p0, Lcn/nubia/camera/ao/g;->i:Z

    .line 73
    iput-boolean v6, p0, Lcn/nubia/camera/ao/g;->j:Z

    .line 74
    iput-boolean v6, p0, Lcn/nubia/camera/ao/g;->k:Z

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->d:Lcn/nubia/camera/g/e;

    invoke-virtual {v0}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v0

    .line 76
    invoke-direct {p0}, Lcn/nubia/camera/ao/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->e:Lcn/nubia/camera/ao/c;

    :cond_0
    move-object v2, v0

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->b:Lcn/nubia/camera/ao/m;

    iget-object v1, p0, Lcn/nubia/camera/ao/g;->c:Lcn/nubia/camera/g/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->b:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    .line 83
    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    div-long v4, v2, v4

    long-to-int v0, v4

    if-lt v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->f:Lcn/nubia/camera/aj/i;

    if-eqz v0, :cond_3

    .line 90
    invoke-interface {v0, v2, v3}, Lcn/nubia/camera/aj/i;->a(J)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_3

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v6}, Lcn/nubia/camera/a/a;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/ao/g;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 107
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ao/g;->j:Z

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/ao/g;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
