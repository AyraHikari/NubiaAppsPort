.class public Lcn/nubia/collage/o/a/g;
.super Lcn/nubia/collage/o/a/c;
.source ""


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/nubia/collage/o/a/c;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->g:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-direct {p0}, Lcn/nubia/collage/o/a/g;->p()V

    return-void
.end method

.method private p()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v3, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v3, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

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
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    return-object v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
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
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public m(F)Lcn/nubia/collage/o/a/c;
    .locals 3

    invoke-static {p1}, Lcn/nubia/collage/o/a/c;->l(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/collage/o/a/g;->p()V

    :cond_1
    return-object p0
.end method

.method public o(I)V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v3, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/collage/o/a/g;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcn/nubia/collage/o/a/c;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
