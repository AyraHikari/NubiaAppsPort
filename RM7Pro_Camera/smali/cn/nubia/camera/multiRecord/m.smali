.class public Lcn/nubia/camera/multiRecord/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcn/nubia/camera/ad/a;

.field a:[Lcn/nubia/camera/multiRecord/a;

.field b:Lcn/nubia/camera/multiRecord/g;

.field c:Landroid/graphics/Rect;

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/Rect;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Landroid/graphics/Rect;

.field k:Landroid/graphics/Rect;

.field l:Landroid/graphics/Rect;

.field m:Landroid/graphics/Rect;

.field n:Landroid/graphics/Rect;

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Landroid/graphics/Rect;

.field t:Landroid/graphics/Rect;

.field u:Landroid/graphics/Rect;

.field v:I

.field w:I

.field x:I

.field y:I

.field private z:Lcn/nubia/camera/multiRecord/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/g;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x302

    const/16 v2, 0x550

    const/16 v3, 0x410

    const/16 v4, 0x730

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    const/16 v0, 0x253

    .line 28
    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->f:I

    const/16 v0, 0x15d

    .line 29
    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->g:I

    const/16 v1, 0xd8

    .line 37
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->o:I

    const/16 v1, 0x120

    .line 38
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->p:I

    const/16 v1, 0xc

    .line 39
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    const/4 v1, 0x6

    .line 41
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    const/16 v1, 0xe1

    .line 44
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->v:I

    const/16 v1, 0x190

    .line 45
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->w:I

    const/16 v1, 0x1e

    .line 47
    iput v1, p0, Lcn/nubia/camera/multiRecord/m;->x:I

    .line 48
    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->y:I

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    .line 52
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 130
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v4

    invoke-virtual {v1, v2, v4, v0}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 133
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v5}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v5

    invoke-virtual {v2, v4, v5, v0}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 134
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    .line 135
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v5}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v5

    invoke-virtual {v2, v4, v5, v0}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    mul-float/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v4

    invoke-virtual {v1, v2, v4, v0}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v4

    aget v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    return-void
.end method

.method public a(Landroid/content/res/Resources;)V
    .locals 6

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    .line 95
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/an/a;->i()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x9

    sub-int/2addr v1, v2

    .line 96
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    .line 97
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/an/a;->i()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    .line 101
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/an/a;->b()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    .line 103
    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/an/a;->b()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    const v0, 0x7f07013e

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->o:I

    const v0, 0x7f07015a

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->p:I

    const v0, 0x7f07010d

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->o:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->o:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/camera/multiRecord/m;->p:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->m:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->o:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcn/nubia/camera/multiRecord/m;->q:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/camera/multiRecord/m;->p:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->n:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->j:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->k:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->l:Landroid/graphics/Rect;

    const v0, 0x7f0700bd

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    .line 119
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/m;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->g:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->f:I

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x195

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->g:I

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x2d0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    const/16 p1, 0x26

    .line 120
    invoke-static {p1}, Lcom/android/common/ui/i;->a(I)I

    move-result p1

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/multiRecord/m;->h:I

    const/16 p1, 0x140

    .line 121
    invoke-static {p1}, Lcom/android/common/ui/i;->a(I)I

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/multiRecord/m;->i:I

    .line 123
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/multiRecord/m;->v:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/camera/multiRecord/m;->y:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->v:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->y:I

    add-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/camera/multiRecord/m;->w:I

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    .line 124
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/m;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/multiRecord/m;->v:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->x:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->s:Landroid/graphics/Rect;

    .line 125
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/camera/multiRecord/m;->x:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->x:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->v:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->u:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Lcn/nubia/camera/multiRecord/d;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 57
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 58
    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_0

    .line 59
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 60
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto/16 :goto_1

    .line 62
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_1

    .line 63
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 64
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto/16 :goto_1

    .line 66
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_2

    .line 67
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 68
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto :goto_1

    .line 70
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_3

    .line 71
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 72
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto :goto_1

    .line 74
    :cond_3
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_4

    .line 75
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 76
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto :goto_1

    .line 78
    :cond_4
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_5

    .line 79
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 80
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    goto :goto_1

    .line 82
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    if-ne v2, v3, :cond_6

    .line 83
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 84
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p1, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v1

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_7
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    return-void
.end method

.method public a(Z)V
    .locals 13

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/nubia/camera/multiRecord/a;

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v2

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v6, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v2

    iget v7, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v7, v2

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const v6, 0x3e2aaaab

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f555555

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 146
    invoke-virtual {v0, v1, v4, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v2

    iget v9, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v9, v2

    add-int/2addr v4, v9

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int/2addr v10, v2

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    iget v10, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v4, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 151
    invoke-virtual {v0, v1, v4, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    add-int/2addr v4, v9

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    iget v10, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/2addr v10, v2

    iget v11, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v11, v2

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/2addr v12, v2

    div-int/2addr v12, v3

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v12, v2

    sub-int/2addr v11, v12

    invoke-direct {v1, v4, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    invoke-virtual {v0, v1, v4, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v2

    iget v9, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v9, v2

    add-int/2addr v4, v9

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    iget v10, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/2addr v12, v2

    div-int/2addr v12, v3

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v12, v2

    sub-int/2addr v11, v12

    invoke-direct {v1, v4, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 161
    invoke-virtual {v0, v1, v4, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    add-int/2addr v4, v9

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/2addr v10, v2

    iget v11, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v11, v2

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/2addr v12, v3

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v12, v2

    sub-int/2addr v11, v12

    invoke-direct {v1, v4, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 166
    invoke-virtual {v0, v1, v4, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v2

    iget v9, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v9, v2

    add-int/2addr v4, v9

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/2addr v12, v3

    add-int/2addr v11, v12

    iget v3, p0, Lcn/nubia/camera/multiRecord/m;->r:I

    div-int/2addr v3, v2

    sub-int/2addr v11, v3

    invoke-direct {v1, v4, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 171
    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v4

    aget v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v4

    aget v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/multiRecord/a;

    .line 184
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 185
    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/m;->c(Z)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v4, v4, Lcn/nubia/camera/multiRecord/g;->l:F

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v5, v5, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v5, v5, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto/16 :goto_1

    .line 213
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v4, v4, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v1, v3, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v0, v2, v1, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v4, v4, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v1, v3, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v0, v2, v1, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v2, v3, v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 5

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->c:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->m:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->n:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public d()V
    .locals 9

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v5, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {v5, v0}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v5, v0, v1

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 235
    :goto_0
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v7}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v8, v8, Lcn/nubia/camera/multiRecord/g;->l:F

    invoke-virtual {v5, v6, v7, v8}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 237
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v6, v6, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v5, v2

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v6}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v7, v7, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v2, v5, v6, v7}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_1

    .line 241
    :cond_3
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v5, v2

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v5}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v6}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v6

    aget v6, v6, v1

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v7, v7, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v2, v5, v6, v7}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 244
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v5, v5, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_2

    .line 247
    :cond_4
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v5, v5, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_2

    .line 251
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v2, v2, v4

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v5}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v5

    aget v3, v5, v3

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v5, v5, Lcn/nubia/camera/multiRecord/g;->r:F

    invoke-virtual {v2, v4, v3, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 253
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v2, v0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;)V

    return-void
.end method

.method public d(Z)V
    .locals 7

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->j:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->k:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->l:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public e()V
    .locals 6

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->s:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->t:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->u:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v5}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->e:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v4, v4, Lcn/nubia/camera/multiRecord/g;->l:F

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/m;->A:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->z:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v1, v3, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->b:Lcn/nubia/camera/multiRecord/g;

    iget v3, v3, Lcn/nubia/camera/multiRecord/g;->o:F

    invoke-virtual {v0, v2, v1, v3}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/SurfaceTexture;IF)V

    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 11

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcn/nubia/camera/multiRecord/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-direct {v1, v2, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/camera/multiRecord/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    return-void
.end method
