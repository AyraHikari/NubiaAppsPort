.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/a;


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:F

.field private j:F

.field private k:[F

.field private l:I

.field private m:F

.field private n:F

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/colorpicker/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->h:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->k:[F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->i:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->l:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->c:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->d:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->l:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 p1, 0x100

    new-array v0, p1, [I

    :goto_0
    if-ge p2, p1, :cond_1

    div-int/lit16 v1, p2, 0x80

    div-int/lit8 v2, p2, 0x8

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_0

    const v1, -0x555556

    goto :goto_1

    :cond_0
    const v1, -0xbbbbbc

    :goto_1
    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x10

    invoke-static {v0, p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private c()V
    .locals 9

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->k:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    const/4 v0, 0x4

    new-array v6, v0, [I

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->l:I

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    const/high16 v4, 0x66000000

    aput v4, v6, v2

    aput v3, v6, v1

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->i:F

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()V
    .locals 12

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->k:[F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    sub-float v7, v1, v8

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    move v5, v8

    move v6, v8

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/colorpicker/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b([F)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/colorpicker/a;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/colorpicker/a;->setColor([F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->h:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    sub-float v4, v0, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->f:F

    sub-float v5, v0, v3

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->e:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    sub-float v10, v0, v9

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->f:F

    sub-float v11, v0, v9

    iget-object v12, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->b:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    iget v10, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->d:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->i:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    int-to-float p1, p2

    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->f:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->d()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->c()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->j:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    :cond_0
    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->a:F

    sub-float v4, v3, p1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    sub-float v2, v3, p1

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->k:[F

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    sub-float/2addr v5, p1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr p1, v6

    sub-float/2addr v3, p1

    div-float/2addr v5, v3

    aput v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->b([F)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->c()V

    iget p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->i:F

    sub-float v2, v0, p1

    float-to-int v2, v2

    sub-float v3, v1, p1

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int v0, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, v2, v3, v0, p1}, Landroid/view/View;->invalidate(IIII)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->m:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->i:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->n:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/view/View;->invalidate(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public setColor([F)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->k:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->d()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorBrightnessView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
