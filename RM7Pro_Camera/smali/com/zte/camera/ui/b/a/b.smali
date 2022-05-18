.class public Lcom/zte/camera/ui/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLConfig;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/zte/camera/ui/b/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    .line 28
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->c:Landroid/opengl/EGLConfig;

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/zte/camera/ui/b/a/b;->d:I

    .line 50
    iget-object v1, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_6

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    .line 59
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 63
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v1, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    .line 71
    invoke-direct {p0, p2, v0}, Lcom/zte/camera/ui/b/a/b;->a(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v2, v0, [I

    .line 75
    fill-array-data v2, :array_0

    .line 79
    iget-object v3, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v3, p2, p1, v2, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    .line 81
    iput-object p2, p0, Lcom/zte/camera/ui/b/a/b;->c:Landroid/opengl/EGLConfig;

    .line 82
    iput-object p1, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    .line 83
    iput v0, p0, Lcom/zte/camera/ui/b/a/b;->d:I

    .line 84
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create EGL context: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 86
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-array p1, v4, [I

    .line 92
    iget-object p2, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    invoke-static {p2, v0, v2, p1, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EGLContext created, client version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLCore"

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_4
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data
.end method

.method private a(II)Landroid/opengl/EGLConfig;
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-lt p2, v0, :cond_0

    const/16 v2, 0x44

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0xd

    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v5, v3

    const/4 v6, 0x2

    const/16 v7, 0x3023

    aput v7, v5, v6

    aput v4, v5, v0

    const/16 v0, 0x3022

    aput v0, v5, v1

    const/4 v0, 0x5

    aput v4, v5, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v5, v0

    const/4 v0, 0x7

    aput v4, v5, v0

    const/16 v0, 0x3040

    aput v0, v5, v4

    const/16 v0, 0x9

    aput v2, v5, v0

    const/16 v0, 0xa

    const/16 v1, 0x3038

    aput v1, v5, v0

    const/16 v2, 0xb

    aput v12, v5, v2

    const/16 v4, 0xc

    aput v1, v5, v4

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    const/16 p1, 0x3142

    aput p1, v5, v0

    aput v3, v5, v2

    :cond_1
    new-array p1, v3, [Landroid/opengl/EGLConfig;

    new-array v10, v3, [I

    .line 125
    iget-object v4, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v7, p1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to find RGB8888 / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLCore"

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_2
    aget-object p1, p1, v12

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 189
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 196
    iget-object v1, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/zte/camera/ui/b/a/b;->c:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 4

    const-string v0, "GLCore"

    const-string v1, "release context"

    .line 140
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 146
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 147
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 148
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 151
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    .line 152
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/zte/camera/ui/b/a/b;->c:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    const-string v0, "GLCore"

    const-string v1, "releaseSurface call make no surface"

    .line 180
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public a(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public b(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "GLCore"

    const-string v1, "NOTE: makeCurrent w/o display"

    .line 210
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/zte/camera/ui/b/a/b;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    const-string v0, "GLCore"

    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    .line 165
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/zte/camera/ui/b/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 170
    throw v0
.end method
