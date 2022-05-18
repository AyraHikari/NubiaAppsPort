.class public Lc/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Lc/c/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lc/c/a/e/c;

.field protected final c:Lc/c/a/g/a;

.field private d:[F

.field private e:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/e/e;

    invoke-direct {v0}, Lc/c/a/e/e;-><init>()V

    invoke-direct {p0, v0}, Lc/c/a/a;-><init>(Lc/c/a/e/c;)V

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/a;->a:Ljava/util/Map;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lc/c/a/a;->e:[F

    .line 5
    iput-object p1, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    .line 6
    new-instance v0, Lc/c/a/a$a;

    invoke-direct {v0, p0}, Lc/c/a/a$a;-><init>(Lc/c/a/a;)V

    invoke-interface {p1, v0}, Lc/c/a/e/c;->i(Lc/c/a/e/c$b;)V

    .line 7
    new-instance v0, Lc/c/a/a$b;

    invoke-direct {v0, p0}, Lc/c/a/a$b;-><init>(Lc/c/a/a;)V

    invoke-interface {p1, v0}, Lc/c/a/e/c;->r(Lc/c/a/e/c$c;)V

    .line 8
    new-instance p1, Lc/c/a/g/a;

    invoke-direct {p1}, Lc/c/a/g/a;-><init>()V

    iput-object p1, p0, Lc/c/a/a;->c:Lc/c/a/g/a;

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lc/c/a/a;->d:[F

    return-void
.end method

.method private n(Landroid/graphics/Bitmap;)Lc/c/a/e/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v1, p0, Lc/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0}, Lc/c/a/e/c;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0}, Lc/c/a/e/c;->b()V

    return-void
.end method

.method public c(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0, p1, p2}, Lc/c/a/e/c;->c(FF)V

    return-void
.end method

.method public d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0, p1, p2}, Lc/c/a/e/c;->d(II)V

    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/a;->n(Landroid/graphics/Bitmap;)Lc/c/a/e/a;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lc/c/a/e/l;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lc/c/a/e/l;

    invoke-virtual {p1}, Lc/c/a/e/l;->u()V

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/l;->n()V

    :cond_0
    return-void
.end method

.method public f(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0, p3, p4}, Lc/c/a/e/c;->c(FF)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/a;->p(FF)V

    .line 3
    iget-object p1, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    neg-float p2, p3

    neg-float p3, p4

    invoke-interface {p1, p2, p3}, Lc/c/a/e/c;->c(FF)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Lc/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/a;

    .line 3
    invoke-virtual {v1}, Lc/c/a/e/a;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Lc/c/a/e/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    return-object v0
.end method

.method public h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/a;->d:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 2
    iget-object v0, p0, Lc/c/a/a;->d:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 3
    iget-object v0, p0, Lc/c/a/a;->d:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 4
    iget-object v0, p0, Lc/c/a/a;->d:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 5
    iget-object p1, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    iget-object v0, p0, Lc/c/a/a;->d:[F

    invoke-interface {p1, v0}, Lc/c/a/e/c;->p([F)V

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;IIII)V
    .locals 7

    .line 1
    iget-object v6, p0, Lc/c/a/a;->c:Lc/c/a/g/a;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lc/c/a/a;->l(Landroid/graphics/Bitmap;IIIILc/c/a/g/c;)V

    return-void
.end method

.method public j(Lc/c/a/e/a;Landroid/graphics/SurfaceTexture;IIIILc/c/a/g/c;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    if-nez v1, :cond_0

    .line 1
    iget-object v1, v0, Lc/c/a/a;->b:Lc/c/a/e/c;

    sub-int v5, p5, p3

    sub-int v6, p6, p4

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v8}, Lc/c/a/e/c;->l(Lc/c/a/e/a;IIIILc/c/a/g/c;Lc/c/a/e/c$a;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, v0, Lc/c/a/a;->e:[F

    invoke-virtual {p2, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 3
    iget-object v1, v0, Lc/c/a/a;->b:Lc/c/a/e/c;

    iget-object v3, v0, Lc/c/a/a;->e:[F

    sub-int v6, p5, p3

    sub-int v7, p6, p4

    const/4 v9, 0x0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lc/c/a/e/c;->m(Lc/c/a/e/a;[FIIIILc/c/a/g/c;Lc/c/a/e/c$a;)V

    :goto_0
    return-void
.end method

.method public k(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-interface {v0, p2, p3}, Lc/c/a/e/c;->c(FF)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/a;->o(F)V

    .line 3
    iget-object p1, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p1, p2, p3}, Lc/c/a/e/c;->c(FF)V

    return-void
.end method

.method public l(Landroid/graphics/Bitmap;IIIILc/c/a/g/c;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p6}, Lc/c/a/a;->m(Landroid/graphics/Bitmap;Lc/c/a/g/c;)Lc/c/a/e/a;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    const/4 v7, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lc/c/a/e/c;->l(Lc/c/a/e/a;IIIILc/c/a/g/c;Lc/c/a/e/c$a;)V

    return-void
.end method

.method protected m(Landroid/graphics/Bitmap;Lc/c/a/g/c;)Lc/c/a/e/a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/a;->q(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-direct {p0, p1}, Lc/c/a/a;->n(Landroid/graphics/Bitmap;)Lc/c/a/e/a;

    move-result-object p1

    .line 3
    instance-of v0, p2, Lc/c/a/g/b;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Lc/c/a/g/b;

    .line 5
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    invoke-virtual {p2, p1, v0}, Lc/c/a/g/b;->g(Lc/c/a/e/a;Lc/c/a/e/c;)Lc/c/a/e/a;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public o(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1, v1, v2}, Lc/c/a/e/c;->g(FFFF)V

    return-void
.end method

.method public p(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/e/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, p2, v1}, Lc/c/a/e/c;->j(FFF)V

    return-void
.end method

.method protected q(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
