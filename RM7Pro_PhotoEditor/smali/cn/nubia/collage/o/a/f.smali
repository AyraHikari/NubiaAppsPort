.class public Lcn/nubia/collage/o/a/f;
.super Lcn/nubia/collage/o/a/h;
.source ""


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/collage/o/a/h;-><init>(IIII)V

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object p3, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public c()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    return-object v0
.end method

.method public m(F)Lcn/nubia/collage/o/a/c;
    .locals 2

    invoke-static {p1}, Lcn/nubia/collage/o/a/c;->l(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcn/nubia/collage/o/a/h;->m(F)Lcn/nubia/collage/o/a/c;

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v1, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_0
    return-object p0
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

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v1, Lcn/nubia/collage/o/a/c;->h:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/nubia/collage/o/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
