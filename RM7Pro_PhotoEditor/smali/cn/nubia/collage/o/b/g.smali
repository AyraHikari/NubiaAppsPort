.class public Lcn/nubia/collage/o/b/g;
.super Lcn/nubia/collage/o/b/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/o/b/g$a;
    }
.end annotation


# instance fields
.field private e:I

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;

.field private k:Lcn/nubia/collage/o/b/g$a;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/m;)V
    .locals 2

    invoke-direct {p0}, Lcn/nubia/collage/o/b/e;-><init>()V

    new-instance v0, Lcn/nubia/collage/o/b/g$a;

    invoke-direct {v0}, Lcn/nubia/collage/o/b/g$a;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->b()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/g;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->j:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcn/nubia/collage/o/b/g;->i:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/m;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->d()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->a(Lcn/nubia/collage/o/b/g$a;I)I

    new-instance p1, Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    invoke-direct {p1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->q:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/g;->t()V

    invoke-direct {p0}, Lcn/nubia/collage/o/b/g;->l()V

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private q()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v3, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v3}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->l(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/collage/o/b/g;->n:F

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v3}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    int-to-float v1, v2

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_2
    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->n(Lcn/nubia/collage/o/b/g$a;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/collage/o/b/g;->o:F

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Z)V
    .locals 5

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    iget v1, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ImageElement"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p2

    iget v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p2, v0}, Lcn/nubia/collage/n/f;->s(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "ERROR!!  loadUserBitmapSync get null"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result p2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v3}, Lcn/nubia/collage/o/b/g$a;->l(Lcn/nubia/collage/o/b/g$a;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v4}, Lcn/nubia/collage/o/b/g$a;->n(Lcn/nubia/collage/o/b/g$a;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p2}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result p2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "recycle bitmap exception"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p2

    iget v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p2, v0}, Lcn/nubia/collage/n/f;->r(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p1

    iget p2, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p1, p2}, Lcn/nubia/collage/n/f;->r(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR!!!! draw bitmap is null or recycle! id:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(II)Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/nubia/collage/o/a/c;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/nubia/collage/o/b/e;->f(Lcn/nubia/collage/o/a/c;)V

    iget-object p1, p0, Lcn/nubia/collage/o/b/e;->d:Lcn/nubia/collage/o/a/c;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/c;->f()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget-object p1, p0, Lcn/nubia/collage/o/b/e;->d:Lcn/nubia/collage/o/a/c;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/c;->e()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    invoke-direct {p1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    iget-object p1, p0, Lcn/nubia/collage/o/b/e;->d:Lcn/nubia/collage/o/a/c;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/c;->c()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->j:Landroid/graphics/Path;

    invoke-direct {p1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/g;->o()V

    return-void
.end method

.method public h()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->q:Landroid/graphics/Path;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/o/b/g;->p:Z

    return v0
.end method

.method public j()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    return v0
.end method

.method public m()Z
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_1

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n()Z
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o()V
    .locals 6

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    iget v1, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcn/nubia/collage/o/b/g;->m:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    iput v5, p0, Lcn/nubia/collage/o/b/g;->l:F

    iget-object v5, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v5, v4}, Lcn/nubia/collage/o/b/g$a;->k(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v4, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v4}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v4, v1}, Lcn/nubia/collage/o/b/g$a;->q(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcn/nubia/collage/o/b/g$a;->s(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    cmpg-float v0, v2, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    :goto_0
    invoke-virtual {p0}, Lcn/nubia/collage/o/b/g;->t()V

    return-void
.end method

.method public p()Lcn/nubia/collage/o/b/g$a;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/g$a;->t()Lcn/nubia/collage/o/b/g$a;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcn/nubia/collage/c;)V
    .locals 3

    sget-object v0, Lcn/nubia/collage/c;->a:Lcn/nubia/collage/c;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    invoke-direct {p1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->j:Landroid/graphics/Path;

    invoke-direct {p1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->i:Landroid/graphics/Path;

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->q:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->i:Landroid/graphics/Path;

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/collage/m;->e(Lcn/nubia/collage/c;Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->q:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->h:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/collage/o/b/g;->p:Z

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcn/nubia/collage/o/b/g;->p:Z

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    return-void
.end method

.method public u(FF)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->l(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/collage/o/b/g;->n:F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->n(Lcn/nubia/collage/o/b/g$a;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcn/nubia/collage/o/b/g;->o:F

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w(FF)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->b(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->d(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    return-void
.end method

.method public x(Lcn/nubia/collage/o/b/g$a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    return-void
.end method

.method public y(F)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->k(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget v1, p0, Lcn/nubia/collage/o/b/g;->m:F

    iget v2, p0, Lcn/nubia/collage/o/b/g;->l:F

    invoke-static {v0, v1, v2}, Lcn/nubia/collage/m;->a(FFF)F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->k(Lcn/nubia/collage/o/b/g$a;F)F

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p1

    iget v0, p0, Lcn/nubia/collage/o/b/g;->e:I

    invoke-virtual {p1, v0}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->q(Lcn/nubia/collage/o/b/g$a;I)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcn/nubia/collage/o/b/g$a;->s(Lcn/nubia/collage/o/b/g$a;I)I

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->l(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/collage/o/b/g;->n:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->n(Lcn/nubia/collage/o/b/g$a;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/collage/o/b/g;->o:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/g;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/nubia/collage/o/b/g;->q()V

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget v0, p0, Lcn/nubia/collage/o/b/g;->n:F

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object p1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget v0, p0, Lcn/nubia/collage/o/b/g;->o:F

    invoke-static {p1}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    return-void
.end method

.method public z()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->f(Lcn/nubia/collage/o/b/g$a;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->h(Lcn/nubia/collage/o/b/g$a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    :cond_0
    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v3}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v3}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->e(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->r(Lcn/nubia/collage/o/b/g$a;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->i(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->o(Lcn/nubia/collage/o/b/g$a;I)I

    :cond_1
    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    :cond_2
    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v1}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    invoke-static {v2}, Lcn/nubia/collage/o/b/g$a;->j(Lcn/nubia/collage/o/b/g$a;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->c(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lcn/nubia/collage/o/b/g$a;->p(Lcn/nubia/collage/o/b/g$a;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->g(Lcn/nubia/collage/o/b/g$a;F)F

    iget-object v0, p0, Lcn/nubia/collage/o/b/g;->k:Lcn/nubia/collage/o/b/g$a;

    iget-object v1, p0, Lcn/nubia/collage/o/b/g;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Lcn/nubia/collage/o/b/g$a;->m(Lcn/nubia/collage/o/b/g$a;I)I

    :cond_3
    return-void
.end method
