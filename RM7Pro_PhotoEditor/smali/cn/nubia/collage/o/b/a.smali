.class public Lcn/nubia/collage/o/b/a;
.super Lcn/nubia/collage/o/b/e;
.source ""


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Path;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/e;)V
    .locals 2

    invoke-direct {p0}, Lcn/nubia/collage/o/b/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/o/b/a;->i:Z

    const/16 v1, -0xb

    iput v1, p0, Lcn/nubia/collage/o/b/a;->j:I

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/o/b/a;->e:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/collage/o/b/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/collage/o/b/e;->b:F

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/collage/o/b/e;->c:F

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/o/b/a;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/e;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/collage/o/b/a;->i:Z

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->d()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/o/b/a;->h:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/e;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/o/b/a;->e:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/o/b/a;->j:I

    :cond_0
    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/f;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/a;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget v4, p0, Lcn/nubia/collage/o/b/e;->b:F

    int-to-float v5, v3

    iget-object v6, p0, Lcn/nubia/collage/o/b/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Z)V
    .locals 3

    iget p2, p0, Lcn/nubia/collage/o/b/a;->j:I

    const/16 v0, -0xb

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcn/nubia/collage/o/b/a;->h:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget p2, p0, Lcn/nubia/collage/o/b/a;->j:I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcn/nubia/collage/o/b/a;->i:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/collage/o/b/a;->h(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/o/b/a;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcn/nubia/collage/n/f;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/nubia/collage/o/b/a;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/collage/o/b/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/a;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public f(Lcn/nubia/collage/o/a/c;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/nubia/collage/o/b/e;->f(Lcn/nubia/collage/o/a/c;)V

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/c;->f()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/a;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/c;->e()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/a;->h:Landroid/graphics/Path;

    return-void
.end method
