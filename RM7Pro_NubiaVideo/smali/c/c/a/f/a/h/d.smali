.class public Lc/c/a/f/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/h/g;


# instance fields
.field private a:Lc/c/a/f/a/h/f$i;

.field private b:Lc/c/a/f/a/h/f$j;

.field private c:Lc/c/a/f/a/h/f$k;

.field private d:Landroid/opengl/EGLDisplay;

.field private e:Landroid/opengl/EGLConfig;

.field private f:Landroid/opengl/EGLContext;

.field private g:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/f/a/h/d;->a:Lc/c/a/f/a/h/f$i;

    .line 3
    iput-object p2, p0, Lc/c/a/f/a/h/d;->b:Lc/c/a/f/a/h/f$j;

    .line 4
    iput-object p3, p0, Lc/c/a/f/a/h/d;->c:Lc/c/a/f/a/h/f$k;

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/d;->c:Lc/c/a/f/a/h/f$k;

    iget-object v1, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    invoke-interface {v0, v1, v2}, Lc/c/a/f/a/h/f$k;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lc/c/a/f/a/h/c;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lc/c/a/f/a/h/d;->j(Ljava/lang/String;I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static j(Ljava/lang/String;I)V
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

    const-string v0, "EglHelperAPI17"

    invoke-static {v0, p1}, Lc/c/a/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "swap: start get error"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelperAPI17"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public b(J)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

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

    const-string v1, "EglHelperAPI17"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lc/c/a/f/a/h/d;->b:Lc/c/a/f/a/h/f$j;

    iget-object v3, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Lc/c/a/f/a/h/f$j;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    .line 4
    iput-object v1, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 7
    iput-object v1, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

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

    const-string v1, "EglHelperAPI17"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lc/c/a/f/a/h/d;->g()V

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 4

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

    const-string v1, "EglHelperAPI17"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/d;->e:Landroid/opengl/EGLConfig;

    if-eqz v0, :cond_4

    .line 4
    invoke-direct {p0}, Lc/c/a/f/a/h/d;->g()V

    .line 5
    iget-object v0, p0, Lc/c/a/f/a/h/d;->c:Lc/c/a/f/a/h/f$k;

    iget-object v2, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lc/c/a/f/a/h/d;->e:Landroid/opengl/EGLConfig;

    invoke-interface {v0, v2, v3, p1}, Lc/c/a/f/a/h/f$k;->c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    invoke-static {v2, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const-string v2, "eglMakeCurrent"

    invoke-static {v1, v2, p1}, Lc/c/a/f/a/h/d;->h(Ljava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v2, 0x300b

    if-ne p1, v2, :cond_3

    const-string p1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 10
    invoke-static {v1, p1}, Lc/c/a/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "EGL_NO_SURFACE"

    .line 11
    invoke-static {v1, p1}, Lc/c/a/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

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
.end method

.method public f(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/b;
    .locals 6

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

    const-string v1, "EglHelperAPI17"

    invoke-static {v1, v0}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    .line 3
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    .line 4
    invoke-static {v2, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lc/c/a/f/a/h/d;->a:Lc/c/a/f/a/h/f$i;

    iget-object v4, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    invoke-interface {v2, v4, v0}, Lc/c/a/f/a/h/f$i;->a(Landroid/opengl/EGLDisplay;Z)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/a/h/d;->e:Landroid/opengl/EGLConfig;

    .line 6
    iget-object v2, p0, Lc/c/a/f/a/h/d;->b:Lc/c/a/f/a/h/f$j;

    iget-object v4, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    invoke-virtual {p1}, Lc/c/a/f/a/h/b;->a()Landroid/opengl/EGLContext;

    move-result-object p1

    invoke-interface {v2, v4, v0, p1}, Lc/c/a/f/a/h/f$j;->c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p1, v0, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createContext "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " tid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v3, p0, Lc/c/a/f/a/h/d;->g:Landroid/opengl/EGLSurface;

    .line 10
    new-instance p1, Lc/c/a/f/a/h/b;

    invoke-direct {p1}, Lc/c/a/f/a/h/b;-><init>()V

    .line 11
    iget-object v0, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    invoke-virtual {p1, v0}, Lc/c/a/f/a/h/b;->c(Landroid/opengl/EGLContext;)V

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEglContext:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc/c/a/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object v3, p0, Lc/c/a/f/a/h/d;->f:Landroid/opengl/EGLContext;

    const-string p1, "; createContext"

    .line 14
    invoke-direct {p0, p1}, Lc/c/a/f/a/h/d;->i(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_1
    iput-object v3, p0, Lc/c/a/f/a/h/d;->d:Landroid/opengl/EGLDisplay;

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglInitialize failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
