.class public Lcn/nubia/camera/bb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Lcom/android/common/b/l;

.field private e:Lcn/nubia/camera/multiRecord/b;

.field private f:Lcn/nubia/camera/multiRecord/b;

.field private g:[F

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/nubia/camera/bb/g;->b:Z

    .line 30
    iput-boolean v0, p0, Lcn/nubia/camera/bb/g;->c:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 35
    iput-object v1, p0, Lcn/nubia/camera/bb/g;->g:[F

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/bb/g;->j:Landroid/content/Context;

    .line 42
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 7

    .line 107
    iget-boolean v0, p0, Lcn/nubia/camera/bb/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcn/nubia/camera/bb/g;->b:Z

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x4018f5c3    # 2.39f

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/bb/g;->a:I

    goto :goto_0

    .line 114
    :cond_1
    iput v2, p0, Lcn/nubia/camera/bb/g;->a:I

    .line 116
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movie w * h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v3, p0, Lcn/nubia/camera/bb/g;->a:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v3, p0, Lcn/nubia/camera/bb/g;->a:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcn/nubia/camera/bb/g;->a:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    .line 120
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 121
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcn/nubia/camera/bb/g;->a:I

    iget-object v0, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->c()I

    move-result v1

    iget v3, p0, Lcn/nubia/camera/bb/g;->a:I

    sub-int/2addr v1, v3

    invoke-direct {p1, v2, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/bb/g;->i:Landroid/graphics/Rect;

    .line 122
    new-instance p1, Lcn/nubia/camera/multiRecord/b;

    iget-object p2, p0, Lcn/nubia/camera/bb/g;->j:Landroid/content/Context;

    const v0, 0x8d65

    invoke-direct {p1, p2, v0}, Lcn/nubia/camera/multiRecord/b;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/camera/bb/g;->e:Lcn/nubia/camera/multiRecord/b;

    .line 123
    new-instance p1, Lcn/nubia/camera/multiRecord/b;

    iget-object p2, p0, Lcn/nubia/camera/bb/g;->j:Landroid/content/Context;

    const/16 v0, 0xde1

    invoke-direct {p1, p2, v0}, Lcn/nubia/camera/multiRecord/b;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/camera/bb/g;->f:Lcn/nubia/camera/multiRecord/b;

    return-void
.end method

.method private d()V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcn/nubia/camera/bb/g;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->e:Lcn/nubia/camera/multiRecord/b;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/b;->a()V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->f:Lcn/nubia/camera/multiRecord/b;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcn/nubia/camera/bb/g;->c:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 5

    .line 52
    iget-boolean v0, p0, Lcn/nubia/camera/bb/g;->c:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/bb/g;->d()V

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/nubia/camera/bb/g;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 59
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 61
    invoke-virtual {p2}, Lcom/android/common/b/g;->c()V

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/camera/bb/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/bb/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 63
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->f:Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/multiRecord/b;->a(FFFF)V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->f:Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->g:[F

    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/b/l;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/multiRecord/b;->a([FI)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->e:Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcn/nubia/camera/bb/g;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/multiRecord/b;->a(FFFF)V

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/bb/g;->e:Lcn/nubia/camera/multiRecord/b;

    iget-object v1, p0, Lcn/nubia/camera/bb/g;->g:[F

    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/multiRecord/b;->a([FI)V

    .line 71
    :goto_0
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 72
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 74
    iget-object p2, p0, Lcn/nubia/camera/bb/g;->d:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

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

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/bb/g;->d()V

    return-void
.end method
