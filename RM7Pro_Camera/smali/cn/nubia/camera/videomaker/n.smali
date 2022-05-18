.class public Lcn/nubia/camera/videomaker/n;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 28
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/n;->d:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/n;->e:Z

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/n;->f:Ljava/lang/Object;

    .line 32
    iput v0, p0, Lcn/nubia/camera/videomaker/n;->g:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/videomaker/n;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/nubia/b/m;

    .line 37
    iget-object v4, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    aput-object v4, v1, v2

    iget-object v2, p0, Lcn/nubia/camera/videomaker/n;->c:Lcn/nubia/b/k;

    aput-object v2, v1, v3

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/videomaker/n;->a(I[Lcn/nubia/b/m;)V

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcn/nubia/b/m;

    .line 39
    iget-object v4, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/videomaker/n;->a(I[Lcn/nubia/b/m;)V

    .line 41
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

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 1

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/videomaker/n;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 p3, 0x1

    .line 76
    :try_start_0
    iput-boolean p3, p0, Lcn/nubia/camera/videomaker/n;->e:Z

    .line 77
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lcn/nubia/camera/videomaker/n;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcn/nubia/b/m;

    const/4 p2, 0x0

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->c:Lcn/nubia/b/k;

    aput-object v0, p1, p2

    iget-object p2, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    aput-object p2, p1, p3

    invoke-virtual {p0, p3, p1}, Lcn/nubia/camera/videomaker/n;->a(I[Lcn/nubia/b/m;)V

    return p3

    :catchall_0
    move-exception p2

    .line 77
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method protected b()V
    .locals 8

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v6

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    .line 58
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/4 v7, 0x1

    invoke-direct {v0, v1, v2, v3, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/n;->c:Lcn/nubia/b/k;

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/n;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->c:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 64
    iget-object v3, p0, Lcn/nubia/camera/videomaker/n;->b:Lcn/nubia/b/n;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/videomaker/n;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/n;->e:Z

    return-void
.end method

.method public r()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/videomaker/n;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/n;->e:Z

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/n;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
