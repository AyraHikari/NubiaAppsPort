.class public Lcn/nubia/camera/multiRecord/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field a:I

.field b:I

.field private c:[Landroid/view/Surface;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:[Landroid/graphics/SurfaceTexture;

.field private k:[I

.field private l:[Landroid/opengl/EGLSurface;

.field private m:[Lcom/android/common/b/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->f:Z

    .line 20
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->g:Z

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/a/a;->h:J

    .line 24
    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/a/a;->i:J

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 3

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a/a;->m:[Lcom/android/common/b/e;

    return-void
.end method

.method private b(Lcom/android/common/c/f;)V
    .locals 8

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;

    array-length v1, v0

    new-array v1, v1, [Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    .line 118
    array-length v0, v0

    new-array v0, v0, [Lcom/android/common/b/e;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/a/a;->m:[Lcom/android/common/b/e;

    .line 119
    iget v0, p0, Lcn/nubia/camera/multiRecord/a/a;->d:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/a/a;->e:I

    .line 120
    iget v2, p0, Lcn/nubia/camera/multiRecord/a/a;->a:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_1
    const/4 v2, 0x0

    .line 124
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 125
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v4

    aput-object v4, v3, v2

    .line 126
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->m:[Lcom/android/common/b/e;

    new-instance v4, Lcom/android/common/b/e;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/a/a;->k:[I

    aget v5, v5, v2

    iget v6, p0, Lcn/nubia/camera/multiRecord/a/a;->b:I

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/android/common/b/e;-><init>(IIII)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Landroid/view/Surface;II[Landroid/graphics/SurfaceTexture;[III)V
    .locals 0

    monitor-enter p0

    .line 41
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;

    .line 42
    iput p2, p0, Lcn/nubia/camera/multiRecord/a/a;->d:I

    .line 43
    iput p3, p0, Lcn/nubia/camera/multiRecord/a/a;->e:I

    .line 44
    iput-object p4, p0, Lcn/nubia/camera/multiRecord/a/a;->j:[Landroid/graphics/SurfaceTexture;

    .line 45
    iput-object p5, p0, Lcn/nubia/camera/multiRecord/a/a;->k:[I

    .line 46
    iput p6, p0, Lcn/nubia/camera/multiRecord/a/a;->b:I

    .line 47
    iput p7, p0, Lcn/nubia/camera/multiRecord/a/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 10

    .line 72
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/a/a;->a(Lcom/android/common/c/f;)V

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 77
    :cond_0
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a/a;->c:[Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    if-nez v2, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/a/a;->b(Lcom/android/common/c/f;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/a/a;->a(Lcom/android/common/c/f;)V

    .line 83
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->g:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    move v0, v1

    .line 87
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_4

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 88
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 89
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 91
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->j:[Landroid/graphics/SurfaceTexture;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 92
    invoke-static {v2, v1, v3, v3, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    .line 93
    iget v3, p0, Lcn/nubia/camera/multiRecord/a/a;->a:I

    int-to-float v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v3, -0x41000000    # -0.5f

    .line 94
    invoke-static {v2, v1, v3, v3, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 95
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->m:[Lcom/android/common/b/e;

    aget-object v4, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcn/nubia/camera/multiRecord/a/a;->d:I

    iget v9, p0, Lcn/nubia/camera/multiRecord/a/a;->e:I

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 96
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    aget-object v3, v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;J)V

    .line 97
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a/a;->l:[Landroid/opengl/EGLSurface;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    .line 98
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/b/c;->c()Z

    .line 99
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 83
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

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/a/a;->a(Lcom/android/common/c/f;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->g:Z

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/a/a;->h:J

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->g:Z

    .line 61
    iget-wide v0, p0, Lcn/nubia/camera/multiRecord/a/a;->i:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/camera/multiRecord/a/a;->h:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/a/a;->i:J

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/a/a;->f:Z

    return-void
.end method
