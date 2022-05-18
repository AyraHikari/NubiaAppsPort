.class public Lcom/hpplay/sdk/source/mirror/d;
.super Lcom/hpplay/a/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mirror/d$a;,
        Lcom/hpplay/sdk/source/mirror/d$b;
    }
.end annotation


# static fields
.field public static final c:I = 0x64

.field private static final i:Ljava/lang/String; = "FrameDrawTask"


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/hpplay/sdk/source/mirror/d$a;

.field private D:I

.field private E:J

.field private F:J

.field protected d:Z

.field protected e:Ljava/lang/Object;

.field f:I

.field g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field h:J

.field private j:Lcom/hpplay/a/e;

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/SurfaceTexture;

.field private o:Lcom/hpplay/a/i;

.field private p:Landroid/view/Surface;

.field private q:I

.field private r:I

.field private s:I

.field private final t:[F

.field private u:Lcom/hpplay/sdk/source/mirror/d$b;

.field private v:Landroid/view/Surface;

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;IIILandroid/view/Surface;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/hpplay/a/d;-><init>(Landroid/opengl/EGLContext;I)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->t:[F

    .line 43
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->w:J

    .line 44
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    .line 45
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->y:J

    .line 46
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->z:J

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->A:I

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->e:Ljava/lang/Object;

    .line 154
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->E:J

    .line 155
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->F:J

    .line 158
    new-instance v0, Lcom/hpplay/sdk/source/mirror/d$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mirror/d$1;-><init>(Lcom/hpplay/sdk/source/mirror/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 216
    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->h:J

    .line 65
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/d;->q:I

    .line 66
    iput p4, p0, Lcom/hpplay/sdk/source/mirror/d;->r:I

    .line 67
    iput-object p5, p0, Lcom/hpplay/sdk/source/mirror/d;->v:Landroid/view/Surface;

    .line 68
    new-instance v0, Lcom/hpplay/sdk/source/mirror/d$a;

    invoke-direct {v0, p0, p0}, Lcom/hpplay/sdk/source/mirror/d$a;-><init>(Lcom/hpplay/sdk/source/mirror/d;Lcom/hpplay/sdk/source/mirror/d;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->C:Lcom/hpplay/sdk/source/mirror/d$a;

    .line 69
    const/16 v0, 0x3c

    if-ne p6, v0, :cond_0

    const/16 v0, 0x3b

    :goto_0
    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    .line 70
    iput p6, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    .line 71
    const-string v0, "FrameDrawTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame rate == > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    :cond_0
    move v0, p6

    .line 69
    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/d;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/mirror/d;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/d;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/d;)Lcom/hpplay/sdk/source/mirror/d$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->C:Lcom/hpplay/sdk/source/mirror/d$a;

    return-object v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/mirror/d;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/d;->a:Z

    return p1
.end method

.method static synthetic c(Lcom/hpplay/sdk/source/mirror/d;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/hpplay/sdk/source/mirror/d;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->a:Z

    return v0
.end method

.method static synthetic e(Lcom/hpplay/sdk/source/mirror/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/hpplay/sdk/source/mirror/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->l:I

    .line 97
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->l:I

    iput v1, p0, Lcom/hpplay/sdk/source/mirror/d;->D:I

    .line 101
    const v1, 0x49742400    # 1000000.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->m:I

    .line 102
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "FrameDrawTask"

    const-string v1, "FrameDrawTask#onStart"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/hpplay/a/e;

    new-instance v1, Lcom/hpplay/a/h;

    sget-object v2, Lcom/hpplay/a/h$a;->c:Lcom/hpplay/a/h$a;

    invoke-direct {v1, v2}, Lcom/hpplay/a/h;-><init>(Lcom/hpplay/a/h$a;)V

    invoke-direct {v0, v1}, Lcom/hpplay/a/e;-><init>(Lcom/hpplay/a/h;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    invoke-virtual {v0}, Lcom/hpplay/a/e;->d()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    .line 81
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->q:I

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/d;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/d;->g:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 84
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->p:Landroid/view/Surface;

    .line 85
    new-instance v0, Lcom/hpplay/a/i;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/d;->e()Lcom/hpplay/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/d;->v:Landroid/view/Surface;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/a/i;-><init>(Lcom/hpplay/a/b;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    .line 86
    const-string v0, "FrameDrawTask"

    const-string v1, "FrameDrawTask#onStart setup virtualDisplay"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/d;->i()V

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->u:Lcom/hpplay/sdk/source/mirror/d$b;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->u:Lcom/hpplay/sdk/source/mirror/d$b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/d;->p:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/d$b;->onStart(Landroid/view/Surface;)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->d:Z

    .line 92
    invoke-virtual {p0, p0}, Lcom/hpplay/sdk/source/mirror/d;->a(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/hpplay/sdk/source/mirror/d;->s:I

    .line 106
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/d;->i()V

    .line 107
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/mirror/d$b;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/d;->u:Lcom/hpplay/sdk/source/mirror/d$b;

    .line 61
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 3

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mirror/d;->B:Z

    .line 282
    const-string v0, "FrameDrawTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseEncoder ---- > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->B:Z

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0, p0}, Lcom/hpplay/sdk/source/mirror/d;->a(Ljava/lang/Runnable;)V

    .line 285
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->a:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(IILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 145
    const-string v0, "FrameDrawTask"

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    if-eq v0, v1, :cond_0

    .line 112
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    .line 113
    new-array v0, v4, [I

    iget v1, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    aput v1, v0, v3

    .line 114
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    invoke-virtual {v0}, Lcom/hpplay/a/e;->b()V

    .line 118
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->p:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->p:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 123
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/d;->p:Landroid/view/Surface;

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 129
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    invoke-virtual {v0}, Lcom/hpplay/a/i;->g()V

    .line 134
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->u:Lcom/hpplay/sdk/source/mirror/d$b;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->u:Lcom/hpplay/sdk/source/mirror/d$b;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/d$b;->onStop()V

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/d;->f()V

    .line 141
    return-void
.end method

.method protected c()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x1

    .line 227
    iget-object v6, p0, Lcom/hpplay/sdk/source/mirror/d;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 228
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 229
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    sub-long v2, v4, v2

    .line 231
    iget-wide v8, p0, Lcom/hpplay/sdk/source/mirror/d;->y:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 233
    iput-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    .line 234
    iput-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->z:J

    .line 235
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    sub-long v2, v4, v2

    .line 236
    const-string v7, "FrameDrawTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjust current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iput-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->y:J

    .line 239
    iget v4, p0, Lcom/hpplay/sdk/source/mirror/d;->l:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    move v0, v1

    .line 250
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/d;->d:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    .line 253
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/d;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/d;->A:I

    .line 254
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    invoke-virtual {v0}, Lcom/hpplay/a/i;->d()V

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->j:Lcom/hpplay/a/e;

    iget v2, p0, Lcom/hpplay/sdk/source/mirror/d;->k:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/d;->t:[F

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/a/e;->a(I[F)V

    .line 256
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->o:Lcom/hpplay/a/i;

    invoke-virtual {v0}, Lcom/hpplay/a/i;->e()Z

    .line 257
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/d;->f()V

    .line 258
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 259
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->w:J

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->z:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->h:J

    .line 262
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->h:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mirror/d;->z:J

    .line 266
    const-string v0, "FrameDrawTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " draw task fps == > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/d;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mEncodeTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mirror/d;->w:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mIntervalms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/d;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput v1, p0, Lcom/hpplay/sdk/source/mirror/d;->A:I

    .line 273
    :cond_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->B:Z

    if-nez v0, :cond_4

    .line 274
    invoke-virtual {p0, p0}, Lcom/hpplay/sdk/source/mirror/d;->a(Ljava/lang/Runnable;)V

    .line 278
    :goto_1
    return-void

    .line 245
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/d;->e:Ljava/lang/Object;

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/d;->l:I

    int-to-long v8, v5

    sub-long v2, v8, v2

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/d;->m:I

    invoke-virtual {v4, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_2
    monitor-exit v6

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 269
    :cond_3
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->d:Z

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/d;->h()V

    goto :goto_1

    .line 276
    :cond_4
    const-string v0, "FrameDrawTask"

    const-string v1, " -------------> pause encoder"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/d;->n:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/d;->t:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 222
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "FrameDrawTask"

    const-string v1, "  ---- >  release"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/d;->d:Z

    .line 296
    return-void
.end method
