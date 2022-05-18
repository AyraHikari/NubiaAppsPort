.class public Lcn/nubia/camera/o/h;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/b/n;

.field private e:Lcn/nubia/b/k;

.field private f:Lcn/nubia/camera/k/t;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    const-string v0, "ElectronicFnoStreamController"

    .line 32
    iput-object v0, p0, Lcn/nubia/camera/o/h;->b:Ljava/lang/String;

    .line 36
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->f:Lcn/nubia/camera/k/t;

    .line 37
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/nubia/camera/o/h;->h:Z

    .line 39
    iput-boolean v1, p0, Lcn/nubia/camera/o/h;->i:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->j:Ljava/lang/Object;

    return-void
.end method

.method private J()Z
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f01b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_anti_shake"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f030b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public H()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method protected a()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/o/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/o/h;->i:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Lcn/nubia/b/m;

    .line 51
    iget-boolean v4, p0, Lcn/nubia/camera/o/h;->h:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/o/h;->e:Lcn/nubia/b/k;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/o/h;->d:Lcn/nubia/b/n;

    :goto_0
    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/o/h;->a(I[Lcn/nubia/b/m;)V

    goto :goto_1

    :cond_1
    new-array v1, v3, [Lcn/nubia/b/m;

    .line 54
    iget-object v4, p0, Lcn/nubia/camera/o/h;->c:Lcn/nubia/b/n;

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/o/h;->a(I[Lcn/nubia/b/m;)V

    .line 56
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/o/h;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 97
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/o/h;->i:Z

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-boolean v0, p0, Lcn/nubia/camera/o/h;->h:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/o/h;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    :cond_0
    new-array p1, v1, [Lcn/nubia/b/m;

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/o/h;->e:Lcn/nubia/b/k;

    aput-object v0, p1, v2

    invoke-virtual {p0, v1, p1}, Lcn/nubia/camera/o/h;->a(I[Lcn/nubia/b/m;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Lcn/nubia/b/m;

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/o/h;->d:Lcn/nubia/b/n;

    aput-object v0, p1, v2

    invoke-virtual {p0, v1, p1}, Lcn/nubia/camera/o/h;->a(I[Lcn/nubia/b/m;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 9

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 64
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->c:Lcn/nubia/b/n;

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/o/h;->J()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/o/h;->h:Z

    const-string v1, "ElectronicFnoStreamController"

    if-nez v0, :cond_1

    const-string v0, "antiShakeOn false"

    .line 73
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    .line 77
    :cond_0
    new-instance v0, Lcn/nubia/b/n;

    iget-object v1, p0, Lcn/nubia/camera/o/h;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->d:Lcn/nubia/b/n;

    .line 78
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "antiShakeOn true"

    .line 80
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/16 v5, 0xa

    invoke-direct {v0, v1, v2, v3, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/o/h;->e:Lcn/nubia/b/k;

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/o/h;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/o/h;->e:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/o/h;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/o/h;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/o/h;->e:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/o/h;->h:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcn/nubia/camera/o/h;->c:Lcn/nubia/b/n;

    const v5, 0x800d

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/o/h;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lcn/nubia/camera/o/h;->c:Lcn/nubia/b/n;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/o/h;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcn/nubia/camera/o/h;->i:Z

    return-void
.end method

.method public e()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/o/h;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 111
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/o/h;->i:Z

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-boolean v0, p0, Lcn/nubia/camera/o/h;->h:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/o/h;->f:Lcn/nubia/camera/k/t;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Lcn/nubia/b/m;

    .line 116
    iget-object v3, p0, Lcn/nubia/camera/o/h;->c:Lcn/nubia/b/n;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/o/h;->a(I[Lcn/nubia/b/m;)V

    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
