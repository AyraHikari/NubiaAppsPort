.class public Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:[Landroid/graphics/PointF;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Path;

.field private l:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->g:[Landroid/graphics/PointF;

    sget-object v1, Lcom/android/gallery3d/filtershow/aperture/a;->c:[F

    sget-object v2, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v1, v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    sget-object v1, Lb/a/d/a;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->c:I

    const/high16 p2, -0x1000000

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    const p2, 0xffffff

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->b()V

    return-void
.end method

.method private a()V
    .locals 7

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->c:I

    sub-int v2, v0, v1

    if-gtz v2, :cond_0

    const-string v0, "ApertureView"

    const-string v1, "the size of view is too small and Space is too large"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, v2, v0

    if-gtz v1, :cond_1

    move v2, v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->g:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    aget-object v3, v0, v1

    const v4, 0x3f5db3d0

    mul-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget-object v4, v0, v3

    iput v2, v4, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v3

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x2

    aget-object v4, v0, v2

    aget-object v5, v0, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, v4, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v2

    aget-object v5, v0, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x3

    aget-object v5, v0, v4

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v4, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x4

    aget-object v4, v0, v2

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x5

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->j:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->g:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->k:Landroid/graphics/Path;

    return-void
.end method

.method private d(FI)V
    .locals 2

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/a;->e(F)F

    move-result p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->l:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/a;->g(F)F

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;->a(FI)V

    return-void
.end method


# virtual methods
.method public c(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d(FI)V

    return-void
.end method

.method public e(II)V
    .locals 0

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/a;->b(I)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d(FI)V

    return-void
.end method

.method public getCurrentApert()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/a;->g(F)F

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->j:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->f:F

    sub-float v1, v0, v1

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    sub-float/2addr v0, v3

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->g:[Landroid/graphics/PointF;

    aget-object v3, v1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v0

    mul-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->h:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-ge v4, v5, :cond_0

    div-int/lit8 v6, v4, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v6, v5, 0x2

    :goto_0
    iput v6, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    const/high16 v6, -0x80000000

    const/16 v7, 0x64

    if-ne v0, v6, :cond_1

    if-ne v1, v6, :cond_1

    invoke-virtual {p0, v7, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    sub-int/2addr v7, v2

    :goto_1
    div-int/lit8 v7, v7, 0x2

    :goto_2
    iput v7, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    goto :goto_4

    :cond_1
    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v7, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    sub-int/2addr v7, v2

    if-ge v7, v5, :cond_2

    goto :goto_1

    :cond_2
    div-int/lit8 v7, v5, 0x2

    goto :goto_2

    :cond_3
    if-ne v1, v6, :cond_5

    invoke-virtual {p0, p1, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    sub-int/2addr v7, v3

    if-ge v4, v7, :cond_4

    div-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_4
    div-int/lit8 v4, v7, 0x2

    :goto_3
    iput v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    :cond_5
    :goto_4
    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_6

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    :cond_6
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->k:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->k:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->a:I

    int-to-float p2, p2

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setApertureChangedListener(Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->l:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;

    return-void
.end method

.method public setMaxApert(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->d:F

    return-void
.end method

.method public setMinApert(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e:F

    return-void
.end method
