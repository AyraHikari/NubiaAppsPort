.class public Lcn/nubia/camera/au/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field private b:J

.field private c:J

.field private d:Landroid/opengl/EGLSurface;

.field private e:Landroid/opengl/EGLDisplay;

.field private f:Landroid/opengl/EGLConfig;

.field private g:Landroid/opengl/EGLContext;

.field private h:Landroid/opengl/EGLSurface;

.field private i:Landroid/opengl/EGLSurface;

.field private j:Landroid/view/Surface;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;III)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcn/nubia/camera/au/k;->b:J

    .line 27
    iput-wide v0, p0, Lcn/nubia/camera/au/k;->c:J

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/au/k;->j:Landroid/view/Surface;

    .line 40
    iput p2, p0, Lcn/nubia/camera/au/k;->k:I

    .line 41
    iput p3, p0, Lcn/nubia/camera/au/k;->l:I

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/camera/au/k;->c:J

    .line 43
    iput p4, p0, Lcn/nubia/camera/au/k;->a:I

    return-void
.end method

.method private a(Landroid/view/Surface;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 104
    iget-object v1, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcn/nubia/camera/au/k;->f:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    .line 105
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_1

    const-string p1, "SurfaceWriter"

    const-string v0, "createVideoRecordSurface fail"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    if-nez p1, :cond_0

    .line 79
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    .line 81
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/k;->f:Landroid/opengl/EGLConfig;

    if-nez p1, :cond_1

    .line 83
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Lcom/android/common/b/d;->b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->f:Landroid/opengl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEGLConfig fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceWriter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/au/k;->g:Landroid/opengl/EGLContext;

    if-nez p1, :cond_2

    .line 89
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->g:Landroid/opengl/EGLContext;

    .line 91
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/au/k;->h:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_3

    const/16 p1, 0x3059

    .line 92
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->h:Landroid/opengl/EGLSurface;

    .line 94
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/au/k;->i:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_4

    const/16 p1, 0x305a

    .line 95
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/k;->i:Landroid/opengl/EGLSurface;

    :cond_4
    return-void
.end method

.method private b()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "SurfaceWriter"

    if-nez v0, :cond_0

    const-string v0, "saveRenderContext unregister fail"

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/au/k;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saveRenderContext register fail"

    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private c()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "SurfaceWriter"

    if-nez v0, :cond_0

    const-string v0, "restoreRenderContext unregister fail"

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/camera/au/k;->h:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/au/k;->i:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcn/nubia/camera/au/k;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "restoreRenderContext register fail"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 62
    iget-object v2, p0, Lcn/nubia/camera/au/k;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destorySurface fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceWriter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iput-object v1, p0, Lcn/nubia/camera/au/k;->d:Landroid/opengl/EGLSurface;

    .line 67
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/k;->j:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 69
    iput-object v1, p0, Lcn/nubia/camera/au/k;->j:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/l;[F)V
    .locals 7

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/k;->a(Lcom/android/common/c/f;)V

    .line 48
    iget-object p1, p0, Lcn/nubia/camera/au/k;->j:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcn/nubia/camera/au/k;->a(Landroid/view/Surface;)Landroid/opengl/EGLSurface;

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/au/k;->b()V

    .line 50
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 51
    invoke-virtual {p2}, Lcom/android/common/b/g;->c()V

    .line 52
    iget v5, p0, Lcn/nubia/camera/au/k;->k:I

    iget v6, p0, Lcn/nubia/camera/au/k;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 53
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 54
    iget-wide p1, p0, Lcn/nubia/camera/au/k;->c:J

    iget-wide p3, p0, Lcn/nubia/camera/au/k;->b:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    mul-long/2addr p3, v0

    mul-long/2addr p3, v0

    iget v0, p0, Lcn/nubia/camera/au/k;->a:I

    int-to-long v0, v0

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/au/k;->a(J)V

    .line 55
    iget-wide p1, p0, Lcn/nubia/camera/au/k;->b:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcn/nubia/camera/au/k;->b:J

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/au/k;->d()V

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/au/k;->c()V

    return-void
.end method
