.class public Lcn/nubia/collage/o/b/m;
.super Lcn/nubia/collage/o/b/e;
.source ""


# instance fields
.field private e:Ljava/lang/String;

.field private f:F

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Landroid/text/TextPaint;

.field private k:Landroid/text/StaticLayout;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/text/Layout$Alignment;

.field private final n:I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/l;)V
    .locals 8

    invoke-direct {p0}, Lcn/nubia/collage/o/b/e;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/collage/o/b/m;->n(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/o/b/m;->n:I

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->i()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/collage/o/b/m;->f:F

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->h()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/o/b/m;->g:I

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcn/nubia/collage/o/b/m;->i()V

    invoke-direct {p0}, Lcn/nubia/collage/o/b/m;->h()V

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->g()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/o/b/m;->h:I

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->l()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->i:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/collage/o/b/e;->b:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/collage/o/b/e;->c:F

    invoke-direct {p0}, Lcn/nubia/collage/o/b/m;->m()V

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/l;->f()Landroid/text/Layout$Alignment;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/b/m;->m:Landroid/text/Layout$Alignment;

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/collage/o/b/m;->m:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    iget-object p1, p0, Lcn/nubia/collage/o/b/m;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/collage/o/b/m;->o(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/collage/o/b/m;->j()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "PhotoEditor"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textelement checkForRect width wrong "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textelement checkForRect height wrong "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private i()V
    .locals 4

    iget v0, p0, Lcn/nubia/collage/o/b/m;->h:I

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/collage/o/b/m;->f:F

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcn/nubia/collage/o/b/m;->f:F

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/nubia/collage/o/b/m;->f:F

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcn/nubia/collage/o/b/m;->f:F

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 10

    iget v0, p0, Lcn/nubia/collage/o/b/m;->h:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/nubia/collage/o/b/m;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v4, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/collage/o/b/m;->m:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget v1, p0, Lcn/nubia/collage/o/b/m;->g:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget v1, p0, Lcn/nubia/collage/o/b/m;->f:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private n(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/16 p1, 0x8

    return p1

    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private p(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int v1, p1, p2

    rem-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    sub-int p1, p2, p1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_1

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_2

    rem-int v4, v3, p2

    div-int v5, v3, p2

    mul-int/2addr v4, v1

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Z)V
    .locals 6

    iget-object p2, p0, Lcn/nubia/collage/o/b/m;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p2, p0, Lcn/nubia/collage/o/b/e;->b:F

    iget v0, p0, Lcn/nubia/collage/o/b/e;->c:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean p2, p0, Lcn/nubia/collage/o/b/e;->a:Z

    if-eqz p2, :cond_1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, -0x10000

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcn/nubia/collage/o/b/e;->b:F

    iget v2, p0, Lcn/nubia/collage/o/b/e;->c:F

    iget-object p2, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v3, v1, p2

    iget p2, p0, Lcn/nubia/collage/o/b/e;->c:F

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e(II)Z
    .locals 2

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/collage/o/b/e;->b:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget p2, p0, Lcn/nubia/collage/o/b/e;->c:F

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

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

    iput-object p1, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/collage/o/b/e;->b:F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/collage/o/b/e;->c:F

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/m;->n:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcn/nubia/collage/o/b/m;->h:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 11

    iput-object p1, p0, Lcn/nubia/collage/o/b/m;->o:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget v1, p0, Lcn/nubia/collage/o/b/m;->f:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v4, p0, Lcn/nubia/collage/o/b/m;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/collage/o/b/m;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    mul-float/2addr v0, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    move v1, v0

    :cond_1
    add-float/2addr v1, v0

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/collage/o/b/m;->m:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcn/nubia/collage/o/b/m;->f:F

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    :cond_2
    move v0, v1

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcn/nubia/collage/m;->d(I)I

    move-result v1

    int-to-float v1, v1

    :cond_4
    sub-float/2addr v0, v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcn/nubia/collage/o/b/m;->j:Landroid/text/TextPaint;

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/collage/o/b/m;->m:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcn/nubia/collage/o/b/m;->k:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/collage/o/b/m;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_4

    iget v2, p0, Lcn/nubia/collage/o/b/m;->f:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_4

    invoke-direct {p0}, Lcn/nubia/collage/o/b/m;->j()V

    return-void
.end method
