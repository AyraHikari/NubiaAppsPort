.class public Lcn/nubia/camera/r/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/j$a;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/camera/v/b;

.field b:Lcn/nubia/camera/v/b;

.field private c:Z

.field private d:J

.field private e:Landroid/view/Surface;

.field private f:Landroid/opengl/EGLSurface;

.field private g:[F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcn/nubia/camera/r/j$a;

.field private m:Lcn/nubia/camera/r/j$a;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/camera/r/j;->c:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/r/j;->g:[F

    .line 27
    new-instance v0, Lcn/nubia/camera/v/b;

    sget-object v1, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    .line 28
    new-instance v0, Lcn/nubia/camera/v/b;

    sget-object v1, Lcn/nubia/camera/v/b$a;->a:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/nubia/camera/r/j;->n:Z

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/r/j;->e:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Lcom/android/common/c/f;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    const-string v0, "FreezeVideoRender"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/r/j;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame in all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    invoke-virtual {p1, v0}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    .line 168
    monitor-enter p0

    const/4 p1, 0x0

    .line 169
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/j;->b(Lcom/android/common/c/f;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/v/b;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/v/b;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 57
    :try_start_0
    iput-object v0, p0, Lcn/nubia/camera/r/j;->e:Landroid/view/Surface;

    .line 58
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/view/Surface;III)V
    .locals 0

    monitor-enter p0

    .line 47
    :try_start_0
    iput p2, p0, Lcn/nubia/camera/r/j;->h:I

    .line 48
    iput p3, p0, Lcn/nubia/camera/r/j;->i:I

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/r/j;->e:Landroid/view/Surface;

    .line 50
    iput p4, p0, Lcn/nubia/camera/r/j;->j:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcn/nubia/camera/r/j;->k:I

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, p4}, Lcn/nubia/camera/v/b;->a(I)V

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    iget p2, p0, Lcn/nubia/camera/r/j;->j:I

    invoke-virtual {p1, p2}, Lcn/nubia/camera/v/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/nubia/camera/r/j$a;Lcn/nubia/camera/r/j$a;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/camera/r/j;->l:Lcn/nubia/camera/r/j$a;

    .line 38
    iput-object p2, p0, Lcn/nubia/camera/r/j;->m:Lcn/nubia/camera/r/j$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcn/nubia/camera/r/j;->n:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 13

    .line 83
    iget-boolean v0, p0, Lcn/nubia/camera/r/j;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/r/j;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/j;->e:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/j;->b(Lcom/android/common/c/f;)V

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/r/j;->n:Z

    const/high16 v2, -0x41000000    # -0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 96
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 98
    iget-object v5, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-static {v5, v1, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 99
    iget-object v5, p0, Lcn/nubia/camera/r/j;->g:[F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f70a3d7    # 0.94f

    invoke-static {v5, v1, v7, v7, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 100
    iget-object v5, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-static {v5, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 102
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/r/j;->g:[F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object v6, p2

    .line 101
    invoke-virtual/range {v6 .. v12}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 104
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    .line 108
    iget-wide v7, p0, Lcn/nubia/camera/r/j;->d:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 111
    :cond_3
    iput-wide v5, p0, Lcn/nubia/camera/r/j;->d:J

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/r/j;->e:Landroid/view/Surface;

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/j;->a(Lcom/android/common/c/f;)V

    .line 115
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/b/c;->d()V

    .line 116
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v6, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v6}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z

    .line 118
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 119
    invoke-virtual {p2}, Lcom/android/common/b/g;->c()V

    .line 120
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v6, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-virtual {v0, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-static {v0, v1, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 122
    iget-object v6, p0, Lcn/nubia/camera/r/j;->g:[F

    const/4 v7, 0x0

    iget v0, p0, Lcn/nubia/camera/r/j;->j:I

    int-to-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/r/j;->g:[F

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 124
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/r/j;->g:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcn/nubia/camera/r/j;->h:I

    iget v12, p0, Lcn/nubia/camera/r/j;->i:I

    move-object v6, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 125
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;J)V

    .line 126
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 128
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 129
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/j;->f:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/r/j;->m:Lcn/nubia/camera/r/j$a;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/v/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/r/j;->m:Lcn/nubia/camera/r/j$a;

    iget-object v1, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->f()Lcn/nubia/algorithm/utils/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->g()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/r/j;->b:Lcn/nubia/camera/v/b;

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->h()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/r/j;->k:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/camera/r/j$a;->a(Lcn/nubia/algorithm/utils/a;III)V

    .line 136
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/r/j;->l:Lcn/nubia/camera/r/j$a;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/v/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    .line 138
    iget-object p2, p0, Lcn/nubia/camera/r/j;->l:Lcn/nubia/camera/r/j$a;

    iget-object v0, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->f()Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->g()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/r/j;->a:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->h()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/r/j;->k:I

    invoke-interface {p2, v0, v1, v2, v3}, Lcn/nubia/camera/r/j$a;->a(Lcn/nubia/algorithm/utils/a;III)V

    .line 140
    :cond_5
    iget p2, p0, Lcn/nubia/camera/r/j;->k:I

    add-int/2addr p2, v5

    iput p2, p0, Lcn/nubia/camera/r/j;->k:I

    .line 142
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/b/c;->d()V

    .line 143
    invoke-virtual {p1}, Lcom/android/common/c/f;->v()Lcom/android/common/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/b/c;->c()Z

    :cond_6
    return v5

    :cond_7
    :goto_0
    return v1
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

    .line 182
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/r/j;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/nubia/camera/r/j;->k:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcn/nubia/camera/r/j;->c:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcn/nubia/camera/r/j;->n:Z

    return v0
.end method
