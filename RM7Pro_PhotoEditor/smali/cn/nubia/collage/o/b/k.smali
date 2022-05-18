.class public Lcn/nubia/collage/o/b/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static m:I = 0x438


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/b/e;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field private f:[I

.field g:[I

.field private h:I

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private k:[I

.field private l:Landroid/support/v4/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    iput-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/b/k;->d:I

    iput v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    iput v0, p0, Lcn/nubia/collage/o/b/k;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/o/b/k;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/b/k;->j:Ljava/util/List;

    new-instance v0, Landroid/support/v4/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/collage/o/b/k;->l:Landroid/support/v4/util/Pair;

    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/collage/o/b/k;->f:[I

    return-void
.end method

.method public static F(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcn/nubia/collage/o/b/k;->m:I

    :cond_0
    return-void
.end method

.method private H()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcn/nubia/collage/o/a/m;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/o/a/m;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Lcn/nubia/collage/o/a/m;->g(I)V

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j()I
    .locals 1

    sget v0, Lcn/nubia/collage/o/b/k;->m:I

    return v0
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/a/d;

    instance-of v2, v1, Lcn/nubia/collage/o/a/e;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/collage/o/a/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v3}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/collage/n/f;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcn/nubia/collage/o/a/c;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private u()V
    .locals 4

    sget v0, Lcn/nubia/collage/o/b/k;->m:I

    if-lez v0, :cond_1

    iget v1, p0, Lcn/nubia/collage/o/b/k;->d:I

    if-lez v1, :cond_1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcn/nubia/collage/o/a/c;->l(F)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/collage/o/b/k;->m:I

    iput v1, p0, Lcn/nubia/collage/o/b/k;->d:I

    iget v1, p0, Lcn/nubia/collage/o/b/k;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/collage/o/b/k;->e:I

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v2}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/collage/o/a/c;->m(F)Lcn/nubia/collage/o/a/c;

    instance-of v3, v2, Lcn/nubia/collage/o/a/l;

    if-eqz v3, :cond_0

    check-cast v2, Lcn/nubia/collage/o/a/l;

    invoke-virtual {v2, v0}, Lcn/nubia/collage/o/a/l;->n(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w(Lcn/nubia/collage/o/a/l;II)V
    .locals 2

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcn/nubia/collage/o/a/j;->i()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/nubia/collage/o/a/j;->g()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/a/l;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/nubia/collage/o/a/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/collage/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Templat.getAutoInfo set city:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/nubia/collage/o/a/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LYHP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcn/nubia/collage/o/a/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/collage/o/a/l;->o(Ljava/lang/String;)V

    :cond_3
    new-instance p1, Landroid/support/v4/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/k;->l:Landroid/support/v4/util/Pair;

    :goto_1
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    if-nez v0, :cond_0

    iput p1, p0, Lcn/nubia/collage/o/b/k;->e:I

    :cond_0
    return-void
.end method

.method public B(Lcn/nubia/collage/c;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    check-cast v1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v1, p1}, Lcn/nubia/collage/o/b/g;->r(Lcn/nubia/collage/c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public C(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->h:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->f:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/g;->v()V

    :cond_1
    :goto_0
    return-void
.end method

.method public D(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/g;->s(Z)V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/k;->a:Ljava/lang/String;

    return-void
.end method

.method public G(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lcn/nubia/collage/o/b/m;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/m;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public I(I)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->d:I

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iput p1, p0, Lcn/nubia/collage/o/b/k;->d:I

    :cond_0
    return-void
.end method

.method public J(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/b/g$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PhotoEditor"

    const-string v1, "Templat  usePoses"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/e;

    instance-of v2, v1, Lcn/nubia/collage/o/b/g;

    if-eqz v2, :cond_0

    check-cast v1, Lcn/nubia/collage/o/b/g;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/g;->k()I

    move-result v5

    invoke-virtual {v4}, Lcn/nubia/collage/o/b/g$a;->u()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v2, v4

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcn/nubia/collage/o/b/g;->x(Lcn/nubia/collage/o/b/g$a;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a()V
    .locals 2

    iget v0, p0, Lcn/nubia/collage/o/b/k;->d:I

    sget v1, Lcn/nubia/collage/o/b/k;->m:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "templae checkWidth  mWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/collage/o/b/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sShowWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/collage/o/b/k;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/k;->d()V

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/k;->q()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/collage/o/b/k;->c(Landroid/graphics/Canvas;Z)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Canvas;Z)Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/b/e;

    invoke-virtual {v2, p1, p2}, Lcn/nubia/collage/o/b/e;->a(Landroid/graphics/Canvas;Z)V

    instance-of v3, v2, Lcn/nubia/collage/o/b/g;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v3}, Lcn/nubia/collage/o/b/e;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcn/nubia/collage/o/b/g;->j()Landroid/graphics/Path;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcn/nubia/collage/o/b/k;->i:Z

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcn/nubia/collage/o/b/m;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/o/b/k;->j:Ljava/util/List;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/e;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/collage/o/b/k;->i:Z

    return-object v1
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcn/nubia/collage/o/b/k;->p()V

    invoke-direct {p0}, Lcn/nubia/collage/o/b/k;->u()V

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    new-array v1, v0, [I

    iput-object v1, p0, Lcn/nubia/collage/o/b/k;->k:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v5, v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/d;->c()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    iget-object v6, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/d;->c()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v5, v4, v2

    aget v6, v4, v3

    aput v6, v4, v2

    aput v5, v4, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput v1, p0, Lcn/nubia/collage/o/b/k;->h:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->k:[I

    array-length v2, v2

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_7

    iget-object v4, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/o/a/d;

    instance-of v5, v4, Lcn/nubia/collage/o/a/m;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    new-instance v6, Lcn/nubia/collage/o/b/g;

    check-cast v4, Lcn/nubia/collage/o/a/m;

    invoke-direct {v6, v4}, Lcn/nubia/collage/o/b/g;-><init>(Lcn/nubia/collage/o/a/m;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->f:[I

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/m;->f()I

    move-result v6

    aput v3, v5, v6

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/m;->f()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v5, v5, v3

    aput v5, v0, v4

    iget v4, p0, Lcn/nubia/collage/o/b/k;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/nubia/collage/o/b/k;->h:I

    goto :goto_4

    :cond_5
    instance-of v5, v4, Lcn/nubia/collage/o/a/e;

    if-eqz v5, :cond_6

    new-instance v5, Lcn/nubia/collage/o/b/a;

    check-cast v4, Lcn/nubia/collage/o/a/e;

    invoke-direct {v5, v4}, Lcn/nubia/collage/o/b/a;-><init>(Lcn/nubia/collage/o/a/e;)V

    iget-object v4, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    check-cast v4, Lcn/nubia/collage/o/a/l;

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcn/nubia/collage/o/b/k;->w(Lcn/nubia/collage/o/a/l;II)V

    iget-object v5, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    new-instance v6, Lcn/nubia/collage/o/b/m;

    invoke-direct {v6, v4}, Lcn/nubia/collage/o/b/m;-><init>(Lcn/nubia/collage/o/a/l;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget v2, p0, Lcn/nubia/collage/o/b/k;->h:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcn/nubia/collage/o/b/k;->g:[I

    :goto_5
    iget v2, p0, Lcn/nubia/collage/o/b/k;->h:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->g:[I

    aget v3, v0, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    return-object v0
.end method

.method public f(I)Lcn/nubia/collage/o/b/e;
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/e;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->e:I

    return v0
.end method

.method public h(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/g;->k()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/o/b/k;->l:Landroid/support/v4/util/Pair;

    iget-object p1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(ILcn/nubia/collage/j;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/nubia/collage/j<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget v0, p0, Lcn/nubia/collage/o/b/k;->d:I

    iget v1, p0, Lcn/nubia/collage/o/b/k;->e:I

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/high16 p1, 0x44b40000    # 1440.0f

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/16 v0, 0x5a0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/high16 p1, 0x44870000    # 1080.0f

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/16 v0, 0x438

    goto :goto_0

    :cond_1
    const/high16 p1, 0x44480000    # 800.0f

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/16 v0, 0x320

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/collage/j;->b(Ljava/lang/Object;)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/g;->m()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o(II)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/b/e;

    invoke-virtual {v2, p1, p2}, Lcn/nubia/collage/o/b/e;->e(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcn/nubia/collage/o/b/k;->h:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/collage/o/b/k;->s(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method r()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/e;

    iget-object v2, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/collage/o/b/k;->k:[I

    aget v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v2}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/collage/o/b/e;->f(Lcn/nubia/collage/o/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcn/nubia/collage/o/b/k;->h:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->f:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/g;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/b/g$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/nubia/collage/o/b/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/b/e;

    instance-of v3, v2, Lcn/nubia/collage/o/b/g;

    if-eqz v3, :cond_0

    check-cast v2, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/g;->p()Lcn/nubia/collage/o/b/g$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcn/nubia/collage/o/b/k;->h:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/collage/o/b/k;->C(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/nubia/collage/o/b/k;->c:Ljava/util/List;

    invoke-direct {p0}, Lcn/nubia/collage/o/b/k;->H()V

    :cond_0
    return-void
.end method

.method public y(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/e;->g(Z)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/o/b/k;->i:Z

    return-void
.end method
