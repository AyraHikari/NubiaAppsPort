.class public Lcn/nubia/collage/o/a/h;
.super Lcn/nubia/collage/o/a/c;
.source ""


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lcn/nubia/collage/o/a/c;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->q()V

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->p()V

    return-void
.end method

.method public constructor <init>(IIIIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/collage/o/a/h;-><init>(IIII)V

    iput-boolean p5, p0, Lcn/nubia/collage/o/a/c;->c:Z

    iput-boolean p6, p0, Lcn/nubia/collage/o/a/c;->b:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/collage/o/a/h;-><init>(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/collage/o/a/c;->a:Z

    iput-boolean p4, p0, Lcn/nubia/collage/o/a/c;->b:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/collage/o/a/h;-><init>(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/collage/o/a/c;->d:Z

    iput-boolean p3, p0, Lcn/nubia/collage/o/a/c;->c:Z

    return-void
.end method

.method private p()V
    .locals 7

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v5, v0

    sget-object v6, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->right:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/collage/o/a/c;->d:Z

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->q()V

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->p()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public c()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    return-object v0
.end method

.method public f()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public m(F)Lcn/nubia/collage/o/a/c;
    .locals 2

    invoke-static {p1}, Lcn/nubia/collage/o/a/c;->l(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->q()V

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->p()V

    :cond_0
    return-object p0
.end method

.method public n(I)V
    .locals 2

    iget-boolean v0, p0, Lcn/nubia/collage/o/a/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->q()V

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->p()V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->q()V

    invoke-direct {p0}, Lcn/nubia/collage/o/a/h;->p()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
