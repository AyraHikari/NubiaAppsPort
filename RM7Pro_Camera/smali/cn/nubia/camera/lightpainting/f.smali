.class public Lcn/nubia/camera/lightpainting/f;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/lightpainting/f$a;
    }
.end annotation


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/camera/lightpainting/f$a;

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Lcn/nubia/camera/k/ab$a;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 40
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->d:Lcn/nubia/camera/k/t;

    .line 43
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    .line 45
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    .line 47
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->i:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->j:Ljava/lang/Object;

    .line 181
    new-instance v0, Lcn/nubia/camera/lightpainting/f$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/lightpainting/f$1;-><init>(Lcn/nubia/camera/lightpainting/f;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->k:Lcn/nubia/camera/k/ab$a;

    .line 197
    new-instance v0, Lcn/nubia/camera/lightpainting/f$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/lightpainting/f$2;-><init>(Lcn/nubia/camera/lightpainting/f;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/f;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/f;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/f;Lcn/nubia/camera/lightpainting/f$a;)Lcn/nubia/camera/lightpainting/f$a;
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    return-object p1
.end method

.method private synthetic a(Lcn/nubia/b/a;)V
    .locals 0

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 127
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f;->k:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/lightpainting/f;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/lightpainting/f;)Lcn/nubia/camera/lightpainting/f$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    return-object p0
.end method

.method public static synthetic lambda$5EQNBqdGLn2-M_nHiS8Yf0SNK5k(Lcn/nubia/camera/lightpainting/f;Lcn/nubia/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/b/a;)V

    return-void
.end method


# virtual methods
.method protected D()[Lcn/nubia/b/m;
    .locals 4

    .line 165
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 166
    iget-object v3, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/f;->c:Lcn/nubia/b/n;

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    new-array v0, v2, [Lcn/nubia/b/m;

    .line 168
    iget-object v2, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public H()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/f;->i:Z

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method protected a()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [Lcn/nubia/b/m;

    .line 60
    iget-object v5, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/f;->c:Lcn/nubia/b/n;

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcn/nubia/camera/lightpainting/f;->a(I[Lcn/nubia/b/m;)V

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcn/nubia/b/m;

    .line 62
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/lightpainting/f;->a(I[Lcn/nubia/b/m;)V

    .line 64
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

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/f;->i:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcn/nubia/camera/lightpainting/f$a;)Z
    .locals 3

    const-string v0, "LightPaitingStreamController"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture: restartPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iput-object p2, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    .line 118
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->l()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    .line 125
    new-instance p1, Lcn/nubia/camera/lightpainting/-$$Lambda$f$5EQNBqdGLn2-M_nHiS8Yf0SNK5k;

    invoke-direct {p1, p0}, Lcn/nubia/camera/lightpainting/-$$Lambda$f$5EQNBqdGLn2-M_nHiS8Yf0SNK5k;-><init>(Lcn/nubia/camera/lightpainting/f;)V

    invoke-virtual {p0, p1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 131
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    if-nez p1, :cond_2

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    if-eqz p1, :cond_2

    .line 133
    invoke-interface {p1}, Lcn/nubia/camera/lightpainting/f$a;->a()V

    .line 134
    iput-object v2, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    .line 137
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    return p1

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected b()V
    .locals 9

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 76
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    .line 83
    :cond_1
    new-instance v0, Lcn/nubia/b/n;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->c:Lcn/nubia/b/n;

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->c:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    const v5, 0x8002

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/lightpainting/f;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    const-string v0, "LightPaitingStreamController"

    const-string v1, "release"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/f;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LightPaitingStreamController"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :cond_0
    :goto_0
    :try_start_3
    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->i:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    .line 155
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->h:Z

    .line 156
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/f;->k:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/lightpainting/f;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 158
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/f;->e:Lcn/nubia/camera/lightpainting/f$a;

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    .line 151
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/f;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 104
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/f;->g:Z

    .line 105
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->b()V

    .line 106
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/b/m;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/camera/lightpainting/f;->b:Lcn/nubia/b/n;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcn/nubia/camera/lightpainting/f;->c:Lcn/nubia/b/n;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v1, v3}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
