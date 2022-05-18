.class public Lcn/nubia/collage/o/b/f;
.super Lcn/nubia/collage/o/b/k;
.source ""


# instance fields
.field private n:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/o/b/k;-><init>()V

    invoke-direct {p0}, Lcn/nubia/collage/o/b/f;->K()V

    return-void
.end method

.method private K()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/collage/o/b/f;->n:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/nubia/collage/o/b/f;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;Z)Landroid/graphics/Path;
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/e;

    instance-of v2, v1, Lcn/nubia/collage/o/b/g;

    if-eqz v2, :cond_0

    check-cast v1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/g;->h()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/f;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/collage/o/b/k;->c(Landroid/graphics/Canvas;Z)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
