.class public Lcom/zte/camera/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Lcom/zte/camera/a/c$a;

.field private b:Landroid/util/Size;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/zte/camera/a/c$a;Landroid/util/Size;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    .line 17
    iput-object v0, p0, Lcom/zte/camera/a/b;->b:Landroid/util/Size;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/zte/camera/a/b;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/zte/camera/a/b;->d:Z

    .line 22
    iput-object p1, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    .line 23
    iput-object p2, p0, Lcom/zte/camera/a/b;->b:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    iput-boolean v0, p0, Lcom/zte/camera/a/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 4

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-boolean p2, p0, Lcom/zte/camera/a/b;->d:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 35
    monitor-exit p0

    return v0

    .line 37
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-boolean p2, p0, Lcom/zte/camera/a/b;->c:Z

    if-nez p2, :cond_1

    .line 40
    iput-boolean v0, p0, Lcom/zte/camera/a/b;->c:Z

    .line 41
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/zte/camera/a/c$a;->a(Landroid/opengl/EGLContext;)V

    .line 42
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/zte/camera/a/c$a;->a(I)V

    .line 43
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    iget-object v1, p0, Lcom/zte/camera/a/b;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zte/camera/a/b;->b:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/zte/camera/a/c$a;->a(II)V

    .line 46
    :cond_1
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-interface {p2}, Lcom/zte/camera/a/c$a;->a()Lcom/zte/camera/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/camera/b/a;->b()Z

    move-result p2

    if-nez p2, :cond_2

    .line 47
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-interface {p2}, Lcom/zte/camera/a/c$a;->a()Lcom/zte/camera/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/camera/b/a;->d()V

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-interface {p2}, Lcom/zte/camera/a/c$a;->a()Lcom/zte/camera/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/camera/b/a;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-interface {p2}, Lcom/zte/camera/a/c$a;->a()Lcom/zte/camera/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zte/camera/b/a;->c()Z

    move-result p2

    if-nez p2, :cond_3

    .line 51
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/zte/camera/a/c$a;->a(Landroid/opengl/EGLContext;)V

    .line 54
    :cond_3
    iget-object p2, p0, Lcom/zte/camera/a/b;->a:Lcom/zte/camera/a/c$a;

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/zte/camera/a/c$a;->a(IJ)V

    return v0

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    return-void
.end method
