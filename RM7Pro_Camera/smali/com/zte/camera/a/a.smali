.class public Lcom/zte/camera/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Lcom/zte/camera/a/c;

.field private c:I

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/zte/camera/a/a;->g:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/zte/camera/a/a;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 59
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    .line 67
    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/b/a;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    sget-object p1, Lcom/zte/camera/a/a;->a:Ljava/lang/String;

    const-string v0, "ondrawframe call reinit vlog"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/b/a;->d()V

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    .line 72
    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/b/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    .line 73
    invoke-virtual {p1}, Lcom/zte/camera/a/c;->a()Lcom/zte/camera/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/b/a;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/camera/a/c;->a(Landroid/opengl/EGLContext;)V

    .line 76
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    iget v0, p0, Lcom/zte/camera/a/a;->c:I

    iget-object v1, p0, Lcom/zte/camera/a/a;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/camera/a/c;->a(IJ)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    iget v0, p0, Lcom/zte/camera/a/a;->c:I

    iget-object v1, p0, Lcom/zte/camera/a/a;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/camera/a/c;->a(IJ)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 59
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 61
    sget-object v0, Lcom/zte/camera/a/a;->a:Ljava/lang/String;

    const-string v1, "FAILED ONDRAW FRAME:"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 39
    sget-object p1, Lcom/zte/camera/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged width ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p2, p0, Lcom/zte/camera/a/a;->e:I

    .line 41
    iput p3, p0, Lcom/zte/camera/a/a;->f:I

    const/4 p1, 0x0

    .line 42
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 45
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    iget v0, p0, Lcom/zte/camera/a/a;->c:I

    invoke-virtual {p1, v0}, Lcom/zte/camera/a/c;->a(I)V

    .line 46
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-virtual {p1, p2, p3}, Lcom/zte/camera/a/c;->a(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 29
    sget-object p1, Lcom/zte/camera/a/a;->a:Ljava/lang/String;

    const-string p2, "onSurfaceCreated"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/zte/camera/a/a;->b:Lcom/zte/camera/a/c;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/camera/a/c;->a(Landroid/opengl/EGLContext;)V

    return-void
.end method
