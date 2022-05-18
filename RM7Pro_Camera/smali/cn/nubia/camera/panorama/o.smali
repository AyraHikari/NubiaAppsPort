.class public Lcn/nubia/camera/panorama/o;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/b/k;

.field private e:Lcn/nubia/camera/k/t;

.field private f:Lcn/nubia/camera/k/t;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Landroid/util/Size;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 39
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->e:Lcn/nubia/camera/k/t;

    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->f:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/o;->g:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public H()Landroid/util/Size;
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    return-object v0
.end method

.method protected a()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/panorama/o;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcn/nubia/camera/panorama/o;->d:Lcn/nubia/b/k;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/panorama/o;->a(I[Lcn/nubia/b/m;)V

    .line 108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 2

    .line 46
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 47
    invoke-virtual {p4}, Lcn/nubia/camera/k/x;->G()Lcn/nubia/camera/k/w;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object p1

    .line 48
    invoke-virtual {p4}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p2

    .line 49
    iput-object p2, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    const/4 p3, 0x0

    .line 50
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 51
    iget-object p4, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    mul-int/2addr p4, p5

    aget-object p5, p1, p3

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p5

    aget-object v0, p1, p3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr p5, v0

    if-le p4, p5, :cond_0

    aget-object p4, p1, p3

    .line 52
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    aget-object p5, p1, p3

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    sub-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-double p4, p4

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p4, p4, v0

    if-gez p4, :cond_0

    .line 53
    aget-object p4, p1, p3

    iput-object p4, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 70
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/o;->g:Z

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 75
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aj()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 76
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aj()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->o()Lcn/nubia/b/d;

    move-result-object v3

    new-array v4, v1, [Lcn/nubia/b/m;

    iget-object v5, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    aput-object v5, v4, v2

    .line 79
    invoke-virtual {p1, v3, v1, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v3

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->o()Lcn/nubia/b/d;

    move-result-object v4

    new-array v0, v0, [Lcn/nubia/b/m;

    iget-object v5, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    aput-object v5, v0, v2

    iget-object v5, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    aput-object v5, v0, v1

    .line 81
    invoke-virtual {v3, v4, v1, v0}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge v2, v1, :cond_2

    .line 87
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->i()V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->p()Lcn/nubia/b/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->v()Lcom/a/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v1}, Lcn/nubia/b/a;->b(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p1

    new-array v0, v0, [Lcn/nubia/b/m;

    iget-object v3, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lcn/nubia/camera/panorama/o;->a(Lcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V

    .line 92
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->C()V

    return-void

    :catchall_0
    move-exception p1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, p1, p3, v0}, Lcn/nubia/camera/panorama/o;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method protected b()V
    .locals 9

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 120
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    .line 123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/panorama/o;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->c:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/o;->i:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/o;->d:Lcn/nubia/b/k;

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->d:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/panorama/o;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->d:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcn/nubia/camera/panorama/o;->b:Lcn/nubia/b/n;

    const v5, 0x8018

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/panorama/o;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcn/nubia/camera/k/o;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/o;->g:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/panorama/o;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/panorama/o;->g:Z

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/o;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
