.class public Lcn/nubia/camera/hitchcock/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field a:Landroid/view/Surface;

.field b:Landroid/opengl/EGLSurface;

.field c:I

.field d:I

.field e:J

.field f:J

.field private g:[F

.field private h:Z

.field private i:F

.field private j:Landroid/graphics/Rect;

.field private k:Lcn/nubia/camera/multiRecord/b;

.field private l:Lcn/nubia/camera/multiRecord/b;

.field private m:Landroid/content/Context;

.field private n:Lcn/nubia/camera/v/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/hitchcock/i;->g:[F

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/i;->h:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/i;->m:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    .line 150
    iput-object v1, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    .line 151
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/camera/hitchcock/i;->f:J

    .line 153
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/i;->k:Lcn/nubia/camera/multiRecord/b;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/b;->a()V

    .line 155
    iput-object v1, p0, Lcn/nubia/camera/hitchcock/i;->k:Lcn/nubia/camera/multiRecord/b;

    .line 157
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/i;->l:Lcn/nubia/camera/multiRecord/b;

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/b;->a()V

    .line 159
    iput-object v1, p0, Lcn/nubia/camera/hitchcock/i;->l:Lcn/nubia/camera/multiRecord/b;

    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->k:Lcn/nubia/camera/multiRecord/b;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->m:Landroid/content/Context;

    const/16 v2, 0xde1

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/multiRecord/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/i;->k:Lcn/nubia/camera/multiRecord/b;

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->l:Lcn/nubia/camera/multiRecord/b;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->m:Landroid/content/Context;

    const v2, 0x8d65

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/multiRecord/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/i;->l:Lcn/nubia/camera/multiRecord/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/i;->h:Z

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 172
    iput p1, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    return-void
.end method

.method public a(Landroid/view/Surface;II)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/i;->a:Landroid/view/Surface;

    .line 177
    iput p2, p0, Lcn/nubia/camera/hitchcock/i;->c:I

    .line 178
    iput p3, p0, Lcn/nubia/camera/hitchcock/i;->d:I

    return-void
.end method

.method public a(Lcn/nubia/camera/v/b;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/i;->n:Lcn/nubia/camera/v/b;

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 11

    .line 50
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/i;->h:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/i;->a(Lcom/android/common/c/f;)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/i;->h()V

    .line 57
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 59
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/i;->g:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 60
    invoke-virtual {p1}, Lcom/android/common/c/f;->s()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 61
    invoke-virtual {p1}, Lcom/android/common/c/f;->s()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v5, v4, v2

    sub-float v5, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float v7, v4, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v6

    div-float v8, v4, v2

    add-float/2addr v8, v4

    div-float/2addr v8, v6

    div-float v2, v4, v2

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    invoke-direct {v1, v5, v7, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/i;->k:Lcn/nubia/camera/multiRecord/b;

    .line 65
    invoke-virtual {v3}, Lcom/android/common/b/a;->f()I

    move-result v4

    const v5, 0x8d65

    if-ne v4, v5, :cond_2

    .line 66
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/i;->l:Lcn/nubia/camera/multiRecord/b;

    .line 68
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5, v6, v1}, Lcn/nubia/camera/multiRecord/b;->a(FFFF)V

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->g:[F

    invoke-virtual {v3}, Lcom/android/common/b/a;->a()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcn/nubia/camera/multiRecord/b;->a([FI)V

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->j:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/i;->j:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 76
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v7, p0, Lcn/nubia/camera/hitchcock/i;->i:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-direct {v2, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v7, v0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    const/16 v0, 0xbe2

    .line 88
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v4, 0x303

    .line 89
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 90
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    const v10, 0x3f00ff00

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/common/b/g;->a(IIIII)V

    .line 91
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 92
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 94
    :cond_3
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->a:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 96
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->a:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    .line 97
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/hitchcock/i;->e:J

    .line 99
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->a:Landroid/view/Surface;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_5

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/i;->a(Lcom/android/common/c/f;)V

    .line 102
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z

    .line 106
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 107
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/i;->g:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcn/nubia/camera/hitchcock/i;->c:I

    iget v8, p0, Lcn/nubia/camera/hitchcock/i;->d:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 108
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 109
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 110
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/i;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    .line 111
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/b/c;->c()Z

    .line 114
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/i;->n:Lcn/nubia/camera/v/b;

    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/v/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    :cond_7
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 102
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

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/i;->a(Lcom/android/common/c/f;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcn/nubia/camera/hitchcock/i;->a:Landroid/view/Surface;

    return-void
.end method

.method public e()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcn/nubia/camera/hitchcock/i;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcn/nubia/camera/hitchcock/i;->f:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lcn/nubia/camera/hitchcock/i;->f:J

    iput-wide v0, p0, Lcn/nubia/camera/hitchcock/i;->e:J

    return-void
.end method
