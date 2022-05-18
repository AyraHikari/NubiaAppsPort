.class public Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;
.super Landroid/view/View;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Bitmap;

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->d:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->g:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->h:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->i:F

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->j:Z

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->a:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070004

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->i:F

    return-void
.end method

.method private b(FI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgress   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerticalSeekBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->h:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->g:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->e(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->d:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v3, v1, 0x4

    int-to-float v3, v3

    iget v4, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    iget v5, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    sub-float v6, v5, v4

    int-to-float v7, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    sub-float v4, v5, v7

    :cond_0
    iget v5, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->d:F

    iget v10, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->i:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v8, v10, v6

    sub-float v8, v5, v8

    div-float/2addr v8, v6

    iget-boolean v9, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->j:Z

    if-eqz v9, :cond_1

    mul-float v8, v10, v6

    sub-float v8, v5, v8

    div-float/2addr v8, v6

    sub-float v8, v5, v8

    :cond_1
    move v14, v8

    cmpl-float v5, v4, v7

    if-lez v5, :cond_2

    sub-float v12, v4, v3

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v14

    move v11, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v5, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v14, v1

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    sub-float/2addr v1, v7

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    cmpg-float v1, v4, v1

    if-gez v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    add-float v13, v4, v3

    iget v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    iget v2, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->i:F

    sub-float v15, v1, v2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    :goto_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->b(FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_4
    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    :goto_2
    return v2
.end method

.method public setApertureView(Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->g:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->h:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->e:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_1

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->f:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewInLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->j:Z

    return-void
.end method
