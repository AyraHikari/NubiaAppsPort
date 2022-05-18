.class public Lcn/nubia/camera/multiRecord/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:I

.field private c:F

.field private d:Lcn/nubia/camera/multiRecord/b;

.field private e:[F

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/RectF;

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 26
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a;->e:[F

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    .line 30
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    if-eqz p1, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance p1, Lcn/nubia/camera/multiRecord/b;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->f:Landroid/content/Context;

    const v1, 0x8d65

    invoke-direct {p1, v0, v1}, Lcn/nubia/camera/multiRecord/b;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    return-void
.end method

.method private d()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/b;->a()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    return-void
.end method

.method private e()Landroid/graphics/RectF;
    .locals 6

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v1, -0x41000000    # -0.5f

    .line 162
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 163
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    mul-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 164
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 144
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    goto :goto_0

    .line 152
    :cond_0
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const-wide/16 p1, 0x0

    .line 156
    iput-wide p1, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;IF)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    .line 130
    iput p2, p0, Lcn/nubia/camera/multiRecord/a;->b:I

    .line 131
    iput p3, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    return-void
.end method

.method public a(Lcn/nubia/camera/multiRecord/a;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/camera/multiRecord/a;->b:I

    iget v2, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    return-void
.end method

.method public a(Lcn/nubia/camera/multiRecord/a;Z)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, p2}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 125
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcn/nubia/camera/multiRecord/a;->b:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 178
    iget-wide v0, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 8

    .line 53
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    .line 54
    invoke-direct {p0, p2}, Lcn/nubia/camera/multiRecord/a;->a(Lcom/android/common/b/g;)V

    .line 55
    iget-wide p1, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 57
    iget-wide v2, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    .line 59
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 61
    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/a;->m:J

    goto/16 :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, p1

    div-long/2addr v0, v2

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    long-to-int v0, v0

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    mul-long/2addr v4, p1

    div-long/2addr v4, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 66
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, p1

    div-long/2addr v4, v2

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    .line 67
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/a;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    mul-long/2addr v5, p1

    div-long/2addr v5, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-long v2, v2

    add-long/2addr v5, v2

    long-to-int v2, v5

    .line 68
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p2, 0x43960000    # 300.0f

    div-float/2addr v0, p2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    .line 72
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    div-float/2addr v2, p2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    .line 73
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/a;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    div-float/2addr v3, p2

    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p1

    .line 74
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->e:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 81
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/a;->e()Landroid/graphics/RectF;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/b;->a(FFFF)V

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/a;->d:Lcn/nubia/camera/multiRecord/b;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/a;->e:[F

    iget v0, p0, Lcn/nubia/camera/multiRecord/a;->b:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/multiRecord/b;->a([FI)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcn/nubia/camera/multiRecord/a;)Z
    .locals 2

    .line 135
    iget-object v0, p1, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/a;->a:Landroid/graphics/SurfaceTexture;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/camera/multiRecord/a;->b:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/a;->b:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcn/nubia/camera/multiRecord/a;->c:F

    iget v0, p0, Lcn/nubia/camera/multiRecord/a;->c:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 96
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/a;->d()V

    return-void
.end method
