.class public Lcom/android/common/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/c/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Z

.field private d:Lcom/android/common/c/e$a;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Landroid/graphics/Rect;

.field private g:Lcom/android/common/c/f;

.field private h:Lcom/android/common/c/f$a;

.field private i:Lcom/android/common/c/a;

.field private j:Landroid/os/HandlerThread;

.field private k:Z

.field private l:Lcom/android/common/d/b;


# direct methods
.method public constructor <init>(Lcom/android/common/c/e$a;Landroid/view/SurfaceView;Lcom/android/common/d/b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/common/c/e;->c:Z

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    .line 37
    iput-boolean v0, p0, Lcom/android/common/c/e;->k:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/common/c/e;->l:Lcom/android/common/d/b;

    .line 42
    iput-object p2, p0, Lcom/android/common/c/e;->a:Landroid/view/SurfaceView;

    .line 43
    invoke-direct {p0}, Lcom/android/common/c/e;->p()V

    .line 44
    iput-object p1, p0, Lcom/android/common/c/e;->d:Lcom/android/common/c/e$a;

    .line 45
    iput-object p3, p0, Lcom/android/common/c/e;->l:Lcom/android/common/d/b;

    .line 46
    iput-object p5, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FrameAvailable"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/common/c/e;->j:Landroid/os/HandlerThread;

    .line 48
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance p1, Lcom/android/common/c/a;

    invoke-direct {p1, p0}, Lcom/android/common/c/a;-><init>(Lcom/android/common/c/e;)V

    iput-object p1, p0, Lcom/android/common/c/e;->i:Lcom/android/common/c/a;

    .line 50
    new-instance p1, Lcom/android/common/d/c;

    invoke-direct {p1}, Lcom/android/common/d/c;-><init>()V

    iput-object p1, p0, Lcom/android/common/c/e;->h:Lcom/android/common/c/f$a;

    .line 51
    invoke-direct {p0}, Lcom/android/common/c/e;->o()V

    const/4 p1, 0x1

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/android/common/c/e;->a(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/c/e;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/c/e;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/common/c/e;->b:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/c/e;)Lcom/android/common/c/e$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/common/c/e;->d:Lcom/android/common/c/e$a;

    return-object p0
.end method

.method private a(ZLandroid/graphics/Rect;)V
    .locals 8

    .line 282
    new-instance v7, Lcom/android/common/c/f;

    iget-object v2, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/common/c/e;->l:Lcom/android/common/d/b;

    iget-boolean v5, p0, Lcom/android/common/c/e;->k:Z

    move-object v0, v7

    move-object v1, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/common/c/f;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/SurfaceTexture;Lcom/android/common/d/b;ZZ)V

    iput-object v7, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    .line 284
    iget-object p1, p0, Lcom/android/common/c/e;->h:Lcom/android/common/c/f$a;

    invoke-virtual {v7, p1}, Lcom/android/common/c/f;->a(Lcom/android/common/c/f$a;)V

    .line 285
    iget-object p1, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {p1}, Lcom/android/common/c/f;->start()V

    return-void
.end method

.method static synthetic a(Lcom/android/common/c/e;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/android/common/c/e;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/android/common/c/e;)Lcom/android/common/c/f;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    return-object p0
.end method

.method static synthetic c(Lcom/android/common/c/e;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic d(Lcom/android/common/c/e;)Lcom/android/common/c/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/common/c/e;->i:Lcom/android/common/c/a;

    return-object p0
.end method

.method static synthetic e(Lcom/android/common/c/e;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/common/c/e;->o()V

    return-void
.end method

.method static synthetic f(Lcom/android/common/c/e;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/common/c/e;->b:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method private o()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    .line 61
    iget-object v1, p0, Lcom/android/common/c/e;->i:Lcom/android/common/c/a;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/common/c/e;->j:Landroid/os/HandlerThread;

    .line 62
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/common/c/e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/android/common/c/e$1;

    invoke-direct {v1, p0}, Lcom/android/common/c/e$1;-><init>(Lcom/android/common/c/e;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->a(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/c/e;->f()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->a(I)V

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iput-boolean v0, p0, Lcom/android/common/c/e;->k:Z

    .line 98
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/c/f;->a(IIZ)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    .line 230
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    iget-object v1, p0, Lcom/android/common/c/e;->i:Lcom/android/common/c/a;

    invoke-virtual {v1}, Lcom/android/common/c/a;->c()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/c/f;->a(Landroid/graphics/Rect;Z)V

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preview area change to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/common/c/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreviewTargetManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/android/common/c/f$a;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->a(Lcom/android/common/c/f$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/common/c/e;->o()V

    .line 77
    invoke-virtual {p0}, Lcom/android/common/c/e;->g()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->b(I)V

    return-void
.end method

.method public b(Lcom/android/common/c/f$b;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0, p1}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$b;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/common/c/e;->k:Z

    return v0
.end method

.method public d()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->f()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->h()V

    return-void
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->n()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/common/c/e;->c:Z

    return v0
.end method

.method public k()Lcom/android/common/c/a;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/common/c/e;->i:Lcom/android/common/c/a;

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/common/c/e;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 209
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->i()V

    .line 211
    iget-boolean v0, p0, Lcom/android/common/c/e;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method public m()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/common/c/e;->e:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/c/e;->g:Lcom/android/common/c/f;

    invoke-virtual {v0}, Lcom/android/common/c/f;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
