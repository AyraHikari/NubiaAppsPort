.class public Lcn/nubia/camera/at/i;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field b:Lcn/nubia/camera/at/d;

.field private c:Lcn/nubia/camera/k/p;

.field private d:Lcn/nubia/camera/k/af;

.field private e:Lcn/nubia/b/n;

.field private f:Lcn/nubia/b/k;

.field private g:Lcn/nubia/camera/k/t;

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    .line 39
    iput-object v0, p0, Lcn/nubia/camera/at/i;->e:Lcn/nubia/b/n;

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/at/i;->f:Lcn/nubia/b/k;

    .line 41
    new-instance v1, Lcn/nubia/camera/k/t;

    invoke-direct {v1}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/at/i;->g:Lcn/nubia/camera/k/t;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/at/i;->h:Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/at/i;->b:Lcn/nubia/camera/at/d;

    .line 47
    new-instance v0, Lcn/nubia/camera/at/d;

    invoke-direct {v0}, Lcn/nubia/camera/at/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/at/i;->b:Lcn/nubia/camera/at/d;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/i;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/at/i;->h:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lcn/nubia/camera/k/af$b;)Z
    .locals 5

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/at/i;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 145
    monitor-exit v0

    return p1

    .line 148
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {p0}, Lcn/nubia/camera/at/i;->i()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Lcn/nubia/camera/k/af;->a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V

    .line 149
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/k/af;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/at/i;)Lcn/nubia/b/k;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/at/i;->f:Lcn/nubia/b/k;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/k/p;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    return-object p0
.end method


# virtual methods
.method protected E()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/at/i;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcn/nubia/camera/at/i;->e:Lcn/nubia/b/n;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/at/i;->a(I[Lcn/nubia/b/m;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 56
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 57
    iget-object p2, p0, Lcn/nubia/camera/at/i;->b:Lcn/nubia/camera/at/d;

    check-cast p4, Lcn/nubia/camera/at/g;

    invoke-virtual {p2, p4}, Lcn/nubia/camera/at/d;->a(Lcn/nubia/camera/at/g;)V

    .line 59
    iget-object p2, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p2}, Lcn/nubia/camera/k/p;->a()V

    .line 62
    :cond_0
    new-instance p2, Lcn/nubia/camera/k/v;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    .line 63
    iget-object p2, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    if-nez p2, :cond_1

    .line 64
    new-instance p2, Lcn/nubia/camera/k/af;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/af;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/at/i;->g:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 103
    new-instance v0, Lcn/nubia/camera/at/i$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/nubia/camera/at/i$1;-><init>(Lcn/nubia/camera/at/i;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;)V

    .line 139
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/i;->a(Lcn/nubia/camera/k/af$b;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 9

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/at/i;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 72
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 74
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/at/i;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/at/i;->e:Lcn/nubia/b/n;

    .line 75
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/at/i;->f:Lcn/nubia/b/k;

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/at/i;->g:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/at/i;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/at/i;->e:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/at/i;->f:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "StarrySkyStreamController"

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {p0}, Lcn/nubia/camera/at/i;->m()Lcn/nubia/camera/k/y;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v5}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "capture session mode: 0X%x"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->c()I

    move-result v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "preview session mode: 0X%x"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v6, v0

    .line 90
    iget-object v1, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/at/i;->e:Lcn/nubia/b/n;

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/at/i;->c:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/at/i;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/at/i;->d:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->a()V

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
