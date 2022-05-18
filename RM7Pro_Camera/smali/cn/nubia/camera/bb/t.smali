.class public Lcn/nubia/camera/bb/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bb/t$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "VideoEffectRenderer"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:J

.field private i:Landroid/view/Surface;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/opengl/EGLSurface;

.field private n:Landroid/opengl/EGLDisplay;

.field private o:Landroid/opengl/EGLConfig;

.field private p:Landroid/opengl/EGLContext;

.field private q:Landroid/opengl/EGLSurface;

.field private r:Landroid/opengl/EGLSurface;

.field private s:Landroid/graphics/SurfaceTexture;

.field private t:Lcn/nubia/camera/bb/t$a;

.field private u:[F

.field private v:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->c:Z

    .line 34
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->d:Z

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->e:Z

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcn/nubia/camera/bb/t;->f:J

    .line 40
    iput-wide v1, p0, Lcn/nubia/camera/bb/t;->g:J

    .line 41
    iput-wide v1, p0, Lcn/nubia/camera/bb/t;->h:J

    .line 59
    sget-object v1, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    iput-object v1, p0, Lcn/nubia/camera/bb/t;->t:Lcn/nubia/camera/bb/t$a;

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 60
    iput-object v2, p0, Lcn/nubia/camera/bb/t;->u:[F

    new-array v1, v1, [F

    .line 61
    iput-object v1, p0, Lcn/nubia/camera/bb/t;->v:[F

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/bb/t;->b:Landroid/content/Context;

    .line 65
    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    iget-object p1, p0, Lcn/nubia/camera/bb/t;->v:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private a(Landroid/view/Surface;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 161
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->f()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 163
    iget-object v1, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcn/nubia/camera/bb/t;->o:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    .line 164
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_0

    .line 166
    sget-object p1, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    const-string v0, "createVideoRecordSurface fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    .line 192
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->o:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/android/common/b/d;->b(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/t;->o:Landroid/opengl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEGLConfig fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->p:Landroid/opengl/EGLContext;

    if-nez v0, :cond_2

    .line 200
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/t;->p:Landroid/opengl/EGLContext;

    .line 202
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->q:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_3

    const/16 v0, 0x3059

    .line 203
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/t;->q:Landroid/opengl/EGLSurface;

    .line 205
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->r:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    const/16 v0, 0x305a

    .line 206
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/t;->r:Landroid/opengl/EGLSurface;

    .line 209
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->s:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 210
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/t;->s:Landroid/graphics/SurfaceTexture;

    :cond_5
    return-void
.end method

.method private f()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 173
    iget-object v1, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destorySurface fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private h()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    const-string v1, "saveRenderContext unregister fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcn/nubia/camera/bb/t;->p:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    const-string v1, "saveRenderContext register fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private i()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    const-string v1, "restoreRenderContext unregister fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->n:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/nubia/camera/bb/t;->q:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcn/nubia/camera/bb/t;->r:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/nubia/camera/bb/t;->p:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lcn/nubia/camera/bb/t;->a:Ljava/lang/String;

    const-string v1, "restoreRenderContext register fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->d:Z

    return-void
.end method

.method public a(Landroid/view/Surface;IILcn/nubia/camera/bb/t$a;I)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/camera/bb/t;->i:Landroid/view/Surface;

    .line 136
    iput p2, p0, Lcn/nubia/camera/bb/t;->j:I

    .line 137
    iput p3, p0, Lcn/nubia/camera/bb/t;->k:I

    .line 138
    iput-object p4, p0, Lcn/nubia/camera/bb/t;->t:Lcn/nubia/camera/bb/t$a;

    .line 139
    iput p5, p0, Lcn/nubia/camera/bb/t;->l:I

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcn/nubia/camera/bb/t;->c:Z

    const-wide/16 p1, 0x0

    .line 141
    iput-wide p1, p0, Lcn/nubia/camera/bb/t;->f:J

    .line 142
    iput-wide p1, p0, Lcn/nubia/camera/bb/t;->g:J

    .line 143
    iput-wide p1, p0, Lcn/nubia/camera/bb/t;->h:J

    return-void
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
    .locals 11

    .line 81
    iget-boolean v0, p0, Lcn/nubia/camera/bb/t;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->f()V

    .line 83
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/t;->a(Lcom/android/common/c/f;)V

    .line 88
    iget-boolean v0, p0, Lcn/nubia/camera/bb/t;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/t;->m:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->i:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/t;->a(Landroid/view/Surface;)Landroid/opengl/EGLSurface;

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/bb/t;->c:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/nubia/camera/bb/t;->e:Z

    if-nez v0, :cond_6

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->h()V

    .line 94
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 95
    sget-object v0, Lcn/nubia/camera/bb/t$1;->a:[I

    iget-object v2, p0, Lcn/nubia/camera/bb/t;->t:Lcn/nubia/camera/bb/t$a;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/t$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v3, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2, v4, v2, v4}, Lcom/android/common/b/g;->b(FFF)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p2, v2, v4, v4}, Lcom/android/common/b/g;->b(FFF)V

    .line 105
    :goto_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/bb/t;->u:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->u:[F

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 107
    iget-object v5, p0, Lcn/nubia/camera/bb/t;->u:[F

    const/4 v6, 0x0

    iget v0, p0, Lcn/nubia/camera/bb/t;->l:I

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/bb/t;->u:[F

    const/high16 v2, -0x41000000    # -0.5f

    invoke-static {v0, v1, v2, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 109
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v0

    :goto_1
    move-object v5, v0

    iget-object v6, p0, Lcn/nubia/camera/bb/t;->u:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcn/nubia/camera/bb/t;->j:I

    iget v10, p0, Lcn/nubia/camera/bb/t;->k:I

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 112
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 114
    iget-wide v0, p0, Lcn/nubia/camera/bb/t;->h:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-nez p2, :cond_5

    .line 115
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/camera/bb/t;->h:J

    .line 118
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/bb/t;->a(J)V

    .line 120
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->g()V

    .line 122
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->i()V

    return v3

    :cond_6
    return v1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcn/nubia/camera/bb/t;->f()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->e:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/bb/t;->f:J

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcn/nubia/camera/bb/t;->e:Z

    .line 157
    iget-wide v0, p0, Lcn/nubia/camera/bb/t;->g:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/camera/bb/t;->f:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/bb/t;->g:J

    return-void
.end method
