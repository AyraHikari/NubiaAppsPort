.class public Lcn/nubia/camera/l/e;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/b/k;

.field private e:Lcn/nubia/camera/k/t;

.field private f:Lcn/nubia/camera/k/t;

.field private g:Lcn/nubia/camera/k/p;

.field private h:Ljava/lang/Object;

.field private i:Lcn/nubia/camera/k/af;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 48
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/l/e;->e:Lcn/nubia/camera/k/t;

    .line 49
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/l/e;->f:Lcn/nubia/camera/k/t;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcn/nubia/camera/l/e;->j:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/l/e;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/k/af;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/l/e;)Lcn/nubia/b/k;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/e;->d:Lcn/nubia/b/k;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/l/e;)Lcn/nubia/b/k;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/e;->c:Lcn/nubia/b/k;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/k/p;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    return-object p0
.end method


# virtual methods
.method protected E()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    .line 71
    iget-object v3, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/l/e;->a(I[Lcn/nubia/b/m;)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 56
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 57
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->Q()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    new-instance p2, Lcn/nubia/camera/k/ac;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 60
    :cond_0
    new-instance p2, Lcn/nubia/camera/k/v;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    .line 62
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    if-nez p2, :cond_1

    .line 63
    new-instance p2, Lcn/nubia/camera/k/af;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/af;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    :cond_1
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcn/nubia/camera/l/e;->j:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/k/af$a;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/l/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcn/nubia/camera/l/d;->a(II)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af$a;)V

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/e;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/l/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p3}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    .line 141
    iget-object p3, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    monitor-enter p3

    .line 142
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    new-instance v3, Lcn/nubia/camera/l/e$1;

    invoke-direct {v3, p0, p4, p1, p2}, Lcn/nubia/camera/l/e$1;-><init>(Lcn/nubia/camera/l/e;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;)V

    invoke-virtual {v2, v0, v1, v3, p5}, Lcn/nubia/camera/k/af;->a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V

    .line 184
    monitor-exit p3

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 10

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 79
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "DngStreamController"

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    .line 85
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x100

    invoke-direct {v0, v7, v8, v9, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/l/e;->d:Lcn/nubia/b/k;

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/l/e;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->o()Lcn/nubia/b/d;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/l/e;->d:Lcn/nubia/b/k;

    iget-object v7, p0, Lcn/nubia/camera/l/e;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->w()Lcom/a/a/a/d;

    move-result-object v8

    invoke-interface {v8}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    invoke-virtual {v0, v7, v8}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jpeg Size: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->y()Lcn/nubia/b/b;

    move-result-object v0

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    array-length v8, v0

    if-lez v8, :cond_0

    aget-object v0, v0, v1

    .line 95
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 103
    :goto_0
    new-instance v8, Lcn/nubia/b/k;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v8, v9, v0, v7, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v8, p0, Lcn/nubia/camera/l/e;->c:Lcn/nubia/b/k;

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/l/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->o()Lcn/nubia/b/d;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/l/e;->c:Lcn/nubia/b/k;

    iget-object v7, p0, Lcn/nubia/camera/l/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->w()Lcom/a/a/a/d;

    move-result-object v8

    invoke-interface {v8}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    invoke-virtual {v0, v7, v8}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/l/e;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/l/e;->d:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->c()I

    move-result v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "Session mode: 0X%x"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/l/e;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/l/e;->d:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v5}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "Snapshot Session mode: 0X%x"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/l/e;->b:Lcn/nubia/b/n;

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 198
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/l/e;->g:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/l/e;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/l/e;->j:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/l/d;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcn/nubia/camera/l/d;->a(II)V

    .line 203
    iget-object v1, p0, Lcn/nubia/camera/l/e;->i:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->a()V

    .line 205
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

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcn/nubia/camera/l/e;->j:Z

    return-void
.end method
