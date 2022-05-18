.class public Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a:Landroid/content/Context;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a:Landroid/content/Context;

    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b(FZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->c(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method private c(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    const/high16 p3, -0x80000000

    if-ne p4, p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput p1, p3, Landroid/graphics/Rect;->left:I

    iput p4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v1

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p3, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    neg-int p1, p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public d(IFZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b(FZ)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->c(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    if-nez p1, :cond_0

    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a:Landroid/content/Context;

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/x;->e0(F)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r2(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->b:Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    float-to-int p1, v4

    sub-int p1, v0, p1

    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->d(IFZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->d(IFZ)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/VerticalSeekBar;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->T()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f2(Ljava/lang/String;)V

    :goto_1
    return v2
.end method
