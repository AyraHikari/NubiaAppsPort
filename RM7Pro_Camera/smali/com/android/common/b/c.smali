.class public Lcom/android/common/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/b/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLConfig;

.field private c:Landroid/opengl/EGLContext;

.field private d:Landroid/opengl/EGLSurface;

.field private e:Landroid/opengl/EGLSurface;

.field private f:Lcom/android/common/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/common/b/c;->e:Landroid/opengl/EGLSurface;

    .line 26
    sget-object v0, Lcom/android/common/b/c$a;->a:Lcom/android/common/b/c$a;

    iput-object v0, p0, Lcom/android/common/b/c;->f:Lcom/android/common/b/c$a;

    .line 37
    invoke-static {}, Lcom/android/common/b/d;->a()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    .line 38
    invoke-static {v0}, Lcom/android/common/b/d;->b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->b:Landroid/opengl/EGLConfig;

    .line 39
    iget-object v1, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Lcom/android/common/b/d;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->c:Landroid/opengl/EGLContext;

    .line 40
    sget-object v0, Lcom/android/common/b/c$a;->b:Lcom/android/common/b/c$a;

    iput-object v0, p0, Lcom/android/common/b/c;->f:Lcom/android/common/b/c$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 97
    iget-object v1, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/common/b/c;->b:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    .line 98
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    return-object p1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get window surface  error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 107
    iget-object v1, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/common/b/c;->b:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 108
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to create EGLSurface. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGLManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/common/b/c;->f:Lcom/android/common/b/c$a;

    invoke-virtual {v0}, Lcom/android/common/b/c$a;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/common/b/c$a;->a:Lcom/android/common/b/c$a;

    invoke-virtual {v1}, Lcom/android/common/b/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/b/c;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 46
    iput-object v2, p0, Lcom/android/common/b/c;->c:Landroid/opengl/EGLContext;

    .line 47
    iget-object v0, p0, Lcom/android/common/b/c;->e:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 49
    iput-object v2, p0, Lcom/android/common/b/c;->e:Landroid/opengl/EGLSurface;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 54
    :cond_1
    iput-object v2, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    .line 55
    iput-object v2, p0, Lcom/android/common/b/c;->b:Landroid/opengl/EGLConfig;

    .line 57
    sget-object v0, Lcom/android/common/b/c$a;->a:Lcom/android/common/b/c$a;

    iput-object v0, p0, Lcom/android/common/b/c;->f:Lcom/android/common/b/c$a;

    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/b/c;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public b(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public c(Landroid/opengl/EGLSurface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/android/common/b/c;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/common/b/c;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/common/b/c;->d:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method
