.class public Lcn/nubia/camera/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Z

.field private b:Landroid/view/SurfaceHolder;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:[F

.field private i:Landroid/opengl/EGLDisplay;

.field private j:Landroid/opengl/EGLConfig;

.field private k:Landroid/opengl/EGLContext;

.field private l:Landroid/opengl/EGLSurface;

.field private m:Landroid/opengl/EGLSurface;

.field private n:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/camera/m/c;->e:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/m/c;->h:[F

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/m/c;->b:Landroid/view/SurfaceHolder;

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 149
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->g()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 151
    iget-object v1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcn/nubia/camera/m/c;->j:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    .line 152
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_0

    const-string p1, "SecondDisplayRender"

    const-string v0, "createVideoRecordSurface fail"

    .line 154
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 2

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    if-nez p1, :cond_0

    .line 180
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    .line 182
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/c;->j:Landroid/opengl/EGLConfig;

    if-nez p1, :cond_1

    .line 184
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Lcom/android/common/b/d;->b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->j:Landroid/opengl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
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

    const-string v0, "SecondDisplayRender"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/m/c;->k:Landroid/opengl/EGLContext;

    if-nez p1, :cond_2

    .line 190
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->k:Landroid/opengl/EGLContext;

    .line 192
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_3

    const/16 p1, 0x3059

    .line 193
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    .line 195
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_4

    const/16 p1, 0x305a

    .line 196
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    :cond_4
    return-void
.end method

.method private f()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "SecondDisplayRender"

    if-nez v0, :cond_0

    const-string v0, "saveRenderContext unregister fail"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/m/c;->k:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saveRenderContext register fail"

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destorySurface fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecondDisplayRender"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    iput-object v1, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    .line 171
    iput-object v1, p0, Lcn/nubia/camera/m/c;->j:Landroid/opengl/EGLConfig;

    .line 172
    iput-object v1, p0, Lcn/nubia/camera/m/c;->k:Landroid/opengl/EGLContext;

    .line 173
    iput-object v1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    .line 174
    iput-object v1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private j()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "SecondDisplayRender"

    if-nez v0, :cond_0

    const-string v0, "restoreRenderContext unregister fail"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/c;->i:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcn/nubia/camera/m/c;->k:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "restoreRenderContext register fail"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 104
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/m/c;->a:Z

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Z)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SecondDisplayRender"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maskBlack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-boolean p1, p0, Lcn/nubia/camera/m/c;->e:Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 9

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/m/c;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->g()V

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->h()V

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 48
    monitor-exit v0

    return v2

    .line 51
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/m/c;->b:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/camera/m/c;->a(Lcom/android/common/c/f;)V

    .line 53
    iget-object v1, p0, Lcn/nubia/camera/m/c;->b:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcn/nubia/camera/m/c;->a(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/m/c;->l:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x3059

    .line 55
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    const/16 v1, 0x305a

    .line 56
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    .line 59
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/camera/m/c;->d:Z

    if-eqz v1, :cond_4

    .line 60
    monitor-exit v0

    return v2

    .line 62
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->f()V

    .line 63
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 64
    invoke-virtual {p2}, Lcom/android/common/b/g;->c()V

    .line 65
    iget-boolean v1, p0, Lcn/nubia/camera/m/c;->e:Z

    if-nez v1, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p2, v1, v2, v2}, Lcom/android/common/b/g;->b(FFF)V

    .line 67
    invoke-virtual {p1}, Lcom/android/common/c/f;->s()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/camera/m/c;->f:I

    .line 68
    invoke-virtual {p1}, Lcom/android/common/c/f;->s()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/camera/m/c;->g:I

    .line 69
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/m/c;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 70
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    :goto_1
    move-object v3, v1

    iget-object v4, p0, Lcn/nubia/camera/m/c;->h:[F

    iget v5, p0, Lcn/nubia/camera/m/c;->f:I

    iget v6, p0, Lcn/nubia/camera/m/c;->g:I

    .line 72
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p2

    .line 70
    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 74
    :cond_6
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->i()V

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->j()V

    const/4 p1, 0x1

    .line 79
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->g()V

    .line 86
    invoke-direct {p0}, Lcn/nubia/camera/m/c;->h()V

    .line 88
    iget-object p2, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/m/c;->a:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcn/nubia/camera/m/c;->a:Z

    .line 93
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 110
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/m/c;->d:Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/m/c;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 116
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/m/c;->d:Z

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcn/nubia/camera/m/c;->m:Landroid/opengl/EGLSurface;

    .line 118
    iput-object v1, p0, Lcn/nubia/camera/m/c;->n:Landroid/opengl/EGLSurface;

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
