.class public Lcn/nubia/collage/o/a/b;
.super Lcn/nubia/collage/o/a/c;
.source ""


# instance fields
.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Lcn/nubia/collage/o/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/a/b;->i:I

    iput v0, p0, Lcn/nubia/collage/o/a/b;->j:I

    iput v0, p0, Lcn/nubia/collage/o/a/b;->k:I

    iput p1, p0, Lcn/nubia/collage/o/a/b;->i:I

    iput p2, p0, Lcn/nubia/collage/o/a/b;->j:I

    iput p3, p0, Lcn/nubia/collage/o/a/b;->k:I

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p1

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public c()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    iget v1, p0, Lcn/nubia/collage/o/a/b;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/collage/o/a/b;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/collage/o/a/b;->k:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    sget-object v4, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

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
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iget v1, p0, Lcn/nubia/collage/o/a/b;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/collage/o/a/b;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/collage/o/a/b;->k:I

    int-to-float v3, v3

    sget-object v4, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

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
    .locals 4

    invoke-static {p1}, Lcn/nubia/collage/o/a/c;->l(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/collage/o/a/b;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/collage/o/a/b;->i:I

    iget v1, p0, Lcn/nubia/collage/o/a/b;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/collage/o/a/b;->j:I

    iget v2, p0, Lcn/nubia/collage/o/a/b;->k:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcn/nubia/collage/o/a/b;->k:I

    iget-object v2, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    sub-int v3, v0, p1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, p1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object p0
.end method

.method public o(I)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/b;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/collage/o/a/b;->j:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Circle: CenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/collage/o/a/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CenterY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/collage/o/a/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/collage/o/a/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
