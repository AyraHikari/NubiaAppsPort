.class public Lcn/nubia/camera/aimoon/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Lcom/android/common/b/e;

.field private g:Lcom/android/common/b/l;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:Landroid/util/Size;

.field private l:F

.field private m:Z

.field private final n:I

.field private final o:I

.field private p:I

.field private q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 26
    iput v0, p0, Lcn/nubia/camera/aimoon/a;->a:I

    const/16 v0, 0x190

    .line 27
    iput v0, p0, Lcn/nubia/camera/aimoon/a;->b:I

    const/16 v0, 0x14

    .line 28
    iput v0, p0, Lcn/nubia/camera/aimoon/a;->c:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->d:Z

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 34
    iput-object v2, p0, Lcn/nubia/camera/aimoon/a;->h:[F

    new-array v1, v1, [F

    .line 35
    iput-object v1, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    iput v1, p0, Lcn/nubia/camera/aimoon/a;->l:F

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->m:Z

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcn/nubia/camera/aimoon/a;->n:I

    .line 45
    iput v0, p0, Lcn/nubia/camera/aimoon/a;->p:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 51
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x2

    aget v3, v1, v3

    rsub-int v3, v3, 0x438

    int-to-float v3, v3

    const/high16 v4, 0x44870000    # 1080.0f

    div-float/2addr v3, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    const/high16 v6, 0x44b40000    # 1440.0f

    div-float/2addr v5, v6

    aget v7, v1, v0

    rsub-int v7, v7, 0x438

    int-to-float v7, v7

    div-float/2addr v7, v4

    const/4 v4, 0x3

    aget v1, v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-direct {v2, v3, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcn/nubia/camera/aimoon/a;->q:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060064

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/aimoon/a;->o:I

    .line 56
    iput-object p2, p0, Lcn/nubia/camera/aimoon/a;->e:Landroid/graphics/SurfaceTexture;

    .line 57
    iput-object p3, p0, Lcn/nubia/camera/aimoon/a;->k:Landroid/util/Size;

    .line 58
    iget-object p1, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    .line 124
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    .line 126
    invoke-virtual {p2}, Lcom/android/common/b/l;->c()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 127
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/common/b/l;->c(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/aimoon/a;->j:I

    .line 114
    new-instance v0, Lcom/android/common/b/e;

    iget v1, p0, Lcn/nubia/camera/aimoon/a;->j:I

    const v2, 0x8d65

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->k:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/aimoon/a;->k:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->e:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/aimoon/a;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const-string v0, "AIMoonBlendRender"

    const-string v1, "int far preview"

    .line 117
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 8

    .line 143
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 147
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 149
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    .line 151
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v6

    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v7

    move-object v1, p2

    .line 148
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 152
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 154
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->m:Z

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lcn/nubia/camera/aimoon/a;->c:I

    .line 158
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 159
    iget-object v2, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    iget v6, p0, Lcn/nubia/camera/aimoon/a;->a:I

    iget v7, p0, Lcn/nubia/camera/aimoon/a;->b:I

    move-object v1, p2

    move v4, v0

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 163
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 165
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 166
    iget v4, p0, Lcn/nubia/camera/aimoon/a;->a:I

    iget v5, p0, Lcn/nubia/camera/aimoon/a;->b:I

    const/4 v6, -0x1

    const/4 v7, 0x5

    move v2, v0

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(IIIIII)V

    .line 172
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 175
    :cond_1
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 176
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 178
    iget-object p2, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/android/common/b/e;->j()V

    .line 134
    iput-object v1, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 138
    iput-object v1, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    :cond_1
    return-void
.end method

.method private e(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 13

    .line 182
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 186
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 187
    iget-object v2, p0, Lcn/nubia/camera/aimoon/a;->f:Lcom/android/common/b/e;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    .line 190
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v6

    iget-object v0, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    .line 187
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 191
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 193
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->m:Z

    if-eqz v0, :cond_2

    .line 194
    iget v0, p0, Lcn/nubia/camera/aimoon/a;->c:I

    .line 197
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 198
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    :goto_0
    move-object v2, v1

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->i:[F

    iget v6, p0, Lcn/nubia/camera/aimoon/a;->a:I

    iget v7, p0, Lcn/nubia/camera/aimoon/a;->b:I

    move-object v1, p2

    move v4, v0

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 202
    iget v4, p0, Lcn/nubia/camera/aimoon/a;->a:I

    iget v5, p0, Lcn/nubia/camera/aimoon/a;->b:I

    const/4 v6, -0x1

    const/4 v7, 0x5

    move v2, v0

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(IIIIII)V

    .line 208
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 222
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 223
    iget v1, p0, Lcn/nubia/camera/aimoon/a;->l:F

    sget v2, Lcn/nubia/camera/aimoon/l;->a:F

    div-float/2addr v1, v2

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr v1, v2

    .line 224
    iget v2, p0, Lcn/nubia/camera/aimoon/a;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/camera/aimoon/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/aimoon/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 225
    iget v3, p0, Lcn/nubia/camera/aimoon/a;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/camera/aimoon/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lcn/nubia/camera/aimoon/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 227
    iget v3, p0, Lcn/nubia/camera/aimoon/a;->a:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcn/nubia/camera/aimoon/a;->b:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_1

    .line 228
    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v2, v1

    mul-int/lit8 v1, v2, 0x3

    .line 229
    div-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 231
    :cond_1
    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x4

    .line 232
    div-int/lit8 v2, v2, 0x3

    .line 234
    :goto_1
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    sub-int v7, v3, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    sub-int v8, v0, v2

    mul-int/lit8 v9, v1, 0x2

    mul-int/lit8 v10, v2, 0x2

    iget v11, p0, Lcn/nubia/camera/aimoon/a;->o:I

    const/4 v12, 0x5

    move-object v6, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/common/b/g;->a(IIIIII)V

    .line 241
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 244
    :cond_2
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 245
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 247
    iget-object p2, p0, Lcn/nubia/camera/aimoon/a;->g:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->d:Z

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/camera/aimoon/a;->l:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcn/nubia/camera/aimoon/a;->p:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/a;->m:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/a;->d:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/a;->e()V

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/a;->d()V

    .line 82
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/nubia/camera/aimoon/a;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 83
    iget v0, p0, Lcn/nubia/camera/aimoon/a;->p:I

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aimoon/a;->d(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aimoon/a;->e(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    :goto_0
    const/4 p1, 0x1

    return p1
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

    const/16 v0, 0x9

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/a;->e()V

    return-void
.end method
