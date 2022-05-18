.class public Lc/c/a/f/a/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/h/g;


# instance fields
.field private a:Lc/c/a/f/a/h/f$i;

.field private b:Lc/c/a/f/a/h/f$j;

.field private c:Lc/c/a/f/a/h/f$k;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/egl/EGLConfig;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/f/a/h/c;->a:Lc/c/a/f/a/h/f$i;

    .line 3
    iput-object p2, p0, Lc/c/a/f/a/h/c;->b:Lc/c/a/f/a/h/f$j;

    .line 4
    iput-object p3, p0, Lc/c/a/f/a/h/c;->c:Lc/c/a/f/a/h/f$k;

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/c;->c:Lc/c/a/f/a/h/f$k;

    iget-object v1, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lc/c/a/f/a/h/f$k;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lc/c/a/f/a/h/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lc/c/a/f/a/h/c;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lc/c/a/f/a/h/c;->k(Ljava/lang/String;I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static k(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lc/c/a/f/a/h/c;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "throwEglException tid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglHelper"

    invoke-static {v0, p1}, Lc/c/a/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish() tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lc/c/a/f/a/h/c;->b:Lc/c/a/f/a/h/f$j;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4, v0}, Lc/c/a/f/a/h/f$j;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 4
    iput-object v1, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 7
    iput-object v1, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySurface()  tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lc/c/a/f/a/h/c;->g()V

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface()  tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Lc/c/a/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lc/c/a/f/a/h/c;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_4

    .line 5
    invoke-direct {p0}, Lc/c/a/f/a/h/c;->g()V

    .line 6
    iget-object v0, p0, Lc/c/a/f/a/h/c;->c:Lc/c/a/f/a/h/f$k;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lc/c/a/f/a/h/c;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4, p1}, Lc/c/a/f/a/h/f$k;->d(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, p1, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const-string v1, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    invoke-static {v1, v2, p1}, Lc/c/a/f/a/h/c;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v2, 0x300b

    if-ne p1, v2, :cond_3

    const-string p1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "mEglConfig not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/b;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start() tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5
    iget-object v3, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/c/a/f/a/h/c;->a:Lc/c/a/f/a/h/f$i;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2, v3}, Lc/c/a/f/a/h/f$i;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/a/h/c;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 7
    iget-object v2, p0, Lc/c/a/f/a/h/c;->b:Lc/c/a/f/a/h/f$j;

    iget-object v3, p0, Lc/c/a/f/a/h/c;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lc/c/a/f/a/h/c;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p1}, Lc/c/a/f/a/h/b;->b()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    invoke-interface {v2, v3, v4, v0, p1}, Lc/c/a/f/a/h/f$j;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 8
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, v2, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createContext "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lc/c/a/f/a/h/c;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 11
    new-instance p1, Lc/c/a/f/a/h/b;

    invoke-direct {p1}, Lc/c/a/f/a/h/b;-><init>()V

    .line 12
    iget-object v0, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1, v0}, Lc/c/a/f/a/h/b;->d(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object p1

    .line 13
    :cond_0
    iput-object v0, p0, Lc/c/a/f/a/h/c;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const-string p1, "createContext"

    .line 14
    invoke-direct {p0, p1}, Lc/c/a/f/a/h/c;->j(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglInitialize failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
