.class public Lcn/nubia/camera/ar/e;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ar/e$b;,
        Lcn/nubia/camera/ar/e$a;
    }
.end annotation


# instance fields
.field b:Lcn/nubia/camera/k/ab$a;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/b/k;

.field private e:Lcn/nubia/camera/k/t;

.field private f:Lcn/nubia/camera/k/p;

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:Lcn/nubia/camera/k/ab$a;

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Lcn/nubia/camera/ar/e$a;

.field private o:Lcn/nubia/camera/ar/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 61
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcn/nubia/camera/ar/e;->h:I

    iput v0, p0, Lcn/nubia/camera/ar/e;->i:I

    .line 65
    new-instance v0, Lcn/nubia/camera/ar/e$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/e$1;-><init>(Lcn/nubia/camera/ar/e;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->j:Lcn/nubia/camera/k/ab$a;

    .line 74
    new-instance v0, Lcn/nubia/camera/ar/e$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/e$2;-><init>(Lcn/nubia/camera/ar/e;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->b:Lcn/nubia/camera/k/ab$a;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcn/nubia/camera/ar/e;->k:Z

    .line 109
    iput-boolean v0, p0, Lcn/nubia/camera/ar/e;->l:Z

    .line 321
    new-instance v0, Lcn/nubia/camera/ar/e$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/e$5;-><init>(Lcn/nubia/camera/ar/e;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ar/e;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcn/nubia/camera/ar/e;->h:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$a;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->n:Lcn/nubia/camera/ar/e$a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/ar/e$a;)Lcn/nubia/camera/ar/e$a;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/ar/e;->n:Lcn/nubia/camera/ar/e$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/ar/e$b;)Lcn/nubia/camera/ar/e$b;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/ar/e;->o:Lcn/nubia/camera/ar/e$b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/ar/e;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/nubia/camera/ar/e;->k:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ar/e;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcn/nubia/camera/ar/e;->i:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->o:Lcn/nubia/camera/ar/e$b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ar/e;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/nubia/camera/ar/e;->l:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/ar/e;)I
    .locals 0

    .line 57
    iget p0, p0, Lcn/nubia/camera/ar/e;->h:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/ar/e;)I
    .locals 0

    .line 57
    iget p0, p0, Lcn/nubia/camera/ar/e;->i:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/ar/e;)Ljava/lang/Object;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/ar/e;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/camera/ar/e;->k:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/ar/e;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/ar/e;)Lcn/nubia/b/k;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/k/p;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    return-object p0
.end method


# virtual methods
.method protected E()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ar/e;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/ar/e;->l:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a()V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcn/nubia/camera/ar/e;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    .line 218
    iget-object v3, p0, Lcn/nubia/camera/ar/e;->c:Lcn/nubia/b/n;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ar/e;->a(I[Lcn/nubia/b/m;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 94
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 95
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->P()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    new-instance p2, Lcn/nubia/camera/k/ac;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p2, Lcn/nubia/camera/k/v;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    .line 100
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ar/e;->j:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ar/e$a;)V
    .locals 3

    .line 273
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->r()V

    .line 280
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ar/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcn/nubia/camera/ar/d;->a(II)V

    .line 281
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 283
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ar/e;->k:Z

    .line 284
    iput-boolean v1, p0, Lcn/nubia/camera/ar/e;->l:Z

    .line 285
    iput-object p1, p0, Lcn/nubia/camera/ar/e;->n:Lcn/nubia/camera/ar/e$a;

    .line 286
    new-instance p1, Lcn/nubia/camera/ar/e$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ar/e$4;-><init>(Lcn/nubia/camera/ar/e;)V

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/ar/e$b;)Z
    .locals 11

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ar/e;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/nubia/camera/ar/e;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    iput-object v1, p0, Lcn/nubia/camera/ar/e;->n:Lcn/nubia/camera/ar/e$a;

    .line 119
    iput-object p4, p0, Lcn/nubia/camera/ar/e;->o:Lcn/nubia/camera/ar/e$b;

    .line 120
    iget-object p4, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p4, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    const-wide/16 v5, 0x78

    .line 124
    sget-wide v7, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v7, v5

    cmp-long p4, v3, v7

    const/4 v3, 0x1

    if-gtz p4, :cond_2

    .line 125
    iget-object v4, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    const/4 v5, 0x2

    iget-object v9, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    new-array v10, v2, [Lcn/nubia/b/m;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v4 .. v10}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    .line 126
    iget-object p1, p0, Lcn/nubia/camera/ar/e;->o:Lcn/nubia/camera/ar/e$b;

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Lcn/nubia/camera/ar/e$b;->a()V

    .line 128
    iput-object v1, p0, Lcn/nubia/camera/ar/e;->o:Lcn/nubia/camera/ar/e$b;

    .line 130
    :cond_1
    monitor-exit v0

    return v3

    .line 133
    :cond_2
    iget-object p4, p0, Lcn/nubia/camera/ar/e;->m:Landroid/os/Handler;

    invoke-virtual {p4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    iget-object p4, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iput-boolean v3, p0, Lcn/nubia/camera/ar/e;->k:Z

    .line 136
    new-instance v1, Lcn/nubia/camera/ar/e$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/camera/ar/e$3;-><init>(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)V

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 204
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->i()V

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->a()V

    const-string p1, "SlowShutterStreamController"

    const-string p2, "config to snapshot"

    .line 208
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->q()V

    return v3

    :catchall_0
    move-exception p1

    .line 204
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 115
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    .line 205
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method protected b()V
    .locals 12

    .line 224
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 229
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 232
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 234
    iget-boolean v0, p0, Lcn/nubia/camera/ar/e;->k:Z

    const/4 v1, 0x1

    const/16 v3, 0x100

    const-string v7, "SlowShutterStreamController"

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v0, v6, v8, v9}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->c:Lcn/nubia/b/n;

    .line 237
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v0, v6, v8, v3, v1}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 239
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->w()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->c:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/ar/e;->c:Lcn/nubia/b/n;

    const v6, 0x8001

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    const-string v0, "preview LONG_EXPOSURE"

    .line 245
    invoke-static {v7, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_1
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v0, v6, v8, v3, v1}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/ar/e;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->w()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->d:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v8, 0x78

    .line 253
    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v8

    cmp-long v3, v0, v10

    const-wide/16 v8, 0x258

    if-lez v3, :cond_2

    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v8

    cmp-long v3, v0, v10

    if-gtz v3, :cond_2

    const-string v0, "SLOWSHUTTER_2MIN"

    .line 254
    invoke-static {v7, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    const/4 v3, 0x0

    const v6, 0x8010

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    goto :goto_0

    .line 256
    :cond_2
    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v8

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    const-string v0, "SLOWSHUTTER_20MIN"

    .line 257
    invoke-static {v7, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    const/4 v3, 0x0

    const v6, 0x8011

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    goto :goto_0

    :cond_3
    const-string v0, "LONG_EXPOSURE"

    .line 260
    invoke-static {v7, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    const/4 v3, 0x0

    const v6, 0x8001

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 298
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->f:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/ar/e;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 301
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ar/e;->l:Z

    .line 302
    iput-boolean v1, p0, Lcn/nubia/camera/ar/e;->k:Z

    .line 303
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->j:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 304
    invoke-virtual {p0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ar/d;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcn/nubia/camera/ar/d;->a(II)V

    .line 306
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->n:Lcn/nubia/camera/ar/e$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 308
    iget-object v1, p0, Lcn/nubia/camera/ar/e;->b:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 310
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
