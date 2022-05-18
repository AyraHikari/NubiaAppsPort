.class public Lcom/android/gallery3d/filtershow/category/IconView;
.super Landroid/view/View;
.source ""


# instance fields
.field protected a:Lcom/android/gallery3d/filtershow/category/a;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field protected f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Rect;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->g:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->i:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->m:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->g:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->h:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->i:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->m:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->n:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setup(Landroid/content/Context;)V

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "src"

    invoke-interface {p2, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/IconView;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->setUseOnlyDrawable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/category/IconView;->setIsSelected(Z)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    move p2, v3

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->c:I

    const v0, 0x7f050090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->d:I

    const v0, 0x7f050023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->e:I

    const v0, 0x7f060016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    const v0, 0x7f060017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->h:I

    const v0, 0x7f0e00b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->o:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->m:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v5, v0

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v5, v0

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getTextSelectColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getTextColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/category/IconView;->f(Landroid/graphics/Canvas;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/IconView;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    float-to-int v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->o:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    int-to-float v0, v3

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    :goto_0
    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->e:I

    return v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMargin()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->f:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->g:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->c:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->d:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->h:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->b()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->i()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->a:Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/category/IconView;->d(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/IconView;->n:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->T()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/category/IconView;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/IconView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/IconView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->e(Landroid/graphics/Canvas;Ljava/lang/String;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->n:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->g:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->l:Ljava/lang/String;

    return-void
.end method

.method public setUseOnlyDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/IconView;->m:Z

    return-void
.end method
