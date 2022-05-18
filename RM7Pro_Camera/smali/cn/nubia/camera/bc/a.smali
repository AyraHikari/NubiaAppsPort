.class public Lcn/nubia/camera/bc/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcom/zte/camera/b/b;

.field private b:Lcom/zte/camera/a/b;

.field private c:Ljava/lang/Boolean;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bc/a;->c:Ljava/lang/Boolean;

    .line 38
    iput-boolean v0, p0, Lcn/nubia/camera/bc/a;->i:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    const/4 p1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bc/a;->c:Ljava/lang/Boolean;

    .line 38
    iput-boolean p1, p0, Lcn/nubia/camera/bc/a;->i:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bc/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/bc/a;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bc/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bc/a;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcn/nubia/camera/bc/a;->i:Z

    return p1
.end method

.method private declared-synchronized b(Lcn/nubia/camera/ad/a;)V
    .locals 3

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/bc/c;

    invoke-virtual {v0}, Lcn/nubia/camera/bc/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/bc/c;

    invoke-virtual {v0}, Lcn/nubia/camera/bc/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/zte/camera/a/b;

    iget-object v2, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v2}, Lcom/zte/camera/b/b;->e()Lcom/zte/camera/a/c$a;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zte/camera/a/b;-><init>(Lcom/zte/camera/a/c$a;Landroid/util/Size;)V

    iput-object v1, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    .line 169
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static d()Lcn/nubia/camera/bc/a;
    .locals 2

    .line 50
    new-instance v0, Lcn/nubia/camera/bc/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/bc/a;-><init>(I)V

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 148
    new-instance v0, Lcom/zte/camera/b/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09038c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcn/nubia/camera/bc/a$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/bc/a$1;-><init>(Lcn/nubia/camera/bc/a;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/zte/camera/b/b;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zte/camera/b/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    return-void
.end method

.method private e()V
    .locals 5

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    iget-object v1, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v1}, Lcom/zte/camera/b/b;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vlog_effect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/camera/bc/a;->b(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ui_change_vlog"

    .line 125
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bc/a;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/camera/b/b;->a(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v0}, Lcom/zte/camera/b/b;->g()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcn/nubia/camera/bc/a;->i:Z

    .line 130
    invoke-direct {p0}, Lcn/nubia/camera/bc/a;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d_()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcn/nubia/camera/bc/a;->i:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->b()V

    .line 141
    iget-boolean v0, p0, Lcn/nubia/camera/bc/a;->i:Z

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v0}, Lcom/zte/camera/b/b;->h()Z

    move-result v0

    return v0
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/zte/camera/b/b;->k()V

    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 57
    iget-boolean p3, p0, Lcn/nubia/camera/bc/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00ca

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/camera/bc/a;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 68
    iget-boolean v0, p0, Lcn/nubia/camera/bc/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v0}, Lcom/zte/camera/b/b;->d()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 90
    iget-boolean v0, p0, Lcn/nubia/camera/bc/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 94
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bc/a;->c:Ljava/lang/Boolean;

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/zte/camera/a/b;->a()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/bc/a;->b:Lcom/zte/camera/a/b;

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v0}, Lcom/zte/camera/b/b;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 77
    iget-boolean v0, p0, Lcn/nubia/camera/bc/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bc/a;->c:Ljava/lang/Boolean;

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/bc/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/bc/a;->b(Lcn/nubia/camera/ad/a;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/bc/a;->a:Lcom/zte/camera/b/b;

    invoke-virtual {v0}, Lcom/zte/camera/b/b;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 82
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
